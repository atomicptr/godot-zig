const std = @import("std");
const godot = @import("godot-zig");

pub const HelloWorld = struct {
    const Self = @This();
    const BaseClass = godot.Node;

    base: *BaseClass,

    pub fn init(self: *Self) void {
        _ = self;
        std.debug.print("Hello, World!", .{});
    }

    pub fn _ready(self: *Self) void {
        _ = self;
        std.debug.print("Ready!", .{});
    }
};

export fn godot_nativescript_init(handle: *anyopaque) void {
    std.debug.print("godot_nativescript_init()", .{});
    godot.api.godotNativeScriptInit(handle);
}

export fn godot_gdnative_init(options: *godot.c_api.godot_gdnative_init_options) void {
    std.debug.print("godot_gdnative_init()", .{});
    godot.api.godotGDNativeInit(options);
}

export fn godot_gdnative_terminate(options: *godot.c_api.godot_gdnative_terminate_options) void {
    _ = options;
    std.debug.print("godot_gdnative_terminate()", .{});
    //godot.api.godotGDNativeTerminate();
}
