// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_length: ?*c_api.godot_method_bind = null;
var mbind_get_slips_on_slope: ?*c_api.godot_method_bind = null;
var mbind_set_length: ?*c_api.godot_method_bind = null;
var mbind_set_slips_on_slope: ?*c_api.godot_method_bind = null;
var mbind_ray_shape_constructor: ?fn () ?*c_api.godot_object = null;

pub const RayShape = struct {
    const Self = @This();
    pub const BaseClass = godot.Shape;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_ray_shape_constructor == null) {
            mbind_ray_shape_constructor = try api.createConstructor("RayShape");
        }
        return api.createObject(Self, mbind_ray_shape_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getLength(self: *const Self) !f32 {
        if (mbind_get_length == null) {
            mbind_get_length = try api.createMethod("RayShape", "get_length");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_length, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getSlipsOnSlope(self: *const Self) !bool {
        if (mbind_get_slips_on_slope == null) {
            mbind_get_slips_on_slope = try api.createMethod("RayShape", "get_slips_on_slope");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_slips_on_slope, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setLength(self: *const Self, arg_length: f32) !void {
        if (mbind_set_length == null) {
            mbind_set_length = try api.createMethod("RayShape", "set_length");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_length),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_length, base, cargs, result);
    }

    pub fn setSlipsOnSlope(self: *const Self, arg_active: bool) !void {
        if (mbind_set_slips_on_slope == null) {
            mbind_set_slips_on_slope = try api.createMethod("RayShape", "set_slips_on_slope");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_active),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_slips_on_slope, base, cargs, result);
    }
};