// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_add_point: ?*c_api.godot_method_bind = null;
var mbind_are_points_connected: ?*c_api.godot_method_bind = null;
var mbind_clear: ?*c_api.godot_method_bind = null;
var mbind_connect_points: ?*c_api.godot_method_bind = null;
var mbind_disconnect_points: ?*c_api.godot_method_bind = null;
var mbind_get_available_point_id: ?*c_api.godot_method_bind = null;
var mbind_get_closest_point: ?*c_api.godot_method_bind = null;
var mbind_get_closest_position_in_segment: ?*c_api.godot_method_bind = null;
var mbind_get_id_path: ?*c_api.godot_method_bind = null;
var mbind_get_point_capacity: ?*c_api.godot_method_bind = null;
var mbind_get_point_connections: ?*c_api.godot_method_bind = null;
var mbind_get_point_count: ?*c_api.godot_method_bind = null;
var mbind_get_point_path: ?*c_api.godot_method_bind = null;
var mbind_get_point_position: ?*c_api.godot_method_bind = null;
var mbind_get_point_weight_scale: ?*c_api.godot_method_bind = null;
var mbind_get_points: ?*c_api.godot_method_bind = null;
var mbind_has_point: ?*c_api.godot_method_bind = null;
var mbind_is_point_disabled: ?*c_api.godot_method_bind = null;
var mbind_remove_point: ?*c_api.godot_method_bind = null;
var mbind_reserve_space: ?*c_api.godot_method_bind = null;
var mbind_set_point_disabled: ?*c_api.godot_method_bind = null;
var mbind_set_point_position: ?*c_api.godot_method_bind = null;
var mbind_set_point_weight_scale: ?*c_api.godot_method_bind = null;
var mbind_astar_2d_constructor: ?fn () ?*c_api.godot_object = null;

pub const AStar2D = struct {
    const Self = @This();
    pub const BaseClass = godot.Reference;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_astar_2d_constructor == null) {
            mbind_astar_2d_constructor = try api.createConstructor("AStar2D");
        }
        return api.createObject(Self, mbind_astar_2d_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn addPoint(self: *const Self, arg_id: i32, arg_position: *const godot.Vector2, arg_weight_scale: f32) !void {
        if (mbind_add_point == null) {
            mbind_add_point = try api.createMethod("AStar2D", "add_point");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_id),
            @ptrCast(*const anyopaque, arg_position),
            @ptrCast(*const anyopaque, *arg_weight_scale),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_point, base, cargs, result);
    }

    pub fn arePointsConnected(self: *const Self, arg_id: i32, arg_to_id: i32) !bool {
        if (mbind_are_points_connected == null) {
            mbind_are_points_connected = try api.createMethod("AStar2D", "are_points_connected");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_id),
            @ptrCast(*const anyopaque, *arg_to_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_are_points_connected, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn clear(self: *const Self) !void {
        if (mbind_clear == null) {
            mbind_clear = try api.createMethod("AStar2D", "clear");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_clear, base, cargs, result);
    }

    pub fn connectPoints(self: *const Self, arg_id: i32, arg_to_id: i32, arg_bidirectional: bool) !void {
        if (mbind_connect_points == null) {
            mbind_connect_points = try api.createMethod("AStar2D", "connect_points");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_id),
            @ptrCast(*const anyopaque, *arg_to_id),
            @ptrCast(*const anyopaque, *arg_bidirectional),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_connect_points, base, cargs, result);
    }

    pub fn disconnectPoints(self: *const Self, arg_id: i32, arg_to_id: i32) !void {
        if (mbind_disconnect_points == null) {
            mbind_disconnect_points = try api.createMethod("AStar2D", "disconnect_points");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_id),
            @ptrCast(*const anyopaque, *arg_to_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_disconnect_points, base, cargs, result);
    }

    pub fn getAvailablePointId(self: *const Self) !i32 {
        if (mbind_get_available_point_id == null) {
            mbind_get_available_point_id = try api.createMethod("AStar2D", "get_available_point_id");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_available_point_id, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getClosestPoint(self: *const Self, arg_to_position: *const godot.Vector2, arg_include_disabled: bool) !i32 {
        if (mbind_get_closest_point == null) {
            mbind_get_closest_point = try api.createMethod("AStar2D", "get_closest_point");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_to_position),
            @ptrCast(*const anyopaque, *arg_include_disabled),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_closest_point, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getClosestPositionInSegment(self: *const Self, arg_to_position: *const godot.Vector2) !godot.Vector2 {
        if (mbind_get_closest_position_in_segment == null) {
            mbind_get_closest_position_in_segment = try api.createMethod("AStar2D", "get_closest_position_in_segment");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_to_position),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_closest_position_in_segment, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getIdPath(self: *const Self, arg_from_id: i32, arg_to_id: i32) !godot.PoolIntArray {
        if (mbind_get_id_path == null) {
            mbind_get_id_path = try api.createMethod("AStar2D", "get_id_path");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_from_id),
            @ptrCast(*const anyopaque, *arg_to_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_id_path, base, cargs, result);
        return @ptrCast(*godot.PoolIntArray, @alignCast(@alignOf(&godot.PoolIntArray), result)).*;
    }

    pub fn getPointCapacity(self: *const Self) !i32 {
        if (mbind_get_point_capacity == null) {
            mbind_get_point_capacity = try api.createMethod("AStar2D", "get_point_capacity");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_point_capacity, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getPointConnections(self: *const Self, arg_id: i32) !godot.PoolIntArray {
        if (mbind_get_point_connections == null) {
            mbind_get_point_connections = try api.createMethod("AStar2D", "get_point_connections");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_point_connections, base, cargs, result);
        return @ptrCast(*godot.PoolIntArray, @alignCast(@alignOf(&godot.PoolIntArray), result)).*;
    }

    pub fn getPointCount(self: *const Self) !i32 {
        if (mbind_get_point_count == null) {
            mbind_get_point_count = try api.createMethod("AStar2D", "get_point_count");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_point_count, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getPointPath(self: *const Self, arg_from_id: i32, arg_to_id: i32) !godot.PoolVector2Array {
        if (mbind_get_point_path == null) {
            mbind_get_point_path = try api.createMethod("AStar2D", "get_point_path");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_from_id),
            @ptrCast(*const anyopaque, *arg_to_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_point_path, base, cargs, result);
        return @ptrCast(*godot.PoolVector2Array, @alignCast(@alignOf(&godot.PoolVector2Array), result)).*;
    }

    pub fn getPointPosition(self: *const Self, arg_id: i32) !godot.Vector2 {
        if (mbind_get_point_position == null) {
            mbind_get_point_position = try api.createMethod("AStar2D", "get_point_position");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_point_position, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getPointWeightScale(self: *const Self, arg_id: i32) !f32 {
        if (mbind_get_point_weight_scale == null) {
            mbind_get_point_weight_scale = try api.createMethod("AStar2D", "get_point_weight_scale");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_point_weight_scale, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getPoints(self: *const Self) !godot.Array {
        if (mbind_get_points == null) {
            mbind_get_points = try api.createMethod("AStar2D", "get_points");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_points, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn hasPoint(self: *const Self, arg_id: i32) !bool {
        if (mbind_has_point == null) {
            mbind_has_point = try api.createMethod("AStar2D", "has_point");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_has_point, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isPointDisabled(self: *const Self, arg_id: i32) !bool {
        if (mbind_is_point_disabled == null) {
            mbind_is_point_disabled = try api.createMethod("AStar2D", "is_point_disabled");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_point_disabled, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn removePoint(self: *const Self, arg_id: i32) !void {
        if (mbind_remove_point == null) {
            mbind_remove_point = try api.createMethod("AStar2D", "remove_point");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_remove_point, base, cargs, result);
    }

    pub fn reserveSpace(self: *const Self, arg_num_nodes: i32) !void {
        if (mbind_reserve_space == null) {
            mbind_reserve_space = try api.createMethod("AStar2D", "reserve_space");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_num_nodes),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_reserve_space, base, cargs, result);
    }

    pub fn setPointDisabled(self: *const Self, arg_id: i32, arg_disabled: bool) !void {
        if (mbind_set_point_disabled == null) {
            mbind_set_point_disabled = try api.createMethod("AStar2D", "set_point_disabled");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_id),
            @ptrCast(*const anyopaque, *arg_disabled),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_point_disabled, base, cargs, result);
    }

    pub fn setPointPosition(self: *const Self, arg_id: i32, arg_position: *const godot.Vector2) !void {
        if (mbind_set_point_position == null) {
            mbind_set_point_position = try api.createMethod("AStar2D", "set_point_position");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_id),
            @ptrCast(*const anyopaque, arg_position),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_point_position, base, cargs, result);
    }

    pub fn setPointWeightScale(self: *const Self, arg_id: i32, arg_weight_scale: f32) !void {
        if (mbind_set_point_weight_scale == null) {
            mbind_set_point_weight_scale = try api.createMethod("AStar2D", "set_point_weight_scale");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_id),
            @ptrCast(*const anyopaque, *arg_weight_scale),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_point_weight_scale, base, cargs, result);
    }
};