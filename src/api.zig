const std = @import("std");
const c_api = @import("c_api.zig");

const Errors = error{
    GDNativeCoreApiNotInitialized,
    NativeScriptApiNotInitialized,
    InvalidGodotClassNoBaseField,
    InvalidGodotClassNoPublicBaseClassDeclaration,
};

const GDNativeCoreApi = c_api.godot_gdnative_core_api_struct;
const GDNativeExtNativeScriptApiStruct = c_api.godot_gdnative_ext_nativescript_api_struct;
const GDNativeInitOptions = c_api.godot_gdnative_init_options;
const GDConstructorFunc = fn () ?*c_api.godot_object;
const InstanceCreateFunc = fn (?*c_api.godot_object, ?*anyopaque) ?*anyopaque;
const InstanceDestroyFunc = fn (?*c_api.godot_object, ?*anyopaque, ?*anyopaque) void;

pub var core: ?*const GDNativeCoreApi = null;
pub var native: ?*const GDNativeExtNativeScriptApiStruct = null;
pub var handle: ?*anyopaque = null;
pub var allocator: std.mem.Allocator = undefined;

/// Initialize native script with a custom allocator, to be called in "godot_nativescript_init"
pub fn initNativeScript(nativescript_handle: *anyopaque) void {
    handle = nativescript_handle;
}

/// Initialize native script with the c allocator, to be called in "godot_nativescript_init"
pub fn initWithDefaultAllocator(options: *GDNativeInitOptions) void {
    init(std.heap.c_allocator, options);
}

/// Initialize gdnative, to be called in "godot_gdnative_init"
pub fn init(allocator_: std.mem.Allocator, options: *GDNativeInitOptions) void {
    allocator = allocator_;
    core = options.api_struct;

    var i: usize = 0;

    while (i < core.?.num_extensions) : (i += 1) {
        switch (core.?.extensions[i].*.type) {
            c_api.GDNATIVE_EXT_NATIVESCRIPT => {
                native = @ptrCast(*const GDNativeExtNativeScriptApiStruct, core.?.extensions[i]);
            },
            else => {},
        }
    }
}

/// Terminate gdnative, to be called in "godot_gdnative_terminate"
pub fn terminate() void {
    native = null;
    core = null;
    handle = null;
    allocator = undefined;
}

/// Register a class to Godot, to be called in "godot_nativescript_init"
pub fn registerClass(comptime T: type) !void {
    if (native == null) {
        return Errors.NativeScriptApiNotInitialized;
    }

    if (!@hasField(T, "base")) {
        return Errors.InvalidGodotClassNoBaseField;
    }

    const class_name = @typeName(T);

    const BaseClassType = try baseClassType(T);
    const base_class_name = @typeName(BaseClassType);

    var c_class_name = try std.cstr.addNullByte(allocator, class_name);
    defer allocator.free(c_class_name);
    var c_base_name = try std.cstr.addNullByte(allocator, base_class_name);
    defer allocator.free(c_base_name);

    const ClassRegistrator = ClassRegistrationBuilder(T);

    var create_func = c_api.godot_instance_create_func{
        .create_func = ClassRegistrator.create_class_object,
        .method_data = null,
        .free_func = null,
    };

    var destroy_func = c_api.godot_instance_destroy_func{
        .destroy_func = ClassRegistrator.destroy_class_object,
        .method_data = null,
        .free_func = null,
    };

    native.?.godot_nativescript_register_class.?(
        handle,
        c_class_name.ptr,
        c_base_name.ptr,
        create_func,
        destroy_func,
    );

    std.log.info("godot-zig: registered class {s}({s})\n", .{ class_name, base_class_name });

    // TODO: figure out how i want to properly register functions/properties
}

fn ClassRegistrationBuilder(comptime T: type) type {
    return struct {
        pub fn create_class_object(gd_object: ?*c_api.godot_object, data: ?*anyopaque) callconv(.C) ?*anyopaque {
            _ = gd_object;
            _ = data;

            var obj: *T = std.heap.c_allocator.create(T) catch |err| {
                std.log.err("godot-zig: ClassRegistrationBuilder: {s}\n", .{err});
                std.os.abort();
            };

            const BaseClassType = baseClassType(T) catch unreachable;

            if (@alignOf(BaseClassType) >= 1) {
                obj.base = @ptrCast(*BaseClassType, @alignCast(@alignOf(BaseClassType), gd_object.?));
            } else {
                obj.base = @ptrCast(*BaseClassType, gd_object.?);
            }

            if (@hasDecl(T, "init")) {
                obj.init();
            }

            return @ptrCast(*anyopaque, obj);
        }

        pub fn destroy_class_object(gd_object: ?*c_api.godot_object, method_data: ?*anyopaque, data: ?*anyopaque) callconv(.C) void {
            _ = gd_object;
            _ = method_data;
            std.heap.c_allocator.destroy(@ptrCast(*T, @alignCast(@alignOf(T), data.?)));
        }
    };
}

fn baseClassType(comptime T: type) !type {
    inline for (@typeInfo(T).Struct.decls) |decl| {
        if (std.mem.eql(u8, decl.name, "BaseClass")) {
            return @field(T, "BaseClass");
        }
    }

    return Errors.InvalidGodotClassNoPublicBaseClassDeclaration;
}

pub fn registerMethod(comptime T: type, comptime F: anytype, comptime methodname: []const u8) !void {
    if (native == null) {
        return Errors.NativeScriptApiNotInitialized;
    }

    const classname = @typeName(T);

    const WrappedFunc = FunctionWrapper(T, F);

    var instance_method = c_api.godot_instance_method{
        .method = WrappedFunc.call_function,
        .method_data = unsafeCast(*anyopaque, &F),
        .free_func = null,
    };

    var attributes = c_api.godot_method_attributes{
        .rpc_type = c_api.GODOT_METHOD_RPC_MODE_DISABLED,
    };

    var c_class_name = try std.cstr.addNullByte(allocator, classname);
    defer allocator.free(c_class_name);
    var c_method_name = try std.cstr.addNullByte(allocator, methodname);
    defer allocator.free(c_method_name);

    native.?.godot_nativescript_register_method.?(
        handle,
        c_class_name.ptr,
        c_method_name.ptr,
        attributes,
        instance_method,
    );

    std.log.info("godot-zig: registered function {s} for class {s}\n", .{ methodname, classname });
}

fn FunctionWrapper(comptime T: type, comptime F: anytype) type {
    return struct {
        fn call_function(object: ?*c_api.godot_object, data: ?*const anyopaque, userdata: ?*anyopaque, num: c_int, cargs: ?[*]?[*]c_api.godot_variant) callconv(.C) c_api.godot_variant {
            _ = userdata;

            const FuncType = @TypeOf(F);

            var result: c_api.godot_variant = undefined;

            var func = @ptrCast(*const FuncType, @alignCast(@alignOf(FuncType), data));

            const FuncArgs = std.meta.ArgsTuple(FuncType);
            var func_args: FuncArgs = undefined;

            var args: []?[*]c_api.godot_variant = undefined;
            if (cargs != null) {
                args = cargs.?[0..@intCast(usize, num)];
            }

            // TODO: actually put result of @call into result
            // TODO: if variant is an object use godot_nativescript_get_userdata

            const func_type_args = @typeInfo(FuncType).Fn.args;

            var args_index: usize = 0;

            inline for (func_type_args) |fn_type_arg, i| {
                const ArgType = fn_type_arg.arg_type.?;

                const is_parent_struct_type = ArgType == T or ArgType == *T;

                if (i == 0 and is_parent_struct_type) {
                    func_args[i] = @ptrCast(*T, @alignCast(@alignOf(T), object.?));
                } else {
                    const arg = args[args_index].?;

                    func_args[i] = switch (@typeInfo(ArgType)) {
                        .Pointer => @ptrCast(ArgType, @alignCast(@alignOf(ArgType), arg)),
                        // TODO: is this correct? *void comes in that is in reality a *f32
                        else => @ptrCast(*ArgType, @alignCast(@alignOf(ArgType), arg)).*,
                    };
                    args_index += 1;
                }
            }

            _ = @call(.{}, func.*, func_args);

            return result;
        }
    };
}

pub fn createConstructor(classname: []const u8) !GDConstructorFunc {
    if (core == null) {
        return Errors.GDNativeCoreApiNotInitialized;
    }

    return @ptrCast(
        fn () ?*c_api.godot_object,
        core.?.godot_get_class_constructor.?(classname),
    );
}

pub fn createMethod(classname: []const u8, methodname: []const u8) !*c_api.godot_method_bind {
    if (core == null) {
        return Errors.GDNativeCoreApiNotInitialized;
    }

    return core.?.godot_method_bind_get_method.?(classname, methodname);
}

pub fn createObject(comptime T: type, constructor: GDConstructorFunc) *T {
    return @ptrCast(*T, @alignCast(@alignOf(*T), constructor()));
}

fn unsafeCast(comptime T: type, ptr: anytype) T {
    comptime std.debug.assert(@sizeOf(T) == @sizeOf(@TypeOf(ptr)));

    var res: T = undefined;
    @memcpy(@ptrCast([*]u8, &res), @ptrCast([*]const u8, &ptr), @sizeOf(T));
    return res;
}
