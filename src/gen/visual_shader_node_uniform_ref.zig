// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_uniform_name: ?*c_api.godot_method_bind = null;
var mbind_set_uniform_name: ?*c_api.godot_method_bind = null;
var mbind_visual_shader_node_uniform_ref_constructor: ?fn () ?*c_api.godot_object = null;

pub const VisualShaderNodeUniformRef = struct {
    const Self = @This();
    pub const BaseClass = godot.VisualShaderNode;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_visual_shader_node_uniform_ref_constructor == null) {
            mbind_visual_shader_node_uniform_ref_constructor = try api.createConstructor("VisualShaderNodeUniformRef");
        }
        return api.createObject(Self, mbind_visual_shader_node_uniform_ref_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getUniformName(self: *const Self) !godot.String {
        if (mbind_get_uniform_name == null) {
            mbind_get_uniform_name = try api.createMethod("VisualShaderNodeUniformRef", "get_uniform_name");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_uniform_name, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn setUniformName(self: *const Self, arg_name: *const godot.String) !void {
        if (mbind_set_uniform_name == null) {
            mbind_set_uniform_name = try api.createMethod("VisualShaderNodeUniformRef", "set_uniform_name");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_uniform_name, base, cargs, result);
    }
};