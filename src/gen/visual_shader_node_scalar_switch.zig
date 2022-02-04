// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const VisualShaderNodeSwitch = @import("visual_shader_node_switch.zig").VisualShaderNodeSwitch;

var mbind_visual_shader_node_scalar_switch_constructor: ?fn () ?*c_api.godot_object = null;

pub const VisualShaderNodeScalarSwitch = struct {
    const Self = @This();
    const BaseClass = VisualShaderNodeSwitch;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_visual_shader_node_scalar_switch_constructor == null) {
            mbind_visual_shader_node_scalar_switch_constructor = try api.createConstructor("VisualShaderNodeScalarSwitch");
        }
        return api.createObject(Self, mbind_visual_shader_node_scalar_switch_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }
};