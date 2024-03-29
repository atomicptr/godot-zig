// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_cast_motion: ?*c_api.godot_method_bind = null;
var mbind_collide_shape: ?*c_api.godot_method_bind = null;
var mbind_get_rest_info: ?*c_api.godot_method_bind = null;
var mbind_intersect_point: ?*c_api.godot_method_bind = null;
var mbind_intersect_point_on_canvas: ?*c_api.godot_method_bind = null;
var mbind_intersect_ray: ?*c_api.godot_method_bind = null;
var mbind_intersect_shape: ?*c_api.godot_method_bind = null;
var mbind_physics_2ddirect_space_state_constructor: ?fn () ?*c_api.godot_object = null;

pub const Physics2DDirectSpaceState = struct {
    const Self = @This();
    pub const BaseClass = godot.Object;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_physics_2ddirect_space_state_constructor == null) {
            mbind_physics_2ddirect_space_state_constructor = try api.createConstructor("Physics2DDirectSpaceState");
        }
        return api.createObject(Self, mbind_physics_2ddirect_space_state_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn castMotion(self: *const Self, arg_shape: *const godot.Physics2DShapeQueryParameters) !godot.Array {
        if (mbind_cast_motion == null) {
            mbind_cast_motion = try api.createMethod("Physics2DDirectSpaceState", "cast_motion");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_shape),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_cast_motion, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn collideShape(self: *const Self, arg_shape: *const godot.Physics2DShapeQueryParameters, arg_max_results: i32) !godot.Array {
        if (mbind_collide_shape == null) {
            mbind_collide_shape = try api.createMethod("Physics2DDirectSpaceState", "collide_shape");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_shape),
            @ptrCast(*const anyopaque, *arg_max_results),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_collide_shape, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getRestInfo(self: *const Self, arg_shape: *const godot.Physics2DShapeQueryParameters) !godot.Dictionary {
        if (mbind_get_rest_info == null) {
            mbind_get_rest_info = try api.createMethod("Physics2DDirectSpaceState", "get_rest_info");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_shape),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_rest_info, base, cargs, result);
        return @ptrCast(*godot.Dictionary, @alignCast(@alignOf(&godot.Dictionary), result)).*;
    }

    pub fn intersectPoint(self: *const Self, arg_point: *const godot.Vector2, arg_max_results: i32, arg_exclude: *const godot.Array, arg_collision_layer: i32, arg_collide_with_bodies: bool, arg_collide_with_areas: bool) !godot.Array {
        if (mbind_intersect_point == null) {
            mbind_intersect_point = try api.createMethod("Physics2DDirectSpaceState", "intersect_point");
        }

        var result: ?*anyopaque = null;
        var args: [6]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_point),
            @ptrCast(*const anyopaque, *arg_max_results),
            @ptrCast(*const anyopaque, arg_exclude),
            @ptrCast(*const anyopaque, *arg_collision_layer),
            @ptrCast(*const anyopaque, *arg_collide_with_bodies),
            @ptrCast(*const anyopaque, *arg_collide_with_areas),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_intersect_point, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn intersectPointOnCanvas(self: *const Self, arg_point: *const godot.Vector2, arg_canvas_instance_id: i32, arg_max_results: i32, arg_exclude: *const godot.Array, arg_collision_layer: i32, arg_collide_with_bodies: bool, arg_collide_with_areas: bool) !godot.Array {
        if (mbind_intersect_point_on_canvas == null) {
            mbind_intersect_point_on_canvas = try api.createMethod("Physics2DDirectSpaceState", "intersect_point_on_canvas");
        }

        var result: ?*anyopaque = null;
        var args: [7]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_point),
            @ptrCast(*const anyopaque, *arg_canvas_instance_id),
            @ptrCast(*const anyopaque, *arg_max_results),
            @ptrCast(*const anyopaque, arg_exclude),
            @ptrCast(*const anyopaque, *arg_collision_layer),
            @ptrCast(*const anyopaque, *arg_collide_with_bodies),
            @ptrCast(*const anyopaque, *arg_collide_with_areas),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_intersect_point_on_canvas, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn intersectRay(self: *const Self, arg_from: *const godot.Vector2, arg_to: *const godot.Vector2, arg_exclude: *const godot.Array, arg_collision_layer: i32, arg_collide_with_bodies: bool, arg_collide_with_areas: bool) !godot.Dictionary {
        if (mbind_intersect_ray == null) {
            mbind_intersect_ray = try api.createMethod("Physics2DDirectSpaceState", "intersect_ray");
        }

        var result: ?*anyopaque = null;
        var args: [6]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_from),
            @ptrCast(*const anyopaque, arg_to),
            @ptrCast(*const anyopaque, arg_exclude),
            @ptrCast(*const anyopaque, *arg_collision_layer),
            @ptrCast(*const anyopaque, *arg_collide_with_bodies),
            @ptrCast(*const anyopaque, *arg_collide_with_areas),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_intersect_ray, base, cargs, result);
        return @ptrCast(*godot.Dictionary, @alignCast(@alignOf(&godot.Dictionary), result)).*;
    }

    pub fn intersectShape(self: *const Self, arg_shape: *const godot.Physics2DShapeQueryParameters, arg_max_results: i32) !godot.Array {
        if (mbind_intersect_shape == null) {
            mbind_intersect_shape = try api.createMethod("Physics2DDirectSpaceState", "intersect_shape");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_shape),
            @ptrCast(*const anyopaque, *arg_max_results),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_intersect_shape, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }
};