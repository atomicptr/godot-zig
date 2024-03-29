// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_constant: ?*c_api.godot_method_bind = null;
var mbind_set_constant: ?*c_api.godot_method_bind = null;
var mbind_visual_shader_node_boolean_constant_constructor: ?fn () ?*c_api.godot_object = null;

pub const VisualShaderNodeBooleanConstant = struct {
    const Self = @This();
    pub const BaseClass = godot.VisualShaderNode;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_visual_shader_node_boolean_constant_constructor == null) {
            mbind_visual_shader_node_boolean_constant_constructor = try api.createConstructor("VisualShaderNodeBooleanConstant");
        }
        return api.createObject(Self, mbind_visual_shader_node_boolean_constant_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getConstant(self: *const Self) !bool {
        if (mbind_get_constant == null) {
            mbind_get_constant = try api.createMethod("VisualShaderNodeBooleanConstant", "get_constant");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_constant, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setConstant(self: *const Self, arg_value: bool) !void {
        if (mbind_set_constant == null) {
            mbind_set_constant = try api.createMethod("VisualShaderNodeBooleanConstant", "set_constant");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_value),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_constant, base, cargs, result);
    }
};