const std = @import("std");
const godot = @import("godot-zig");

const SpinningCube = struct {
    const Self = @This();
    pub const BaseClass = godot.MeshInstance;

    base: *BaseClass,
    // start: godot.Vector3,
    time: f32,
    rotate_speed: f32 = 1.0, // TODO: this should be a property...

    pub fn ready(self: *Self) void {
        _ = self;
    }

    pub fn update(self: *Self, delta: f32) void {
        _ = delta;
        // TODO: still crashes for reasons
        // following change was necessary to get this to compile
        // spatial.zig:750: @ptrCast(*const anyopaque, &arg_angle),
        godot.callUp(BaseClass, self.base, "rotateY", .{self.rotate_speed * 0.0001}) catch |err| {
            std.log.err("godot-zig: SpinningCube update: {s}\n", .{err});
        };
    }
};

fn init() !void {
    try godot.registerClass(SpinningCube);
    try godot.registerMethod(SpinningCube, SpinningCube.ready, "_ready");
    try godot.registerMethod(SpinningCube, SpinningCube.update, "_physics_process");
}

export fn godot_nativescript_init(handle: *anyopaque) void {
    std.log.info("godot-zig: godot_nativescript_init()\n", .{});
    godot.initNativeScript(handle);

    init() catch |err| {
        std.log.err("godot-zig: godot_nativescript_init: spinning-cube: {s}\n", .{err});
    };
}

export fn godot_gdnative_init(options: *godot.c_api.godot_gdnative_init_options) void {
    std.log.info("godot-zig: godot_gdnative_init()\n", .{});
    godot.init(std.heap.c_allocator, options);
}

export fn godot_gdnative_terminate(options: *godot.c_api.godot_gdnative_terminate_options) void {
    _ = options;
    std.log.info("godot-zig: godot_gdnative_terminate()\n", .{});
    godot.terminate();
}
