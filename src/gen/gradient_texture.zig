// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_gradient: ?*c_api.godot_method_bind = null;
var mbind_set_gradient: ?*c_api.godot_method_bind = null;
var mbind_set_width: ?*c_api.godot_method_bind = null;
var mbind_gradient_texture_constructor: ?fn () ?*c_api.godot_object = null;

pub const GradientTexture = struct {
    const Self = @This();
    pub const BaseClass = godot.Texture;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_gradient_texture_constructor == null) {
            mbind_gradient_texture_constructor = try api.createConstructor("GradientTexture");
        }
        return api.createObject(Self, mbind_gradient_texture_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getGradient(self: *const Self) !godot.Gradient {
        if (mbind_get_gradient == null) {
            mbind_get_gradient = try api.createMethod("GradientTexture", "get_gradient");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_gradient, base, cargs, result);
        return @ptrCast(*godot.Gradient, @alignCast(@alignOf(&godot.Gradient), result)).*;
    }

    pub fn setGradient(self: *const Self, arg_gradient: *const godot.Gradient) !void {
        if (mbind_set_gradient == null) {
            mbind_set_gradient = try api.createMethod("GradientTexture", "set_gradient");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_gradient),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_gradient, base, cargs, result);
    }

    pub fn setWidth(self: *const Self, arg_width: i32) !void {
        if (mbind_set_width == null) {
            mbind_set_width = try api.createMethod("GradientTexture", "set_width");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_width),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_width, base, cargs, result);
    }
};