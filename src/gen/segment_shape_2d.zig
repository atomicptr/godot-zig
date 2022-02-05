// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Shape2D = @import("shape_2d.zig").Shape2D;

// method bindings
var mbind_get_a: ?*c_api.godot_method_bind = null;
var mbind_get_b: ?*c_api.godot_method_bind = null;
var mbind_set_a: ?*c_api.godot_method_bind = null;
var mbind_set_b: ?*c_api.godot_method_bind = null;
var mbind_segment_shape_2d_constructor: ?fn () ?*c_api.godot_object = null;

pub const SegmentShape2D = struct {
    const Self = @This();
    const BaseClass = Shape2D;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_segment_shape_2d_constructor == null) {
            mbind_segment_shape_2d_constructor = try api.createConstructor("SegmentShape2D");
        }
        return api.createObject(Self, mbind_segment_shape_2d_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getA(self: *const Self) !godot.Vector2 {
        if (mbind_get_a == null) {
            mbind_get_a = try api.createMethod("SegmentShape2D", "get_a");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_a, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getB(self: *const Self) !godot.Vector2 {
        if (mbind_get_b == null) {
            mbind_get_b = try api.createMethod("SegmentShape2D", "get_b");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_b, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn setA(self: *const Self, arg_a: *const godot.Vector2) !void {
        if (mbind_set_a == null) {
            mbind_set_a = try api.createMethod("SegmentShape2D", "set_a");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_a),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_a, base, cargs, result);
    }

    pub fn setB(self: *const Self, arg_b: *const godot.Vector2) !void {
        if (mbind_set_b == null) {
            mbind_set_b = try api.createMethod("SegmentShape2D", "set_b");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_b),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_b, base, cargs, result);
    }
};