// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_cull_mode: ?*c_api.godot_method_bind = null;
var mbind_get_polygon: ?*c_api.godot_method_bind = null;
var mbind_is_closed: ?*c_api.godot_method_bind = null;
var mbind_set_closed: ?*c_api.godot_method_bind = null;
var mbind_set_cull_mode: ?*c_api.godot_method_bind = null;
var mbind_set_polygon: ?*c_api.godot_method_bind = null;
var mbind_occluder_polygon_2d_constructor: ?fn () ?*c_api.godot_object = null;

pub const OccluderPolygon2D = struct {
    const Self = @This();
    pub const BaseClass = godot.Resource;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_occluder_polygon_2d_constructor == null) {
            mbind_occluder_polygon_2d_constructor = try api.createConstructor("OccluderPolygon2D");
        }
        return api.createObject(Self, mbind_occluder_polygon_2d_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getCullMode(self: *const Self) !i32 {
        if (mbind_get_cull_mode == null) {
            mbind_get_cull_mode = try api.createMethod("OccluderPolygon2D", "get_cull_mode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_cull_mode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getPolygon(self: *const Self) !godot.PoolVector2Array {
        if (mbind_get_polygon == null) {
            mbind_get_polygon = try api.createMethod("OccluderPolygon2D", "get_polygon");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_polygon, base, cargs, result);
        return @ptrCast(*godot.PoolVector2Array, @alignCast(@alignOf(&godot.PoolVector2Array), result)).*;
    }

    pub fn isClosed(self: *const Self) !bool {
        if (mbind_is_closed == null) {
            mbind_is_closed = try api.createMethod("OccluderPolygon2D", "is_closed");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_closed, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setClosed(self: *const Self, arg_closed: bool) !void {
        if (mbind_set_closed == null) {
            mbind_set_closed = try api.createMethod("OccluderPolygon2D", "set_closed");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_closed),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_closed, base, cargs, result);
    }

    pub fn setCullMode(self: *const Self, arg_cull_mode: i32) !void {
        if (mbind_set_cull_mode == null) {
            mbind_set_cull_mode = try api.createMethod("OccluderPolygon2D", "set_cull_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_cull_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_cull_mode, base, cargs, result);
    }

    pub fn setPolygon(self: *const Self, arg_polygon: *const godot.PoolVector2Array) !void {
        if (mbind_set_polygon == null) {
            mbind_set_polygon = try api.createMethod("OccluderPolygon2D", "set_polygon");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_polygon),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_polygon, base, cargs, result);
    }
};