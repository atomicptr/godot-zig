// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_force_update_cache: ?*c_api.godot_method_bind = null;
var mbind_get_remote_node: ?*c_api.godot_method_bind = null;
var mbind_get_update_position: ?*c_api.godot_method_bind = null;
var mbind_get_update_rotation: ?*c_api.godot_method_bind = null;
var mbind_get_update_scale: ?*c_api.godot_method_bind = null;
var mbind_get_use_global_coordinates: ?*c_api.godot_method_bind = null;
var mbind_set_remote_node: ?*c_api.godot_method_bind = null;
var mbind_set_update_position: ?*c_api.godot_method_bind = null;
var mbind_set_update_rotation: ?*c_api.godot_method_bind = null;
var mbind_set_update_scale: ?*c_api.godot_method_bind = null;
var mbind_set_use_global_coordinates: ?*c_api.godot_method_bind = null;
var mbind_remote_transform_2d_constructor: ?fn () ?*c_api.godot_object = null;

pub const RemoteTransform2D = struct {
    const Self = @This();
    pub const BaseClass = godot.Node2D;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_remote_transform_2d_constructor == null) {
            mbind_remote_transform_2d_constructor = try api.createConstructor("RemoteTransform2D");
        }
        return api.createObject(Self, mbind_remote_transform_2d_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn forceUpdateCache(self: *const Self) !void {
        if (mbind_force_update_cache == null) {
            mbind_force_update_cache = try api.createMethod("RemoteTransform2D", "force_update_cache");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_force_update_cache, base, cargs, result);
    }

    pub fn getRemoteNode(self: *const Self) !godot.NodePath {
        if (mbind_get_remote_node == null) {
            mbind_get_remote_node = try api.createMethod("RemoteTransform2D", "get_remote_node");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_remote_node, base, cargs, result);
        return @ptrCast(*godot.NodePath, @alignCast(@alignOf(&godot.NodePath), result)).*;
    }

    pub fn getUpdatePosition(self: *const Self) !bool {
        if (mbind_get_update_position == null) {
            mbind_get_update_position = try api.createMethod("RemoteTransform2D", "get_update_position");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_update_position, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getUpdateRotation(self: *const Self) !bool {
        if (mbind_get_update_rotation == null) {
            mbind_get_update_rotation = try api.createMethod("RemoteTransform2D", "get_update_rotation");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_update_rotation, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getUpdateScale(self: *const Self) !bool {
        if (mbind_get_update_scale == null) {
            mbind_get_update_scale = try api.createMethod("RemoteTransform2D", "get_update_scale");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_update_scale, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getUseGlobalCoordinates(self: *const Self) !bool {
        if (mbind_get_use_global_coordinates == null) {
            mbind_get_use_global_coordinates = try api.createMethod("RemoteTransform2D", "get_use_global_coordinates");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_use_global_coordinates, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setRemoteNode(self: *const Self, arg_path: *const godot.NodePath) !void {
        if (mbind_set_remote_node == null) {
            mbind_set_remote_node = try api.createMethod("RemoteTransform2D", "set_remote_node");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_path),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_remote_node, base, cargs, result);
    }

    pub fn setUpdatePosition(self: *const Self, arg_update_remote_position: bool) !void {
        if (mbind_set_update_position == null) {
            mbind_set_update_position = try api.createMethod("RemoteTransform2D", "set_update_position");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_update_remote_position),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_update_position, base, cargs, result);
    }

    pub fn setUpdateRotation(self: *const Self, arg_update_remote_rotation: bool) !void {
        if (mbind_set_update_rotation == null) {
            mbind_set_update_rotation = try api.createMethod("RemoteTransform2D", "set_update_rotation");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_update_remote_rotation),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_update_rotation, base, cargs, result);
    }

    pub fn setUpdateScale(self: *const Self, arg_update_remote_scale: bool) !void {
        if (mbind_set_update_scale == null) {
            mbind_set_update_scale = try api.createMethod("RemoteTransform2D", "set_update_scale");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_update_remote_scale),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_update_scale, base, cargs, result);
    }

    pub fn setUseGlobalCoordinates(self: *const Self, arg_use_global_coordinates: bool) !void {
        if (mbind_set_use_global_coordinates == null) {
            mbind_set_use_global_coordinates = try api.createMethod("RemoteTransform2D", "set_use_global_coordinates");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_use_global_coordinates),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_use_global_coordinates, base, cargs, result);
    }
};