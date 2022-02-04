// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Physics2DDirectBodyState = @import("physics_2ddirect_body_state.zig").Physics2DDirectBodyState;

var mbind_physics_2ddirect_body_state_sw_constructor: ?fn () ?*c_api.godot_object = null;

pub const Physics2DDirectBodyStateSW = struct {
    const Self = @This();
    const BaseClass = Physics2DDirectBodyState;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_physics_2ddirect_body_state_sw_constructor == null) {
            mbind_physics_2ddirect_body_state_sw_constructor = try api.createConstructor("Physics2DDirectBodyStateSW");
        }
        return api.createObject(Self, mbind_physics_2ddirect_body_state_sw_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }
};