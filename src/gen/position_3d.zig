// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Spatial = @import("spatial.zig").Spatial;

var mbind_position_3d_constructor: ?fn () ?*c_api.godot_object = null;

pub const Position3D = struct {
    const Self = @This();
    const BaseClass = Spatial;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_position_3d_constructor == null) {
            mbind_position_3d_constructor = try api.createConstructor("Position3D");
        }
        return api.createObject(Self, mbind_position_3d_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }
};