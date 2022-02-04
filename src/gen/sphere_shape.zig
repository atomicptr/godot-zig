// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Shape = @import("shape.zig").Shape;

// method bindings
var mbind_get_radius: ?*c_api.godot_method_bind = null;
var mbind_set_radius: ?*c_api.godot_method_bind = null;
var mbind_sphere_shape_constructor: ?fn () ?*c_api.godot_object = null;

pub const SphereShape = struct {
    const Self = @This();
    const BaseClass = Shape;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_sphere_shape_constructor == null) {
            mbind_sphere_shape_constructor = try api.createConstructor("SphereShape");
        }
        return api.createObject(Self, mbind_sphere_shape_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getRadius(self: *const Self) !f32 {
        if (mbind_get_radius == null) {
            mbind_get_radius = try api.createMethod("SphereShape", "get_radius");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_radius, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn setRadius(self: *const Self, arg_radius: f32) !void {
        if (mbind_set_radius == null) {
            mbind_set_radius = try api.createMethod("SphereShape", "set_radius");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_radius),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_radius, base, cargs, result);
    }
};