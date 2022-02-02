const c_api = @import("c_api.zig");
const types = @import("types.zig");

const GodotZigErrors = error{
    GDNativeCoreApiNotInitialized,
};

const GDNativeCoreApi = c_api.godot_gdnative_core_api_struct;
const GDNativeExtNativeScriptApiStruct = c_api.godot_gdnative_ext_nativescript_api_struct;
const GDNativeInitOptions = c_api.godot_gdnative_init_options;

pub var core: ?*GDNativeCoreApi = null;
pub var native: ?*GDNativeExtNativeScriptApiStruct = null;

var handler: ?*anyopaque = null;

pub fn godotGDNativeInit(options: *GDNativeInitOptions) void {
    core = options.api_struct;

    var i: usize = 0;

    while (i < core.num_extensions) : (i += 1) {
        switch (core.extensions[i].type) {
            c_api.GDNATIVE_EXT_NATIVESCRIPT => {
                native = @ptrCast(*GDNativeExtNativeScriptApiStruct, core.extensions[i]);
            },
            else => {},
        }
    }
}

pub fn godotNativeScriptInit(handle: *anyopaque) void {
    handler = handle;
}

pub fn createConstructor(classname: []const u8) !?types.ConstructorFunc {
    if (core == null) {
        return GodotZigErrors.GDNativeCoreApiNotInitialized;
    }

    return @ptrCast(
        types.ConstructorFunc,
        core.godot_get_class_constructor.?(classname),
    );
}

pub fn createObject(comptime T: type, constructor: types.ConstructorFunc) *T {
    return @ptrCast(*T, @alignCast(@alignOf(*T), constructor()));
}
