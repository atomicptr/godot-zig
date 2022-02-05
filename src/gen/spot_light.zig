// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Light = @import("light.zig").Light;

var mbind_spot_light_constructor: ?fn () ?*c_api.godot_object = null;

pub const SpotLight = struct {
    const Self = @This();
    const BaseClass = Light;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_spot_light_constructor == null) {
            mbind_spot_light_constructor = try api.createConstructor("SpotLight");
        }
        return api.createObject(Self, mbind_spot_light_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }
};