// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Object = @import("object.zig").Object;

// method bindings
var mbind_get_monitor: ?*c_api.godot_method_bind = null;
var mbind_performance_constructor: ?fn () ?*c_api.godot_object = null;

pub const Performance = struct {
    const Self = @This();
    const BaseClass = Object;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_performance_constructor == null) {
            mbind_performance_constructor = try api.createConstructor("Performance");
        }
        return api.createObject(Self, mbind_performance_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getMonitor(self: *const Self, arg_monitor: i32) !f32 {
        if (mbind_get_monitor == null) {
            mbind_get_monitor = try api.createMethod("Performance", "get_monitor");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_monitor),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_monitor, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }
};