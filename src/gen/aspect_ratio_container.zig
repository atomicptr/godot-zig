// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_alignment_horizontal: ?*c_api.godot_method_bind = null;
var mbind_get_alignment_vertical: ?*c_api.godot_method_bind = null;
var mbind_get_ratio: ?*c_api.godot_method_bind = null;
var mbind_get_stretch_mode: ?*c_api.godot_method_bind = null;
var mbind_set_alignment_horizontal: ?*c_api.godot_method_bind = null;
var mbind_set_alignment_vertical: ?*c_api.godot_method_bind = null;
var mbind_set_ratio: ?*c_api.godot_method_bind = null;
var mbind_set_stretch_mode: ?*c_api.godot_method_bind = null;
var mbind_aspect_ratio_container_constructor: ?fn () ?*c_api.godot_object = null;

pub const AspectRatioContainer = struct {
    const Self = @This();
    pub const BaseClass = godot.Container;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_aspect_ratio_container_constructor == null) {
            mbind_aspect_ratio_container_constructor = try api.createConstructor("AspectRatioContainer");
        }
        return api.createObject(Self, mbind_aspect_ratio_container_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getAlignmentHorizontal(self: *const Self) !i32 {
        if (mbind_get_alignment_horizontal == null) {
            mbind_get_alignment_horizontal = try api.createMethod("AspectRatioContainer", "get_alignment_horizontal");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_alignment_horizontal, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getAlignmentVertical(self: *const Self) !i32 {
        if (mbind_get_alignment_vertical == null) {
            mbind_get_alignment_vertical = try api.createMethod("AspectRatioContainer", "get_alignment_vertical");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_alignment_vertical, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getRatio(self: *const Self) !f32 {
        if (mbind_get_ratio == null) {
            mbind_get_ratio = try api.createMethod("AspectRatioContainer", "get_ratio");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_ratio, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getStretchMode(self: *const Self) !i32 {
        if (mbind_get_stretch_mode == null) {
            mbind_get_stretch_mode = try api.createMethod("AspectRatioContainer", "get_stretch_mode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_stretch_mode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn setAlignmentHorizontal(self: *const Self, arg_alignment_horizontal: i32) !void {
        if (mbind_set_alignment_horizontal == null) {
            mbind_set_alignment_horizontal = try api.createMethod("AspectRatioContainer", "set_alignment_horizontal");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_alignment_horizontal),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_alignment_horizontal, base, cargs, result);
    }

    pub fn setAlignmentVertical(self: *const Self, arg_alignment_vertical: i32) !void {
        if (mbind_set_alignment_vertical == null) {
            mbind_set_alignment_vertical = try api.createMethod("AspectRatioContainer", "set_alignment_vertical");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_alignment_vertical),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_alignment_vertical, base, cargs, result);
    }

    pub fn setRatio(self: *const Self, arg_ratio: f32) !void {
        if (mbind_set_ratio == null) {
            mbind_set_ratio = try api.createMethod("AspectRatioContainer", "set_ratio");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_ratio),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_ratio, base, cargs, result);
    }

    pub fn setStretchMode(self: *const Self, arg_stretch_mode: i32) !void {
        if (mbind_set_stretch_mode == null) {
            mbind_set_stretch_mode = try api.createMethod("AspectRatioContainer", "set_stretch_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_stretch_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_stretch_mode, base, cargs, result);
    }
};