// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_add_point: ?*c_api.godot_method_bind = null;
var mbind_bake: ?*c_api.godot_method_bind = null;
var mbind_clean_dupes: ?*c_api.godot_method_bind = null;
var mbind_clear_points: ?*c_api.godot_method_bind = null;
var mbind_get_bake_resolution: ?*c_api.godot_method_bind = null;
var mbind_get_max_value: ?*c_api.godot_method_bind = null;
var mbind_get_min_value: ?*c_api.godot_method_bind = null;
var mbind_get_point_count: ?*c_api.godot_method_bind = null;
var mbind_get_point_left_mode: ?*c_api.godot_method_bind = null;
var mbind_get_point_left_tangent: ?*c_api.godot_method_bind = null;
var mbind_get_point_position: ?*c_api.godot_method_bind = null;
var mbind_get_point_right_mode: ?*c_api.godot_method_bind = null;
var mbind_get_point_right_tangent: ?*c_api.godot_method_bind = null;
var mbind_interpolate: ?*c_api.godot_method_bind = null;
var mbind_interpolate_baked: ?*c_api.godot_method_bind = null;
var mbind_remove_point: ?*c_api.godot_method_bind = null;
var mbind_set_bake_resolution: ?*c_api.godot_method_bind = null;
var mbind_set_max_value: ?*c_api.godot_method_bind = null;
var mbind_set_min_value: ?*c_api.godot_method_bind = null;
var mbind_set_point_left_mode: ?*c_api.godot_method_bind = null;
var mbind_set_point_left_tangent: ?*c_api.godot_method_bind = null;
var mbind_set_point_offset: ?*c_api.godot_method_bind = null;
var mbind_set_point_right_mode: ?*c_api.godot_method_bind = null;
var mbind_set_point_right_tangent: ?*c_api.godot_method_bind = null;
var mbind_set_point_value: ?*c_api.godot_method_bind = null;
var mbind_curve_constructor: ?fn () ?*c_api.godot_object = null;

pub const Curve = struct {
    const Self = @This();
    pub const BaseClass = godot.Resource;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_curve_constructor == null) {
            mbind_curve_constructor = try api.createConstructor("Curve");
        }
        return api.createObject(Self, mbind_curve_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn addPoint(self: *const Self, arg_position: *const godot.Vector2, arg_left_tangent: f32, arg_right_tangent: f32, arg_left_mode: i32, arg_right_mode: i32) !i32 {
        if (mbind_add_point == null) {
            mbind_add_point = try api.createMethod("Curve", "add_point");
        }

        var result: ?*anyopaque = null;
        var args: [5]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_position),
            @ptrCast(*const anyopaque, *arg_left_tangent),
            @ptrCast(*const anyopaque, *arg_right_tangent),
            @ptrCast(*const anyopaque, *arg_left_mode),
            @ptrCast(*const anyopaque, *arg_right_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_point, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn bake(self: *const Self) !void {
        if (mbind_bake == null) {
            mbind_bake = try api.createMethod("Curve", "bake");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_bake, base, cargs, result);
    }

    pub fn cleanDupes(self: *const Self) !void {
        if (mbind_clean_dupes == null) {
            mbind_clean_dupes = try api.createMethod("Curve", "clean_dupes");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_clean_dupes, base, cargs, result);
    }

    pub fn clearPoints(self: *const Self) !void {
        if (mbind_clear_points == null) {
            mbind_clear_points = try api.createMethod("Curve", "clear_points");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_clear_points, base, cargs, result);
    }

    pub fn getBakeResolution(self: *const Self) !i32 {
        if (mbind_get_bake_resolution == null) {
            mbind_get_bake_resolution = try api.createMethod("Curve", "get_bake_resolution");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_bake_resolution, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getMaxValue(self: *const Self) !f32 {
        if (mbind_get_max_value == null) {
            mbind_get_max_value = try api.createMethod("Curve", "get_max_value");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_max_value, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getMinValue(self: *const Self) !f32 {
        if (mbind_get_min_value == null) {
            mbind_get_min_value = try api.createMethod("Curve", "get_min_value");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_min_value, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getPointCount(self: *const Self) !i32 {
        if (mbind_get_point_count == null) {
            mbind_get_point_count = try api.createMethod("Curve", "get_point_count");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_point_count, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getPointLeftMode(self: *const Self, arg_index: i32) !i32 {
        if (mbind_get_point_left_mode == null) {
            mbind_get_point_left_mode = try api.createMethod("Curve", "get_point_left_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_index),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_point_left_mode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getPointLeftTangent(self: *const Self, arg_index: i32) !f32 {
        if (mbind_get_point_left_tangent == null) {
            mbind_get_point_left_tangent = try api.createMethod("Curve", "get_point_left_tangent");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_index),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_point_left_tangent, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getPointPosition(self: *const Self, arg_index: i32) !godot.Vector2 {
        if (mbind_get_point_position == null) {
            mbind_get_point_position = try api.createMethod("Curve", "get_point_position");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_index),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_point_position, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getPointRightMode(self: *const Self, arg_index: i32) !i32 {
        if (mbind_get_point_right_mode == null) {
            mbind_get_point_right_mode = try api.createMethod("Curve", "get_point_right_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_index),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_point_right_mode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getPointRightTangent(self: *const Self, arg_index: i32) !f32 {
        if (mbind_get_point_right_tangent == null) {
            mbind_get_point_right_tangent = try api.createMethod("Curve", "get_point_right_tangent");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_index),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_point_right_tangent, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn interpolate(self: *const Self, arg_offset: f32) !f32 {
        if (mbind_interpolate == null) {
            mbind_interpolate = try api.createMethod("Curve", "interpolate");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_offset),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_interpolate, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn interpolateBaked(self: *const Self, arg_offset: f32) !f32 {
        if (mbind_interpolate_baked == null) {
            mbind_interpolate_baked = try api.createMethod("Curve", "interpolate_baked");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_offset),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_interpolate_baked, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn removePoint(self: *const Self, arg_index: i32) !void {
        if (mbind_remove_point == null) {
            mbind_remove_point = try api.createMethod("Curve", "remove_point");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_index),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_remove_point, base, cargs, result);
    }

    pub fn setBakeResolution(self: *const Self, arg_resolution: i32) !void {
        if (mbind_set_bake_resolution == null) {
            mbind_set_bake_resolution = try api.createMethod("Curve", "set_bake_resolution");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_resolution),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_bake_resolution, base, cargs, result);
    }

    pub fn setMaxValue(self: *const Self, arg_max: f32) !void {
        if (mbind_set_max_value == null) {
            mbind_set_max_value = try api.createMethod("Curve", "set_max_value");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_max),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_max_value, base, cargs, result);
    }

    pub fn setMinValue(self: *const Self, arg_min: f32) !void {
        if (mbind_set_min_value == null) {
            mbind_set_min_value = try api.createMethod("Curve", "set_min_value");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_min),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_min_value, base, cargs, result);
    }

    pub fn setPointLeftMode(self: *const Self, arg_index: i32, arg_mode: i32) !void {
        if (mbind_set_point_left_mode == null) {
            mbind_set_point_left_mode = try api.createMethod("Curve", "set_point_left_mode");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_index),
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_point_left_mode, base, cargs, result);
    }

    pub fn setPointLeftTangent(self: *const Self, arg_index: i32, arg_tangent: f32) !void {
        if (mbind_set_point_left_tangent == null) {
            mbind_set_point_left_tangent = try api.createMethod("Curve", "set_point_left_tangent");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_index),
            @ptrCast(*const anyopaque, *arg_tangent),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_point_left_tangent, base, cargs, result);
    }

    pub fn setPointOffset(self: *const Self, arg_index: i32, arg_offset: f32) !i32 {
        if (mbind_set_point_offset == null) {
            mbind_set_point_offset = try api.createMethod("Curve", "set_point_offset");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_index),
            @ptrCast(*const anyopaque, *arg_offset),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_point_offset, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn setPointRightMode(self: *const Self, arg_index: i32, arg_mode: i32) !void {
        if (mbind_set_point_right_mode == null) {
            mbind_set_point_right_mode = try api.createMethod("Curve", "set_point_right_mode");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_index),
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_point_right_mode, base, cargs, result);
    }

    pub fn setPointRightTangent(self: *const Self, arg_index: i32, arg_tangent: f32) !void {
        if (mbind_set_point_right_tangent == null) {
            mbind_set_point_right_tangent = try api.createMethod("Curve", "set_point_right_tangent");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_index),
            @ptrCast(*const anyopaque, *arg_tangent),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_point_right_tangent, base, cargs, result);
    }

    pub fn setPointValue(self: *const Self, arg_index: i32, arg_y: f32) !void {
        if (mbind_set_point_value == null) {
            mbind_set_point_value = try api.createMethod("Curve", "set_point_value");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_index),
            @ptrCast(*const anyopaque, *arg_y),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_point_value, base, cargs, result);
    }
};