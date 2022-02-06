// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_expression: ?*c_api.godot_method_bind = null;
var mbind_set_expression: ?*c_api.godot_method_bind = null;
var mbind_visual_shader_node_expression_constructor: ?fn () ?*c_api.godot_object = null;

pub const VisualShaderNodeExpression = struct {
    const Self = @This();
    pub const BaseClass = godot.VisualShaderNodeGroupBase;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_visual_shader_node_expression_constructor == null) {
            mbind_visual_shader_node_expression_constructor = try api.createConstructor("VisualShaderNodeExpression");
        }
        return api.createObject(Self, mbind_visual_shader_node_expression_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getExpression(self: *const Self) !godot.String {
        if (mbind_get_expression == null) {
            mbind_get_expression = try api.createMethod("VisualShaderNodeExpression", "get_expression");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_expression, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn setExpression(self: *const Self, arg_expression: *const godot.String) !void {
        if (mbind_set_expression == null) {
            mbind_set_expression = try api.createMethod("VisualShaderNodeExpression", "set_expression");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_expression),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_expression, base, cargs, result);
    }
};