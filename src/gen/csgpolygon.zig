// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_depth: ?*c_api.godot_method_bind = null;
var mbind_get_material: ?*c_api.godot_method_bind = null;
var mbind_get_mode: ?*c_api.godot_method_bind = null;
var mbind_get_path_interval: ?*c_api.godot_method_bind = null;
var mbind_get_path_interval_type: ?*c_api.godot_method_bind = null;
var mbind_get_path_node: ?*c_api.godot_method_bind = null;
var mbind_get_path_rotation: ?*c_api.godot_method_bind = null;
var mbind_get_path_simplify_angle: ?*c_api.godot_method_bind = null;
var mbind_get_path_u_distance: ?*c_api.godot_method_bind = null;
var mbind_get_polygon: ?*c_api.godot_method_bind = null;
var mbind_get_smooth_faces: ?*c_api.godot_method_bind = null;
var mbind_get_spin_degrees: ?*c_api.godot_method_bind = null;
var mbind_get_spin_sides: ?*c_api.godot_method_bind = null;
var mbind_is_path_continuous_u: ?*c_api.godot_method_bind = null;
var mbind_is_path_joined: ?*c_api.godot_method_bind = null;
var mbind_is_path_local: ?*c_api.godot_method_bind = null;
var mbind_set_depth: ?*c_api.godot_method_bind = null;
var mbind_set_material: ?*c_api.godot_method_bind = null;
var mbind_set_mode: ?*c_api.godot_method_bind = null;
var mbind_set_path_continuous_u: ?*c_api.godot_method_bind = null;
var mbind_set_path_interval: ?*c_api.godot_method_bind = null;
var mbind_set_path_interval_type: ?*c_api.godot_method_bind = null;
var mbind_set_path_joined: ?*c_api.godot_method_bind = null;
var mbind_set_path_local: ?*c_api.godot_method_bind = null;
var mbind_set_path_node: ?*c_api.godot_method_bind = null;
var mbind_set_path_rotation: ?*c_api.godot_method_bind = null;
var mbind_set_path_simplify_angle: ?*c_api.godot_method_bind = null;
var mbind_set_path_u_distance: ?*c_api.godot_method_bind = null;
var mbind_set_polygon: ?*c_api.godot_method_bind = null;
var mbind_set_smooth_faces: ?*c_api.godot_method_bind = null;
var mbind_set_spin_degrees: ?*c_api.godot_method_bind = null;
var mbind_set_spin_sides: ?*c_api.godot_method_bind = null;
var mbind_csgpolygon_constructor: ?fn () ?*c_api.godot_object = null;

pub const CSGPolygon = struct {
    const Self = @This();
    pub const BaseClass = godot.CSGPrimitive;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_csgpolygon_constructor == null) {
            mbind_csgpolygon_constructor = try api.createConstructor("CSGPolygon");
        }
        return api.createObject(Self, mbind_csgpolygon_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getDepth(self: *const Self) !f32 {
        if (mbind_get_depth == null) {
            mbind_get_depth = try api.createMethod("CSGPolygon", "get_depth");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_depth, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getMaterial(self: *const Self) !godot.Material {
        if (mbind_get_material == null) {
            mbind_get_material = try api.createMethod("CSGPolygon", "get_material");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_material, base, cargs, result);
        return @ptrCast(*godot.Material, @alignCast(@alignOf(&godot.Material), result)).*;
    }

    pub fn getMode(self: *const Self) !i32 {
        if (mbind_get_mode == null) {
            mbind_get_mode = try api.createMethod("CSGPolygon", "get_mode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_mode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getPathInterval(self: *const Self) !f32 {
        if (mbind_get_path_interval == null) {
            mbind_get_path_interval = try api.createMethod("CSGPolygon", "get_path_interval");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_path_interval, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getPathIntervalType(self: *const Self) !i32 {
        if (mbind_get_path_interval_type == null) {
            mbind_get_path_interval_type = try api.createMethod("CSGPolygon", "get_path_interval_type");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_path_interval_type, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getPathNode(self: *const Self) !godot.NodePath {
        if (mbind_get_path_node == null) {
            mbind_get_path_node = try api.createMethod("CSGPolygon", "get_path_node");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_path_node, base, cargs, result);
        return @ptrCast(*godot.NodePath, @alignCast(@alignOf(&godot.NodePath), result)).*;
    }

    pub fn getPathRotation(self: *const Self) !i32 {
        if (mbind_get_path_rotation == null) {
            mbind_get_path_rotation = try api.createMethod("CSGPolygon", "get_path_rotation");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_path_rotation, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getPathSimplifyAngle(self: *const Self) !f32 {
        if (mbind_get_path_simplify_angle == null) {
            mbind_get_path_simplify_angle = try api.createMethod("CSGPolygon", "get_path_simplify_angle");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_path_simplify_angle, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getPathUDistance(self: *const Self) !f32 {
        if (mbind_get_path_u_distance == null) {
            mbind_get_path_u_distance = try api.createMethod("CSGPolygon", "get_path_u_distance");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_path_u_distance, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getPolygon(self: *const Self) !godot.PoolVector2Array {
        if (mbind_get_polygon == null) {
            mbind_get_polygon = try api.createMethod("CSGPolygon", "get_polygon");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_polygon, base, cargs, result);
        return @ptrCast(*godot.PoolVector2Array, @alignCast(@alignOf(&godot.PoolVector2Array), result)).*;
    }

    pub fn getSmoothFaces(self: *const Self) !bool {
        if (mbind_get_smooth_faces == null) {
            mbind_get_smooth_faces = try api.createMethod("CSGPolygon", "get_smooth_faces");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_smooth_faces, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getSpinDegrees(self: *const Self) !f32 {
        if (mbind_get_spin_degrees == null) {
            mbind_get_spin_degrees = try api.createMethod("CSGPolygon", "get_spin_degrees");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_spin_degrees, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getSpinSides(self: *const Self) !i32 {
        if (mbind_get_spin_sides == null) {
            mbind_get_spin_sides = try api.createMethod("CSGPolygon", "get_spin_sides");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_spin_sides, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn isPathContinuousU(self: *const Self) !bool {
        if (mbind_is_path_continuous_u == null) {
            mbind_is_path_continuous_u = try api.createMethod("CSGPolygon", "is_path_continuous_u");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_path_continuous_u, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isPathJoined(self: *const Self) !bool {
        if (mbind_is_path_joined == null) {
            mbind_is_path_joined = try api.createMethod("CSGPolygon", "is_path_joined");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_path_joined, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isPathLocal(self: *const Self) !bool {
        if (mbind_is_path_local == null) {
            mbind_is_path_local = try api.createMethod("CSGPolygon", "is_path_local");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_path_local, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setDepth(self: *const Self, arg_depth: f32) !void {
        if (mbind_set_depth == null) {
            mbind_set_depth = try api.createMethod("CSGPolygon", "set_depth");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_depth),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_depth, base, cargs, result);
    }

    pub fn setMaterial(self: *const Self, arg_material: *const godot.Material) !void {
        if (mbind_set_material == null) {
            mbind_set_material = try api.createMethod("CSGPolygon", "set_material");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_material),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_material, base, cargs, result);
    }

    pub fn setMode(self: *const Self, arg_mode: i32) !void {
        if (mbind_set_mode == null) {
            mbind_set_mode = try api.createMethod("CSGPolygon", "set_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_mode, base, cargs, result);
    }

    pub fn setPathContinuousU(self: *const Self, arg_enable: bool) !void {
        if (mbind_set_path_continuous_u == null) {
            mbind_set_path_continuous_u = try api.createMethod("CSGPolygon", "set_path_continuous_u");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_path_continuous_u, base, cargs, result);
    }

    pub fn setPathInterval(self: *const Self, arg_path_interval: f32) !void {
        if (mbind_set_path_interval == null) {
            mbind_set_path_interval = try api.createMethod("CSGPolygon", "set_path_interval");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_path_interval),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_path_interval, base, cargs, result);
    }

    pub fn setPathIntervalType(self: *const Self, arg_interval_type: i32) !void {
        if (mbind_set_path_interval_type == null) {
            mbind_set_path_interval_type = try api.createMethod("CSGPolygon", "set_path_interval_type");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_interval_type),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_path_interval_type, base, cargs, result);
    }

    pub fn setPathJoined(self: *const Self, arg_enable: bool) !void {
        if (mbind_set_path_joined == null) {
            mbind_set_path_joined = try api.createMethod("CSGPolygon", "set_path_joined");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_path_joined, base, cargs, result);
    }

    pub fn setPathLocal(self: *const Self, arg_enable: bool) !void {
        if (mbind_set_path_local == null) {
            mbind_set_path_local = try api.createMethod("CSGPolygon", "set_path_local");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_path_local, base, cargs, result);
    }

    pub fn setPathNode(self: *const Self, arg_path: *const godot.NodePath) !void {
        if (mbind_set_path_node == null) {
            mbind_set_path_node = try api.createMethod("CSGPolygon", "set_path_node");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_path),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_path_node, base, cargs, result);
    }

    pub fn setPathRotation(self: *const Self, arg_path_rotation: i32) !void {
        if (mbind_set_path_rotation == null) {
            mbind_set_path_rotation = try api.createMethod("CSGPolygon", "set_path_rotation");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_path_rotation),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_path_rotation, base, cargs, result);
    }

    pub fn setPathSimplifyAngle(self: *const Self, arg_degrees: f32) !void {
        if (mbind_set_path_simplify_angle == null) {
            mbind_set_path_simplify_angle = try api.createMethod("CSGPolygon", "set_path_simplify_angle");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_degrees),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_path_simplify_angle, base, cargs, result);
    }

    pub fn setPathUDistance(self: *const Self, arg_distance: f32) !void {
        if (mbind_set_path_u_distance == null) {
            mbind_set_path_u_distance = try api.createMethod("CSGPolygon", "set_path_u_distance");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_distance),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_path_u_distance, base, cargs, result);
    }

    pub fn setPolygon(self: *const Self, arg_polygon: *const godot.PoolVector2Array) !void {
        if (mbind_set_polygon == null) {
            mbind_set_polygon = try api.createMethod("CSGPolygon", "set_polygon");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_polygon),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_polygon, base, cargs, result);
    }

    pub fn setSmoothFaces(self: *const Self, arg_smooth_faces: bool) !void {
        if (mbind_set_smooth_faces == null) {
            mbind_set_smooth_faces = try api.createMethod("CSGPolygon", "set_smooth_faces");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_smooth_faces),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_smooth_faces, base, cargs, result);
    }

    pub fn setSpinDegrees(self: *const Self, arg_degrees: f32) !void {
        if (mbind_set_spin_degrees == null) {
            mbind_set_spin_degrees = try api.createMethod("CSGPolygon", "set_spin_degrees");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_degrees),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_spin_degrees, base, cargs, result);
    }

    pub fn setSpinSides(self: *const Self, arg_spin_sides: i32) !void {
        if (mbind_set_spin_sides == null) {
            mbind_set_spin_sides = try api.createMethod("CSGPolygon", "set_spin_sides");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_spin_sides),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_spin_sides, base, cargs, result);
    }
};