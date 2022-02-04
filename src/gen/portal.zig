// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Spatial = @import("spatial.zig").Spatial;

// method bindings
var mbind_get_linked_room: ?*c_api.godot_method_bind = null;
var mbind_get_points: ?*c_api.godot_method_bind = null;
var mbind_get_portal_active: ?*c_api.godot_method_bind = null;
var mbind_get_portal_margin: ?*c_api.godot_method_bind = null;
var mbind_get_use_default_margin: ?*c_api.godot_method_bind = null;
var mbind_is_two_way: ?*c_api.godot_method_bind = null;
var mbind_set_linked_room: ?*c_api.godot_method_bind = null;
var mbind_set_point: ?*c_api.godot_method_bind = null;
var mbind_set_points: ?*c_api.godot_method_bind = null;
var mbind_set_portal_active: ?*c_api.godot_method_bind = null;
var mbind_set_portal_margin: ?*c_api.godot_method_bind = null;
var mbind_set_two_way: ?*c_api.godot_method_bind = null;
var mbind_set_use_default_margin: ?*c_api.godot_method_bind = null;
var mbind_portal_constructor: ?fn () ?*c_api.godot_object = null;

pub const Portal = struct {
    const Self = @This();
    const BaseClass = Spatial;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_portal_constructor == null) {
            mbind_portal_constructor = try api.createConstructor("Portal");
        }
        return api.createObject(Self, mbind_portal_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getLinkedRoom(self: *const Self) !godot.NodePath {
        if (mbind_get_linked_room == null) {
            mbind_get_linked_room = try api.createMethod("Portal", "get_linked_room");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_linked_room, base, cargs, result);
        return @ptrCast(*godot.NodePath, @alignCast(@alignOf(&godot.NodePath), result)).*;
    }

    pub fn getPoints(self: *const Self) !godot.PoolVector2Array {
        if (mbind_get_points == null) {
            mbind_get_points = try api.createMethod("Portal", "get_points");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_points, base, cargs, result);
        return @ptrCast(*godot.PoolVector2Array, @alignCast(@alignOf(&godot.PoolVector2Array), result)).*;
    }

    pub fn getPortalActive(self: *const Self) !bool {
        if (mbind_get_portal_active == null) {
            mbind_get_portal_active = try api.createMethod("Portal", "get_portal_active");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_portal_active, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getPortalMargin(self: *const Self) !f32 {
        if (mbind_get_portal_margin == null) {
            mbind_get_portal_margin = try api.createMethod("Portal", "get_portal_margin");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_portal_margin, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getUseDefaultMargin(self: *const Self) !bool {
        if (mbind_get_use_default_margin == null) {
            mbind_get_use_default_margin = try api.createMethod("Portal", "get_use_default_margin");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_use_default_margin, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isTwoWay(self: *const Self) !bool {
        if (mbind_is_two_way == null) {
            mbind_is_two_way = try api.createMethod("Portal", "is_two_way");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_two_way, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setLinkedRoom(self: *const Self, arg_p_room: *const godot.NodePath) !void {
        if (mbind_set_linked_room == null) {
            mbind_set_linked_room = try api.createMethod("Portal", "set_linked_room");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_p_room),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_linked_room, base, cargs, result);
    }

    pub fn setPoint(self: *const Self, arg_index: i32, arg_position: *const godot.Vector2) !void {
        if (mbind_set_point == null) {
            mbind_set_point = try api.createMethod("Portal", "set_point");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_index),
            @ptrCast(*const anyopaque, arg_position),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_point, base, cargs, result);
    }

    pub fn setPoints(self: *const Self, arg_points: *const godot.PoolVector2Array) !void {
        if (mbind_set_points == null) {
            mbind_set_points = try api.createMethod("Portal", "set_points");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_points),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_points, base, cargs, result);
    }

    pub fn setPortalActive(self: *const Self, arg_p_active: bool) !void {
        if (mbind_set_portal_active == null) {
            mbind_set_portal_active = try api.createMethod("Portal", "set_portal_active");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_p_active),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_portal_active, base, cargs, result);
    }

    pub fn setPortalMargin(self: *const Self, arg_p_margin: f32) !void {
        if (mbind_set_portal_margin == null) {
            mbind_set_portal_margin = try api.createMethod("Portal", "set_portal_margin");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_p_margin),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_portal_margin, base, cargs, result);
    }

    pub fn setTwoWay(self: *const Self, arg_p_two_way: bool) !void {
        if (mbind_set_two_way == null) {
            mbind_set_two_way = try api.createMethod("Portal", "set_two_way");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_p_two_way),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_two_way, base, cargs, result);
    }

    pub fn setUseDefaultMargin(self: *const Self, arg_p_use: bool) !void {
        if (mbind_set_use_default_margin == null) {
            mbind_set_use_default_margin = try api.createMethod("Portal", "set_use_default_margin");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_p_use),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_use_default_margin, base, cargs, result);
    }
};