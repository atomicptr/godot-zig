// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_broadcast: ?*c_api.godot_method_bind = null;
var mbind_get_dispatch_mode: ?*c_api.godot_method_bind = null;
var mbind_get_grid_radius: ?*c_api.godot_method_bind = null;
var mbind_get_group_name: ?*c_api.godot_method_bind = null;
var mbind_set_dispatch_mode: ?*c_api.godot_method_bind = null;
var mbind_set_grid_radius: ?*c_api.godot_method_bind = null;
var mbind_set_group_name: ?*c_api.godot_method_bind = null;
var mbind_proximity_group_constructor: ?fn () ?*c_api.godot_object = null;

pub const ProximityGroup = struct {
    const Self = @This();
    pub const BaseClass = godot.Spatial;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_proximity_group_constructor == null) {
            mbind_proximity_group_constructor = try api.createConstructor("ProximityGroup");
        }
        return api.createObject(Self, mbind_proximity_group_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn broadcast(self: *const Self, arg_method: *const godot.String, arg_parameters: *const godot.Variant) !void {
        if (mbind_broadcast == null) {
            mbind_broadcast = try api.createMethod("ProximityGroup", "broadcast");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_method),
            @ptrCast(*const anyopaque, arg_parameters),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_broadcast, base, cargs, result);
    }

    pub fn getDispatchMode(self: *const Self) !i32 {
        if (mbind_get_dispatch_mode == null) {
            mbind_get_dispatch_mode = try api.createMethod("ProximityGroup", "get_dispatch_mode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_dispatch_mode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getGridRadius(self: *const Self) !godot.Vector3 {
        if (mbind_get_grid_radius == null) {
            mbind_get_grid_radius = try api.createMethod("ProximityGroup", "get_grid_radius");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_grid_radius, base, cargs, result);
        return @ptrCast(*godot.Vector3, @alignCast(@alignOf(&godot.Vector3), result)).*;
    }

    pub fn getGroupName(self: *const Self) !godot.String {
        if (mbind_get_group_name == null) {
            mbind_get_group_name = try api.createMethod("ProximityGroup", "get_group_name");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_group_name, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn setDispatchMode(self: *const Self, arg_mode: i32) !void {
        if (mbind_set_dispatch_mode == null) {
            mbind_set_dispatch_mode = try api.createMethod("ProximityGroup", "set_dispatch_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_dispatch_mode, base, cargs, result);
    }

    pub fn setGridRadius(self: *const Self, arg_radius: *const godot.Vector3) !void {
        if (mbind_set_grid_radius == null) {
            mbind_set_grid_radius = try api.createMethod("ProximityGroup", "set_grid_radius");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_radius),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_grid_radius, base, cargs, result);
    }

    pub fn setGroupName(self: *const Self, arg_name: *const godot.String) !void {
        if (mbind_set_group_name == null) {
            mbind_set_group_name = try api.createMethod("ProximityGroup", "set_group_name");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_group_name, base, cargs, result);
    }
};