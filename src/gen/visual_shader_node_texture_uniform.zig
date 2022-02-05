// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const VisualShaderNodeUniform = @import("visual_shader_node_uniform.zig").VisualShaderNodeUniform;

// method bindings
var mbind_get_color_default: ?*c_api.godot_method_bind = null;
var mbind_get_texture_type: ?*c_api.godot_method_bind = null;
var mbind_set_color_default: ?*c_api.godot_method_bind = null;
var mbind_set_texture_type: ?*c_api.godot_method_bind = null;
var mbind_visual_shader_node_texture_uniform_constructor: ?fn () ?*c_api.godot_object = null;

pub const VisualShaderNodeTextureUniform = struct {
    const Self = @This();
    const BaseClass = VisualShaderNodeUniform;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_visual_shader_node_texture_uniform_constructor == null) {
            mbind_visual_shader_node_texture_uniform_constructor = try api.createConstructor("VisualShaderNodeTextureUniform");
        }
        return api.createObject(Self, mbind_visual_shader_node_texture_uniform_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getColorDefault(self: *const Self) !i32 {
        if (mbind_get_color_default == null) {
            mbind_get_color_default = try api.createMethod("VisualShaderNodeTextureUniform", "get_color_default");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_color_default, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getTextureType(self: *const Self) !i32 {
        if (mbind_get_texture_type == null) {
            mbind_get_texture_type = try api.createMethod("VisualShaderNodeTextureUniform", "get_texture_type");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_texture_type, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn setColorDefault(self: *const Self, arg_type: i32) !void {
        if (mbind_set_color_default == null) {
            mbind_set_color_default = try api.createMethod("VisualShaderNodeTextureUniform", "set_color_default");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_type),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_color_default, base, cargs, result);
    }

    pub fn setTextureType(self: *const Self, arg_type: i32) !void {
        if (mbind_set_texture_type == null) {
            mbind_set_texture_type = try api.createMethod("VisualShaderNodeTextureUniform", "set_texture_type");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_type),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_texture_type, base, cargs, result);
    }
};