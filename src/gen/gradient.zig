// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_add_point: ?*c_api.godot_method_bind = null;
var mbind_get_color: ?*c_api.godot_method_bind = null;
var mbind_get_colors: ?*c_api.godot_method_bind = null;
var mbind_get_offset: ?*c_api.godot_method_bind = null;
var mbind_get_offsets: ?*c_api.godot_method_bind = null;
var mbind_get_point_count: ?*c_api.godot_method_bind = null;
var mbind_interpolate: ?*c_api.godot_method_bind = null;
var mbind_remove_point: ?*c_api.godot_method_bind = null;
var mbind_set_color: ?*c_api.godot_method_bind = null;
var mbind_set_colors: ?*c_api.godot_method_bind = null;
var mbind_set_offset: ?*c_api.godot_method_bind = null;
var mbind_set_offsets: ?*c_api.godot_method_bind = null;
var mbind_gradient_constructor: ?fn () ?*c_api.godot_object = null;

pub const Gradient = struct {
    const Self = @This();
    pub const BaseClass = godot.Resource;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_gradient_constructor == null) {
            mbind_gradient_constructor = try api.createConstructor("Gradient");
        }
        return api.createObject(Self, mbind_gradient_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn addPoint(self: *const Self, arg_offset: f32, arg_color: *const godot.Color) !void {
        if (mbind_add_point == null) {
            mbind_add_point = try api.createMethod("Gradient", "add_point");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_offset),
            @ptrCast(*const anyopaque, arg_color),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_point, base, cargs, result);
    }

    pub fn getColor(self: *const Self, arg_point: i32) !godot.Color {
        if (mbind_get_color == null) {
            mbind_get_color = try api.createMethod("Gradient", "get_color");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_point),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_color, base, cargs, result);
        return @ptrCast(*godot.Color, @alignCast(@alignOf(&godot.Color), result)).*;
    }

    pub fn getColors(self: *const Self) !godot.PoolColorArray {
        if (mbind_get_colors == null) {
            mbind_get_colors = try api.createMethod("Gradient", "get_colors");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_colors, base, cargs, result);
        return @ptrCast(*godot.PoolColorArray, @alignCast(@alignOf(&godot.PoolColorArray), result)).*;
    }

    pub fn getOffset(self: *const Self, arg_point: i32) !f32 {
        if (mbind_get_offset == null) {
            mbind_get_offset = try api.createMethod("Gradient", "get_offset");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_point),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_offset, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getOffsets(self: *const Self) !godot.PoolRealArray {
        if (mbind_get_offsets == null) {
            mbind_get_offsets = try api.createMethod("Gradient", "get_offsets");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_offsets, base, cargs, result);
        return @ptrCast(*godot.PoolRealArray, @alignCast(@alignOf(&godot.PoolRealArray), result)).*;
    }

    pub fn getPointCount(self: *const Self) !i32 {
        if (mbind_get_point_count == null) {
            mbind_get_point_count = try api.createMethod("Gradient", "get_point_count");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_point_count, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn interpolate(self: *const Self, arg_offset: f32) !godot.Color {
        if (mbind_interpolate == null) {
            mbind_interpolate = try api.createMethod("Gradient", "interpolate");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_offset),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_interpolate, base, cargs, result);
        return @ptrCast(*godot.Color, @alignCast(@alignOf(&godot.Color), result)).*;
    }

    pub fn removePoint(self: *const Self, arg_point: i32) !void {
        if (mbind_remove_point == null) {
            mbind_remove_point = try api.createMethod("Gradient", "remove_point");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_point),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_remove_point, base, cargs, result);
    }

    pub fn setColor(self: *const Self, arg_point: i32, arg_color: *const godot.Color) !void {
        if (mbind_set_color == null) {
            mbind_set_color = try api.createMethod("Gradient", "set_color");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_point),
            @ptrCast(*const anyopaque, arg_color),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_color, base, cargs, result);
    }

    pub fn setColors(self: *const Self, arg_colors: *const godot.PoolColorArray) !void {
        if (mbind_set_colors == null) {
            mbind_set_colors = try api.createMethod("Gradient", "set_colors");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_colors),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_colors, base, cargs, result);
    }

    pub fn setOffset(self: *const Self, arg_point: i32, arg_offset: f32) !void {
        if (mbind_set_offset == null) {
            mbind_set_offset = try api.createMethod("Gradient", "set_offset");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_point),
            @ptrCast(*const anyopaque, *arg_offset),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_offset, base, cargs, result);
    }

    pub fn setOffsets(self: *const Self, arg_offsets: *const godot.PoolRealArray) !void {
        if (mbind_set_offsets == null) {
            mbind_set_offsets = try api.createMethod("Gradient", "set_offsets");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_offsets),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_offsets, base, cargs, result);
    }
};