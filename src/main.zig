pub usingnamespace @import("gen/__import.zig");
pub const c_api = @import("c_api.zig");
pub const api = @import("api.zig");

// add important methods to root scope for more comfortable access
pub const initNativeScript = api.initNativeScript;
pub const init = api.init;
pub const initWithDefaultAllocator = api.initWithDefaultAllocator;
pub const terminate = api.terminate;
pub const registerClass = api.registerClass;
pub const registerMethod = api.registerMethod;
pub const registerMethodWithDifferentName = api.registerMethodWithDifferentName;

/// A polymorphic call upwards
pub fn callUp(comptime T: type, obj: *T, comptime function_name: []const u8, args: anytype) !void {
    if (!@hasDecl(T, "BaseClass")) {
        @compileError("call can only be used with Godot objects");
    }

    if (!@hasDecl(T, function_name)) {
        try callUp(T.BaseClass, obj.base, function_name, args);
        return;
    }

    _ = try @call(.{}, @field(obj, function_name), args);
}
