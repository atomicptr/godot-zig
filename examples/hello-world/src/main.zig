const std = @import("std");
const godot = @import("godot-zig");

pub const HelloWorld = struct {
    const Self = @This();
    pub const BaseClass = godot.Node2D;

    base: *BaseClass,

    pub fn init(self: *Self) void {
        _ = self;
        // TODO: replace this with godot.print later...
        std.log.info("Hello, World!\n", .{});
    }

    pub fn _ready(self: *Self) void {
        _ = self;
        std.log.info("Hello World is ready!\n", .{});
    }

    pub fn update(self: *Self, delta: f32) void {
        _ = self;
        std.log.info("Update {}\n", .{delta});
    }
};

fn init() !void {
    try godot.registerClass(HelloWorld);
    try godot.registerMethod(HelloWorld, HelloWorld._ready, "_ready");
    try godot.registerMethod(HelloWorld, HelloWorld.update, "_physics_process");
}

export fn godot_nativescript_init(handle: *anyopaque) void {
    std.log.info("godot-zig: godot_nativescript_init()\n", .{});
    godot.initNativeScript(handle);

    init() catch |err| {
        std.log.err("godot-zig: godot_nativescript_init: hello-world: {s}\n", .{err});
    };
}

export fn godot_gdnative_init(options: *godot.c_api.godot_gdnative_init_options) void {
    std.log.info("godot-zig: godot_gdnative_init()\n", .{});
    godot.init(options);
}

export fn godot_gdnative_terminate(options: *godot.c_api.godot_gdnative_terminate_options) void {
    _ = options;
    std.log.info("godot-zig: godot_gdnative_terminate()\n", .{});
    godot.terminate();
}
