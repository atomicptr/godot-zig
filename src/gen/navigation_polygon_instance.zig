// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Node2D = @import("node_2d.zig").Node2D;

// method bindings
var mbind_get_navigation_polygon: ?*c_api.godot_method_bind = null;
var mbind_is_enabled: ?*c_api.godot_method_bind = null;
var mbind_set_enabled: ?*c_api.godot_method_bind = null;
var mbind_set_navigation_polygon: ?*c_api.godot_method_bind = null;
var mbind_navigation_polygon_instance_constructor: ?fn () ?*c_api.godot_object = null;

pub const NavigationPolygonInstance = struct {
    const Self = @This();
    const BaseClass = Node2D;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_navigation_polygon_instance_constructor == null) {
            mbind_navigation_polygon_instance_constructor = try api.createConstructor("NavigationPolygonInstance");
        }
        return api.createObject(Self, mbind_navigation_polygon_instance_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getNavigationPolygon(self: *const Self) !godot.NavigationPolygon {
        if (mbind_get_navigation_polygon == null) {
            mbind_get_navigation_polygon = try api.createMethod("NavigationPolygonInstance", "get_navigation_polygon");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_navigation_polygon, base, cargs, result);
        return @ptrCast(*godot.NavigationPolygon, @alignCast(@alignOf(&godot.NavigationPolygon), result)).*;
    }

    pub fn isEnabled(self: *const Self) !bool {
        if (mbind_is_enabled == null) {
            mbind_is_enabled = try api.createMethod("NavigationPolygonInstance", "is_enabled");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_enabled, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setEnabled(self: *const Self, arg_enabled: bool) !void {
        if (mbind_set_enabled == null) {
            mbind_set_enabled = try api.createMethod("NavigationPolygonInstance", "set_enabled");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enabled),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_enabled, base, cargs, result);
    }

    pub fn setNavigationPolygon(self: *const Self, arg_navpoly: *const godot.NavigationPolygon) !void {
        if (mbind_set_navigation_polygon == null) {
            mbind_set_navigation_polygon = try api.createMethod("NavigationPolygonInstance", "set_navigation_polygon");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_navpoly),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_navigation_polygon, base, cargs, result);
    }
};