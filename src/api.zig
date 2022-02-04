const c_api = @import("c_api.zig");

const Errors = error{
    GDNativeCoreApiNotInitialized,
};

const GDNativeCoreApi = c_api.godot_gdnative_core_api_struct;
const GDNativeExtNativeScriptApiStruct = c_api.godot_gdnative_ext_nativescript_api_struct;
const GDNativeInitOptions = c_api.godot_gdnative_init_options;
const GDConstructorFunc = fn () ?*c_api.godot_object;

pub var core: ?*const GDNativeCoreApi = null;
pub var native: ?*const GDNativeExtNativeScriptApiStruct = null;

var handler: ?*anyopaque = null;

pub fn godotGDNativeInit(options: *GDNativeInitOptions) void {
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

pub fn godotNativeScriptInit(handle: *anyopaque) void {
    handler = handle;
}

pub fn godotGDNativeTerminate() void {
    native = undefined;
    core = undefined;
}

pub fn createConstructor(classname: []const u8) !GDConstructorFunc {
    if (core == null) {
        return Errors.GDNativeCoreApiNotInitialized;
    }

    return @ptrCast(
        fn () ?*c_api.godot_object,
        core.godot_get_class_constructor.?(classname),
    );
}

pub fn createMethod(classname: []const u8, methodname: []const u8) !*c_api.godot_method_bind {
    if (core == null) {
        return Errors.GDNativeCoreApiNotInitialized;
    }

    return core.godot_method_bind_get_method.?(classname, methodname);
}

pub fn createObject(comptime T: type, constructor: GDConstructorFunc) *T {
    return @ptrCast(*T, @alignCast(@alignOf(*T), constructor()));
}
