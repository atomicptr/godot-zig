// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const VisualShaderNode = @import("visual_shader_node.zig").VisualShaderNode;

// method bindings
var mbind_get_function: ?*c_api.godot_method_bind = null;
var mbind_set_function: ?*c_api.godot_method_bind = null;
var mbind_visual_shader_node_vector_derivative_func_constructor: ?fn () ?*c_api.godot_object = null;

pub const VisualShaderNodeVectorDerivativeFunc = struct {
    const Self = @This();
    const BaseClass = VisualShaderNode;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_visual_shader_node_vector_derivative_func_constructor == null) {
            mbind_visual_shader_node_vector_derivative_func_constructor = try api.createConstructor("VisualShaderNodeVectorDerivativeFunc");
        }
        return api.createObject(Self, mbind_visual_shader_node_vector_derivative_func_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getFunction(self: *const Self) !i32 {
        if (mbind_get_function == null) {
            mbind_get_function = try api.createMethod("VisualShaderNodeVectorDerivativeFunc", "get_function");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_function, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn setFunction(self: *const Self, arg_func: i32) !void {
        if (mbind_set_function == null) {
            mbind_set_function = try api.createMethod("VisualShaderNodeVectorDerivativeFunc", "set_function");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_func),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_function, base, cargs, result);
    }
};