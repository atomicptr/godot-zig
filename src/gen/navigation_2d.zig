// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_closest_point: ?*c_api.godot_method_bind = null;
var mbind_get_closest_point_owner: ?*c_api.godot_method_bind = null;
var mbind_get_simple_path: ?*c_api.godot_method_bind = null;
var mbind_navpoly_add: ?*c_api.godot_method_bind = null;
var mbind_navpoly_remove: ?*c_api.godot_method_bind = null;
var mbind_navpoly_set_transform: ?*c_api.godot_method_bind = null;
var mbind_navigation_2d_constructor: ?fn () ?*c_api.godot_object = null;

pub const Navigation2D = struct {
    const Self = @This();
    pub const BaseClass = godot.Node2D;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_navigation_2d_constructor == null) {
            mbind_navigation_2d_constructor = try api.createConstructor("Navigation2D");
        }
        return api.createObject(Self, mbind_navigation_2d_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getClosestPoint(self: *const Self, arg_to_point: *const godot.Vector2) !godot.Vector2 {
        if (mbind_get_closest_point == null) {
            mbind_get_closest_point = try api.createMethod("Navigation2D", "get_closest_point");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_to_point),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_closest_point, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getClosestPointOwner(self: *const Self, arg_to_point: *const godot.Vector2) !godot.Object {
        if (mbind_get_closest_point_owner == null) {
            mbind_get_closest_point_owner = try api.createMethod("Navigation2D", "get_closest_point_owner");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_to_point),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_closest_point_owner, base, cargs, result);
        return @ptrCast(*godot.Object, @alignCast(@alignOf(&godot.Object), result)).*;
    }

    pub fn getSimplePath(self: *const Self, arg_start: *const godot.Vector2, arg_end: *const godot.Vector2, arg_optimize: bool) !godot.PoolVector2Array {
        if (mbind_get_simple_path == null) {
            mbind_get_simple_path = try api.createMethod("Navigation2D", "get_simple_path");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_start),
            @ptrCast(*const anyopaque, arg_end),
            @ptrCast(*const anyopaque, *arg_optimize),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_simple_path, base, cargs, result);
        return @ptrCast(*godot.PoolVector2Array, @alignCast(@alignOf(&godot.PoolVector2Array), result)).*;
    }

    pub fn navpolyAdd(self: *const Self, arg_mesh: *const godot.NavigationPolygon, arg_xform: *const godot.Transform2D, arg_owner: *const godot.Object) !i32 {
        if (mbind_navpoly_add == null) {
            mbind_navpoly_add = try api.createMethod("Navigation2D", "navpoly_add");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_mesh),
            @ptrCast(*const anyopaque, arg_xform),
            @ptrCast(*const anyopaque, arg_owner),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_navpoly_add, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn navpolyRemove(self: *const Self, arg_id: i32) !void {
        if (mbind_navpoly_remove == null) {
            mbind_navpoly_remove = try api.createMethod("Navigation2D", "navpoly_remove");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_navpoly_remove, base, cargs, result);
    }

    pub fn navpolySetTransform(self: *const Self, arg_id: i32, arg_xform: *const godot.Transform2D) !void {
        if (mbind_navpoly_set_transform == null) {
            mbind_navpoly_set_transform = try api.createMethod("Navigation2D", "navpoly_set_transform");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_id),
            @ptrCast(*const anyopaque, arg_xform),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_navpoly_set_transform, base, cargs, result);
    }
};