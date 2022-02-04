// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Resource = @import("resource.zig").Resource;

// method bindings
var mbind_get_default_input_values: ?*c_api.godot_method_bind = null;
var mbind_get_input_port_default_value: ?*c_api.godot_method_bind = null;
var mbind_get_output_port_for_preview: ?*c_api.godot_method_bind = null;
var mbind_set_default_input_values: ?*c_api.godot_method_bind = null;
var mbind_set_input_port_default_value: ?*c_api.godot_method_bind = null;
var mbind_set_output_port_for_preview: ?*c_api.godot_method_bind = null;
var mbind_visual_shader_node_constructor: ?fn () ?*c_api.godot_object = null;

pub const VisualShaderNode = struct {
    const Self = @This();
    const BaseClass = Resource;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_visual_shader_node_constructor == null) {
            mbind_visual_shader_node_constructor = try api.createConstructor("VisualShaderNode");
        }
        return api.createObject(Self, mbind_visual_shader_node_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getDefaultInputValues(self: *const Self) !godot.Array {
        if (mbind_get_default_input_values == null) {
            mbind_get_default_input_values = try api.createMethod("VisualShaderNode", "get_default_input_values");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_default_input_values, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getInputPortDefaultValue(self: *const Self, arg_port: i32) !godot.Variant {
        if (mbind_get_input_port_default_value == null) {
            mbind_get_input_port_default_value = try api.createMethod("VisualShaderNode", "get_input_port_default_value");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_port),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_input_port_default_value, base, cargs, result);
        return @ptrCast(*godot.Variant, @alignCast(@alignOf(&godot.Variant), result)).*;
    }

    pub fn getOutputPortForPreview(self: *const Self) !i32 {
        if (mbind_get_output_port_for_preview == null) {
            mbind_get_output_port_for_preview = try api.createMethod("VisualShaderNode", "get_output_port_for_preview");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_output_port_for_preview, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn setDefaultInputValues(self: *const Self, arg_values: *const godot.Array) !void {
        if (mbind_set_default_input_values == null) {
            mbind_set_default_input_values = try api.createMethod("VisualShaderNode", "set_default_input_values");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_values),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_default_input_values, base, cargs, result);
    }

    pub fn setInputPortDefaultValue(self: *const Self, arg_port: i32, arg_value: *const godot.Variant) !void {
        if (mbind_set_input_port_default_value == null) {
            mbind_set_input_port_default_value = try api.createMethod("VisualShaderNode", "set_input_port_default_value");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_port),
            @ptrCast(*const anyopaque, arg_value),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_input_port_default_value, base, cargs, result);
    }

    pub fn setOutputPortForPreview(self: *const Self, arg_port: i32) !void {
        if (mbind_set_output_port_for_preview == null) {
            mbind_set_output_port_for_preview = try api.createMethod("VisualShaderNode", "set_output_port_for_preview");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_port),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_output_port_for_preview, base, cargs, result);
    }
};