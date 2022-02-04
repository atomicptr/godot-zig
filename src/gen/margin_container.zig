// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Container = @import("container.zig").Container;

var mbind_margin_container_constructor: ?fn () ?*c_api.godot_object = null;

pub const MarginContainer = struct {
    const Self = @This();
    const BaseClass = Container;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_margin_container_constructor == null) {
            mbind_margin_container_constructor = try api.createConstructor("MarginContainer");
        }
        return api.createObject(Self, mbind_margin_container_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }
};