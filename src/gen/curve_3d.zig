// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Resource = @import("resource.zig").Resource;

// method bindings
var mbind_add_point: ?*c_api.godot_method_bind = null;
var mbind_clear_points: ?*c_api.godot_method_bind = null;
var mbind_get_bake_interval: ?*c_api.godot_method_bind = null;
var mbind_get_baked_length: ?*c_api.godot_method_bind = null;
var mbind_get_baked_points: ?*c_api.godot_method_bind = null;
var mbind_get_baked_tilts: ?*c_api.godot_method_bind = null;
var mbind_get_baked_up_vectors: ?*c_api.godot_method_bind = null;
var mbind_get_closest_offset: ?*c_api.godot_method_bind = null;
var mbind_get_closest_point: ?*c_api.godot_method_bind = null;
var mbind_get_point_count: ?*c_api.godot_method_bind = null;
var mbind_get_point_in: ?*c_api.godot_method_bind = null;
var mbind_get_point_out: ?*c_api.godot_method_bind = null;
var mbind_get_point_position: ?*c_api.godot_method_bind = null;
var mbind_get_point_tilt: ?*c_api.godot_method_bind = null;
var mbind_interpolate: ?*c_api.godot_method_bind = null;
var mbind_interpolate_baked: ?*c_api.godot_method_bind = null;
var mbind_interpolate_baked_up_vector: ?*c_api.godot_method_bind = null;
var mbind_interpolatef: ?*c_api.godot_method_bind = null;
var mbind_is_up_vector_enabled: ?*c_api.godot_method_bind = null;
var mbind_remove_point: ?*c_api.godot_method_bind = null;
var mbind_set_bake_interval: ?*c_api.godot_method_bind = null;
var mbind_set_point_in: ?*c_api.godot_method_bind = null;
var mbind_set_point_out: ?*c_api.godot_method_bind = null;
var mbind_set_point_position: ?*c_api.godot_method_bind = null;
var mbind_set_point_tilt: ?*c_api.godot_method_bind = null;
var mbind_set_up_vector_enabled: ?*c_api.godot_method_bind = null;
var mbind_tessellate: ?*c_api.godot_method_bind = null;
var mbind_curve_3d_constructor: ?fn () ?*c_api.godot_object = null;

pub const Curve3D = struct {
    const Self = @This();
    const BaseClass = Resource;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_curve_3d_constructor == null) {
            mbind_curve_3d_constructor = try api.createConstructor("Curve3D");
        }
        return api.createObject(Self, mbind_curve_3d_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn addPoint(self: *const Self, arg_position: *const godot.Vector3, arg_in: *const godot.Vector3, arg_out: *const godot.Vector3, arg_at_position: i32) !void {
        if (mbind_add_point == null) {
            mbind_add_point = try api.createMethod("Curve3D", "add_point");
        }

        var result: ?*anyopaque = null;
        var args: [4]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_position),
            @ptrCast(*const anyopaque, arg_in),
            @ptrCast(*const anyopaque, arg_out),
            @ptrCast(*const anyopaque, *arg_at_position),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_point, base, cargs, result);
    }

    pub fn clearPoints(self: *const Self) !void {
        if (mbind_clear_points == null) {
            mbind_clear_points = try api.createMethod("Curve3D", "clear_points");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_clear_points, base, cargs, result);
    }

    pub fn getBakeInterval(self: *const Self) !f32 {
        if (mbind_get_bake_interval == null) {
            mbind_get_bake_interval = try api.createMethod("Curve3D", "get_bake_interval");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_bake_interval, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getBakedLength(self: *const Self) !f32 {
        if (mbind_get_baked_length == null) {
            mbind_get_baked_length = try api.createMethod("Curve3D", "get_baked_length");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_baked_length, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getBakedPoints(self: *const Self) !godot.PoolVector3Array {
        if (mbind_get_baked_points == null) {
            mbind_get_baked_points = try api.createMethod("Curve3D", "get_baked_points");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_baked_points, base, cargs, result);
        return @ptrCast(*godot.PoolVector3Array, @alignCast(@alignOf(&godot.PoolVector3Array), result)).*;
    }

    pub fn getBakedTilts(self: *const Self) !godot.PoolRealArray {
        if (mbind_get_baked_tilts == null) {
            mbind_get_baked_tilts = try api.createMethod("Curve3D", "get_baked_tilts");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_baked_tilts, base, cargs, result);
        return @ptrCast(*godot.PoolRealArray, @alignCast(@alignOf(&godot.PoolRealArray), result)).*;
    }

    pub fn getBakedUpVectors(self: *const Self) !godot.PoolVector3Array {
        if (mbind_get_baked_up_vectors == null) {
            mbind_get_baked_up_vectors = try api.createMethod("Curve3D", "get_baked_up_vectors");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_baked_up_vectors, base, cargs, result);
        return @ptrCast(*godot.PoolVector3Array, @alignCast(@alignOf(&godot.PoolVector3Array), result)).*;
    }

    pub fn getClosestOffset(self: *const Self, arg_to_point: *const godot.Vector3) !f32 {
        if (mbind_get_closest_offset == null) {
            mbind_get_closest_offset = try api.createMethod("Curve3D", "get_closest_offset");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_to_point),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_closest_offset, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getClosestPoint(self: *const Self, arg_to_point: *const godot.Vector3) !godot.Vector3 {
        if (mbind_get_closest_point == null) {
            mbind_get_closest_point = try api.createMethod("Curve3D", "get_closest_point");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_to_point),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_closest_point, base, cargs, result);
        return @ptrCast(*godot.Vector3, @alignCast(@alignOf(&godot.Vector3), result)).*;
    }

    pub fn getPointCount(self: *const Self) !i32 {
        if (mbind_get_point_count == null) {
            mbind_get_point_count = try api.createMethod("Curve3D", "get_point_count");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_point_count, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getPointIn(self: *const Self, arg_idx: i32) !godot.Vector3 {
        if (mbind_get_point_in == null) {
            mbind_get_point_in = try api.createMethod("Curve3D", "get_point_in");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_point_in, base, cargs, result);
        return @ptrCast(*godot.Vector3, @alignCast(@alignOf(&godot.Vector3), result)).*;
    }

    pub fn getPointOut(self: *const Self, arg_idx: i32) !godot.Vector3 {
        if (mbind_get_point_out == null) {
            mbind_get_point_out = try api.createMethod("Curve3D", "get_point_out");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_point_out, base, cargs, result);
        return @ptrCast(*godot.Vector3, @alignCast(@alignOf(&godot.Vector3), result)).*;
    }

    pub fn getPointPosition(self: *const Self, arg_idx: i32) !godot.Vector3 {
        if (mbind_get_point_position == null) {
            mbind_get_point_position = try api.createMethod("Curve3D", "get_point_position");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_point_position, base, cargs, result);
        return @ptrCast(*godot.Vector3, @alignCast(@alignOf(&godot.Vector3), result)).*;
    }

    pub fn getPointTilt(self: *const Self, arg_idx: i32) !f32 {
        if (mbind_get_point_tilt == null) {
            mbind_get_point_tilt = try api.createMethod("Curve3D", "get_point_tilt");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_point_tilt, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn interpolate(self: *const Self, arg_idx: i32, arg_t: f32) !godot.Vector3 {
        if (mbind_interpolate == null) {
            mbind_interpolate = try api.createMethod("Curve3D", "interpolate");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
            @ptrCast(*const anyopaque, *arg_t),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_interpolate, base, cargs, result);
        return @ptrCast(*godot.Vector3, @alignCast(@alignOf(&godot.Vector3), result)).*;
    }

    pub fn interpolateBaked(self: *const Self, arg_offset: f32, arg_cubic: bool) !godot.Vector3 {
        if (mbind_interpolate_baked == null) {
            mbind_interpolate_baked = try api.createMethod("Curve3D", "interpolate_baked");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_offset),
            @ptrCast(*const anyopaque, *arg_cubic),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_interpolate_baked, base, cargs, result);
        return @ptrCast(*godot.Vector3, @alignCast(@alignOf(&godot.Vector3), result)).*;
    }

    pub fn interpolateBakedUpVector(self: *const Self, arg_offset: f32, arg_apply_tilt: bool) !godot.Vector3 {
        if (mbind_interpolate_baked_up_vector == null) {
            mbind_interpolate_baked_up_vector = try api.createMethod("Curve3D", "interpolate_baked_up_vector");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_offset),
            @ptrCast(*const anyopaque, *arg_apply_tilt),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_interpolate_baked_up_vector, base, cargs, result);
        return @ptrCast(*godot.Vector3, @alignCast(@alignOf(&godot.Vector3), result)).*;
    }

    pub fn interpolatef(self: *const Self, arg_fofs: f32) !godot.Vector3 {
        if (mbind_interpolatef == null) {
            mbind_interpolatef = try api.createMethod("Curve3D", "interpolatef");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_fofs),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_interpolatef, base, cargs, result);
        return @ptrCast(*godot.Vector3, @alignCast(@alignOf(&godot.Vector3), result)).*;
    }

    pub fn isUpVectorEnabled(self: *const Self) !bool {
        if (mbind_is_up_vector_enabled == null) {
            mbind_is_up_vector_enabled = try api.createMethod("Curve3D", "is_up_vector_enabled");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_up_vector_enabled, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn removePoint(self: *const Self, arg_idx: i32) !void {
        if (mbind_remove_point == null) {
            mbind_remove_point = try api.createMethod("Curve3D", "remove_point");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_remove_point, base, cargs, result);
    }

    pub fn setBakeInterval(self: *const Self, arg_distance: f32) !void {
        if (mbind_set_bake_interval == null) {
            mbind_set_bake_interval = try api.createMethod("Curve3D", "set_bake_interval");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_distance),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_bake_interval, base, cargs, result);
    }

    pub fn setPointIn(self: *const Self, arg_idx: i32, arg_position: *const godot.Vector3) !void {
        if (mbind_set_point_in == null) {
            mbind_set_point_in = try api.createMethod("Curve3D", "set_point_in");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
            @ptrCast(*const anyopaque, arg_position),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_point_in, base, cargs, result);
    }

    pub fn setPointOut(self: *const Self, arg_idx: i32, arg_position: *const godot.Vector3) !void {
        if (mbind_set_point_out == null) {
            mbind_set_point_out = try api.createMethod("Curve3D", "set_point_out");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
            @ptrCast(*const anyopaque, arg_position),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_point_out, base, cargs, result);
    }

    pub fn setPointPosition(self: *const Self, arg_idx: i32, arg_position: *const godot.Vector3) !void {
        if (mbind_set_point_position == null) {
            mbind_set_point_position = try api.createMethod("Curve3D", "set_point_position");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
            @ptrCast(*const anyopaque, arg_position),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_point_position, base, cargs, result);
    }

    pub fn setPointTilt(self: *const Self, arg_idx: i32, arg_tilt: f32) !void {
        if (mbind_set_point_tilt == null) {
            mbind_set_point_tilt = try api.createMethod("Curve3D", "set_point_tilt");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
            @ptrCast(*const anyopaque, *arg_tilt),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_point_tilt, base, cargs, result);
    }

    pub fn setUpVectorEnabled(self: *const Self, arg_enable: bool) !void {
        if (mbind_set_up_vector_enabled == null) {
            mbind_set_up_vector_enabled = try api.createMethod("Curve3D", "set_up_vector_enabled");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_up_vector_enabled, base, cargs, result);
    }

    pub fn tessellate(self: *const Self, arg_max_stages: i32, arg_tolerance_degrees: f32) !godot.PoolVector3Array {
        if (mbind_tessellate == null) {
            mbind_tessellate = try api.createMethod("Curve3D", "tessellate");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_max_stages),
            @ptrCast(*const anyopaque, *arg_tolerance_degrees),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_tessellate, base, cargs, result);
        return @ptrCast(*godot.PoolVector3Array, @alignCast(@alignOf(&godot.PoolVector3Array), result)).*;
    }
};