// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_inner_radius: ?*c_api.godot_method_bind = null;
var mbind_get_material: ?*c_api.godot_method_bind = null;
var mbind_get_outer_radius: ?*c_api.godot_method_bind = null;
var mbind_get_ring_sides: ?*c_api.godot_method_bind = null;
var mbind_get_sides: ?*c_api.godot_method_bind = null;
var mbind_get_smooth_faces: ?*c_api.godot_method_bind = null;
var mbind_set_inner_radius: ?*c_api.godot_method_bind = null;
var mbind_set_material: ?*c_api.godot_method_bind = null;
var mbind_set_outer_radius: ?*c_api.godot_method_bind = null;
var mbind_set_ring_sides: ?*c_api.godot_method_bind = null;
var mbind_set_sides: ?*c_api.godot_method_bind = null;
var mbind_set_smooth_faces: ?*c_api.godot_method_bind = null;
var mbind_csgtorus_constructor: ?fn () ?*c_api.godot_object = null;

pub const CSGTorus = struct {
    const Self = @This();
    pub const BaseClass = godot.CSGPrimitive;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_csgtorus_constructor == null) {
            mbind_csgtorus_constructor = try api.createConstructor("CSGTorus");
        }
        return api.createObject(Self, mbind_csgtorus_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getInnerRadius(self: *const Self) !f32 {
        if (mbind_get_inner_radius == null) {
            mbind_get_inner_radius = try api.createMethod("CSGTorus", "get_inner_radius");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_inner_radius, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getMaterial(self: *const Self) !godot.Material {
        if (mbind_get_material == null) {
            mbind_get_material = try api.createMethod("CSGTorus", "get_material");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_material, base, cargs, result);
        return @ptrCast(*godot.Material, @alignCast(@alignOf(&godot.Material), result)).*;
    }

    pub fn getOuterRadius(self: *const Self) !f32 {
        if (mbind_get_outer_radius == null) {
            mbind_get_outer_radius = try api.createMethod("CSGTorus", "get_outer_radius");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_outer_radius, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getRingSides(self: *const Self) !i32 {
        if (mbind_get_ring_sides == null) {
            mbind_get_ring_sides = try api.createMethod("CSGTorus", "get_ring_sides");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_ring_sides, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getSides(self: *const Self) !i32 {
        if (mbind_get_sides == null) {
            mbind_get_sides = try api.createMethod("CSGTorus", "get_sides");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_sides, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getSmoothFaces(self: *const Self) !bool {
        if (mbind_get_smooth_faces == null) {
            mbind_get_smooth_faces = try api.createMethod("CSGTorus", "get_smooth_faces");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_smooth_faces, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setInnerRadius(self: *const Self, arg_radius: f32) !void {
        if (mbind_set_inner_radius == null) {
            mbind_set_inner_radius = try api.createMethod("CSGTorus", "set_inner_radius");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_radius),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_inner_radius, base, cargs, result);
    }

    pub fn setMaterial(self: *const Self, arg_material: *const godot.Material) !void {
        if (mbind_set_material == null) {
            mbind_set_material = try api.createMethod("CSGTorus", "set_material");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_material),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_material, base, cargs, result);
    }

    pub fn setOuterRadius(self: *const Self, arg_radius: f32) !void {
        if (mbind_set_outer_radius == null) {
            mbind_set_outer_radius = try api.createMethod("CSGTorus", "set_outer_radius");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_radius),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_outer_radius, base, cargs, result);
    }

    pub fn setRingSides(self: *const Self, arg_sides: i32) !void {
        if (mbind_set_ring_sides == null) {
            mbind_set_ring_sides = try api.createMethod("CSGTorus", "set_ring_sides");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_sides),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_ring_sides, base, cargs, result);
    }

    pub fn setSides(self: *const Self, arg_sides: i32) !void {
        if (mbind_set_sides == null) {
            mbind_set_sides = try api.createMethod("CSGTorus", "set_sides");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_sides),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_sides, base, cargs, result);
    }

    pub fn setSmoothFaces(self: *const Self, arg_smooth_faces: bool) !void {
        if (mbind_set_smooth_faces == null) {
            mbind_set_smooth_faces = try api.createMethod("CSGTorus", "set_smooth_faces");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_smooth_faces),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_smooth_faces, base, cargs, result);
    }
};