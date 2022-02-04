// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Shape = @import("shape.zig").Shape;

// method bindings
var mbind_get_map_data: ?*c_api.godot_method_bind = null;
var mbind_get_map_depth: ?*c_api.godot_method_bind = null;
var mbind_get_map_width: ?*c_api.godot_method_bind = null;
var mbind_set_map_data: ?*c_api.godot_method_bind = null;
var mbind_set_map_depth: ?*c_api.godot_method_bind = null;
var mbind_set_map_width: ?*c_api.godot_method_bind = null;
var mbind_height_map_shape_constructor: ?fn () ?*c_api.godot_object = null;

pub const HeightMapShape = struct {
    const Self = @This();
    const BaseClass = Shape;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_height_map_shape_constructor == null) {
            mbind_height_map_shape_constructor = try api.createConstructor("HeightMapShape");
        }
        return api.createObject(Self, mbind_height_map_shape_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getMapData(self: *const Self) !godot.PoolRealArray {
        if (mbind_get_map_data == null) {
            mbind_get_map_data = try api.createMethod("HeightMapShape", "get_map_data");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_map_data, base, cargs, result);
        return @ptrCast(*godot.PoolRealArray, @alignCast(@alignOf(&godot.PoolRealArray), result)).*;
    }

    pub fn getMapDepth(self: *const Self) !i32 {
        if (mbind_get_map_depth == null) {
            mbind_get_map_depth = try api.createMethod("HeightMapShape", "get_map_depth");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_map_depth, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getMapWidth(self: *const Self) !i32 {
        if (mbind_get_map_width == null) {
            mbind_get_map_width = try api.createMethod("HeightMapShape", "get_map_width");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_map_width, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn setMapData(self: *const Self, arg_data: *const godot.PoolRealArray) !void {
        if (mbind_set_map_data == null) {
            mbind_set_map_data = try api.createMethod("HeightMapShape", "set_map_data");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_data),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_map_data, base, cargs, result);
    }

    pub fn setMapDepth(self: *const Self, arg_height: i32) !void {
        if (mbind_set_map_depth == null) {
            mbind_set_map_depth = try api.createMethod("HeightMapShape", "set_map_depth");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_height),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_map_depth, base, cargs, result);
    }

    pub fn setMapWidth(self: *const Self, arg_width: i32) !void {
        if (mbind_set_map_width == null) {
            mbind_set_map_width = try api.createMethod("HeightMapShape", "set_map_width");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_width),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_map_width, base, cargs, result);
    }
};