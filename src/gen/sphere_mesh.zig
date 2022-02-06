// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_height: ?*c_api.godot_method_bind = null;
var mbind_get_is_hemisphere: ?*c_api.godot_method_bind = null;
var mbind_get_radial_segments: ?*c_api.godot_method_bind = null;
var mbind_get_radius: ?*c_api.godot_method_bind = null;
var mbind_get_rings: ?*c_api.godot_method_bind = null;
var mbind_set_height: ?*c_api.godot_method_bind = null;
var mbind_set_is_hemisphere: ?*c_api.godot_method_bind = null;
var mbind_set_radial_segments: ?*c_api.godot_method_bind = null;
var mbind_set_radius: ?*c_api.godot_method_bind = null;
var mbind_set_rings: ?*c_api.godot_method_bind = null;
var mbind_sphere_mesh_constructor: ?fn () ?*c_api.godot_object = null;

pub const SphereMesh = struct {
    const Self = @This();
    pub const BaseClass = godot.PrimitiveMesh;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_sphere_mesh_constructor == null) {
            mbind_sphere_mesh_constructor = try api.createConstructor("SphereMesh");
        }
        return api.createObject(Self, mbind_sphere_mesh_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getHeight(self: *const Self) !f32 {
        if (mbind_get_height == null) {
            mbind_get_height = try api.createMethod("SphereMesh", "get_height");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_height, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getIsHemisphere(self: *const Self) !bool {
        if (mbind_get_is_hemisphere == null) {
            mbind_get_is_hemisphere = try api.createMethod("SphereMesh", "get_is_hemisphere");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_is_hemisphere, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getRadialSegments(self: *const Self) !i32 {
        if (mbind_get_radial_segments == null) {
            mbind_get_radial_segments = try api.createMethod("SphereMesh", "get_radial_segments");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_radial_segments, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getRadius(self: *const Self) !f32 {
        if (mbind_get_radius == null) {
            mbind_get_radius = try api.createMethod("SphereMesh", "get_radius");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_radius, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getRings(self: *const Self) !i32 {
        if (mbind_get_rings == null) {
            mbind_get_rings = try api.createMethod("SphereMesh", "get_rings");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_rings, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn setHeight(self: *const Self, arg_height: f32) !void {
        if (mbind_set_height == null) {
            mbind_set_height = try api.createMethod("SphereMesh", "set_height");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_height),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_height, base, cargs, result);
    }

    pub fn setIsHemisphere(self: *const Self, arg_is_hemisphere: bool) !void {
        if (mbind_set_is_hemisphere == null) {
            mbind_set_is_hemisphere = try api.createMethod("SphereMesh", "set_is_hemisphere");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_is_hemisphere),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_is_hemisphere, base, cargs, result);
    }

    pub fn setRadialSegments(self: *const Self, arg_radial_segments: i32) !void {
        if (mbind_set_radial_segments == null) {
            mbind_set_radial_segments = try api.createMethod("SphereMesh", "set_radial_segments");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_radial_segments),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_radial_segments, base, cargs, result);
    }

    pub fn setRadius(self: *const Self, arg_radius: f32) !void {
        if (mbind_set_radius == null) {
            mbind_set_radius = try api.createMethod("SphereMesh", "set_radius");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_radius),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_radius, base, cargs, result);
    }

    pub fn setRings(self: *const Self, arg_rings: i32) !void {
        if (mbind_set_rings == null) {
            mbind_set_rings = try api.createMethod("SphereMesh", "set_rings");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_rings),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_rings, base, cargs, result);
    }
};