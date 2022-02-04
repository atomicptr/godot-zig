// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Spatial = @import("spatial.zig").Spatial;

// method bindings
var mbind_get_points: ?*c_api.godot_method_bind = null;
var mbind_get_room_simplify: ?*c_api.godot_method_bind = null;
var mbind_get_use_default_simplify: ?*c_api.godot_method_bind = null;
var mbind_set_point: ?*c_api.godot_method_bind = null;
var mbind_set_points: ?*c_api.godot_method_bind = null;
var mbind_set_room_simplify: ?*c_api.godot_method_bind = null;
var mbind_set_use_default_simplify: ?*c_api.godot_method_bind = null;
var mbind_room_constructor: ?fn () ?*c_api.godot_object = null;

pub const Room = struct {
    const Self = @This();
    const BaseClass = Spatial;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_room_constructor == null) {
            mbind_room_constructor = try api.createConstructor("Room");
        }
        return api.createObject(Self, mbind_room_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getPoints(self: *const Self) !godot.PoolVector3Array {
        if (mbind_get_points == null) {
            mbind_get_points = try api.createMethod("Room", "get_points");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_points, base, cargs, result);
        return @ptrCast(*godot.PoolVector3Array, @alignCast(@alignOf(&godot.PoolVector3Array), result)).*;
    }

    pub fn getRoomSimplify(self: *const Self) !f32 {
        if (mbind_get_room_simplify == null) {
            mbind_get_room_simplify = try api.createMethod("Room", "get_room_simplify");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_room_simplify, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getUseDefaultSimplify(self: *const Self) !bool {
        if (mbind_get_use_default_simplify == null) {
            mbind_get_use_default_simplify = try api.createMethod("Room", "get_use_default_simplify");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_use_default_simplify, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setPoint(self: *const Self, arg_index: i32, arg_position: *const godot.Vector3) !void {
        if (mbind_set_point == null) {
            mbind_set_point = try api.createMethod("Room", "set_point");
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

    pub fn setPoints(self: *const Self, arg_points: *const godot.PoolVector3Array) !void {
        if (mbind_set_points == null) {
            mbind_set_points = try api.createMethod("Room", "set_points");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_points),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_points, base, cargs, result);
    }

    pub fn setRoomSimplify(self: *const Self, arg_p_value: f32) !void {
        if (mbind_set_room_simplify == null) {
            mbind_set_room_simplify = try api.createMethod("Room", "set_room_simplify");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_p_value),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_room_simplify, base, cargs, result);
    }

    pub fn setUseDefaultSimplify(self: *const Self, arg_p_use: bool) !void {
        if (mbind_set_use_default_simplify == null) {
            mbind_set_use_default_simplify = try api.createMethod("Room", "set_use_default_simplify");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_p_use),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_use_default_simplify, base, cargs, result);
    }
};