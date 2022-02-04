// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const OccluderShape = @import("occluder_shape.zig").OccluderShape;

// method bindings
var mbind_get_spheres: ?*c_api.godot_method_bind = null;
var mbind_set_sphere_position: ?*c_api.godot_method_bind = null;
var mbind_set_sphere_radius: ?*c_api.godot_method_bind = null;
var mbind_set_spheres: ?*c_api.godot_method_bind = null;
var mbind_occluder_shape_sphere_constructor: ?fn () ?*c_api.godot_object = null;

pub const OccluderShapeSphere = struct {
    const Self = @This();
    const BaseClass = OccluderShape;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_occluder_shape_sphere_constructor == null) {
            mbind_occluder_shape_sphere_constructor = try api.createConstructor("OccluderShapeSphere");
        }
        return api.createObject(Self, mbind_occluder_shape_sphere_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getSpheres(self: *const Self) !godot.Array {
        if (mbind_get_spheres == null) {
            mbind_get_spheres = try api.createMethod("OccluderShapeSphere", "get_spheres");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_spheres, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn setSpherePosition(self: *const Self, arg_index: i32, arg_position: *const godot.Vector3) !void {
        if (mbind_set_sphere_position == null) {
            mbind_set_sphere_position = try api.createMethod("OccluderShapeSphere", "set_sphere_position");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_index),
            @ptrCast(*const anyopaque, arg_position),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_sphere_position, base, cargs, result);
    }

    pub fn setSphereRadius(self: *const Self, arg_index: i32, arg_radius: f32) !void {
        if (mbind_set_sphere_radius == null) {
            mbind_set_sphere_radius = try api.createMethod("OccluderShapeSphere", "set_sphere_radius");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_index),
            @ptrCast(*const anyopaque, *arg_radius),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_sphere_radius, base, cargs, result);
    }

    pub fn setSpheres(self: *const Self, arg_spheres: *const godot.Array) !void {
        if (mbind_set_spheres == null) {
            mbind_set_spheres = try api.createMethod("OccluderShapeSphere", "set_spheres");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_spheres),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_spheres, base, cargs, result);
    }
};