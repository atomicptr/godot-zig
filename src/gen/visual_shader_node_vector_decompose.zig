// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const VisualShaderNode = @import("visual_shader_node.zig").VisualShaderNode;

var mbind_visual_shader_node_vector_decompose_constructor: ?fn () ?*c_api.godot_object = null;

pub const VisualShaderNodeVectorDecompose = struct {
    const Self = @This();
    const BaseClass = VisualShaderNode;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_visual_shader_node_vector_decompose_constructor == null) {
            mbind_visual_shader_node_vector_decompose_constructor = try api.createConstructor("VisualShaderNodeVectorDecompose");
        }
        return api.createObject(Self, mbind_visual_shader_node_vector_decompose_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }
};