// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_cubic_interpolation: ?*c_api.godot_method_bind = null;
var mbind_get_h_offset: ?*c_api.godot_method_bind = null;
var mbind_get_offset: ?*c_api.godot_method_bind = null;
var mbind_get_rotation_mode: ?*c_api.godot_method_bind = null;
var mbind_get_unit_offset: ?*c_api.godot_method_bind = null;
var mbind_get_v_offset: ?*c_api.godot_method_bind = null;
var mbind_has_loop: ?*c_api.godot_method_bind = null;
var mbind_set_cubic_interpolation: ?*c_api.godot_method_bind = null;
var mbind_set_h_offset: ?*c_api.godot_method_bind = null;
var mbind_set_loop: ?*c_api.godot_method_bind = null;
var mbind_set_offset: ?*c_api.godot_method_bind = null;
var mbind_set_rotation_mode: ?*c_api.godot_method_bind = null;
var mbind_set_unit_offset: ?*c_api.godot_method_bind = null;
var mbind_set_v_offset: ?*c_api.godot_method_bind = null;
var mbind_path_follow_constructor: ?fn () ?*c_api.godot_object = null;

pub const PathFollow = struct {
    const Self = @This();
    pub const BaseClass = godot.Spatial;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_path_follow_constructor == null) {
            mbind_path_follow_constructor = try api.createConstructor("PathFollow");
        }
        return api.createObject(Self, mbind_path_follow_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getCubicInterpolation(self: *const Self) !bool {
        if (mbind_get_cubic_interpolation == null) {
            mbind_get_cubic_interpolation = try api.createMethod("PathFollow", "get_cubic_interpolation");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_cubic_interpolation, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getHOffset(self: *const Self) !f32 {
        if (mbind_get_h_offset == null) {
            mbind_get_h_offset = try api.createMethod("PathFollow", "get_h_offset");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_h_offset, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getOffset(self: *const Self) !f32 {
        if (mbind_get_offset == null) {
            mbind_get_offset = try api.createMethod("PathFollow", "get_offset");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_offset, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getRotationMode(self: *const Self) !i32 {
        if (mbind_get_rotation_mode == null) {
            mbind_get_rotation_mode = try api.createMethod("PathFollow", "get_rotation_mode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_rotation_mode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getUnitOffset(self: *const Self) !f32 {
        if (mbind_get_unit_offset == null) {
            mbind_get_unit_offset = try api.createMethod("PathFollow", "get_unit_offset");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_unit_offset, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getVOffset(self: *const Self) !f32 {
        if (mbind_get_v_offset == null) {
            mbind_get_v_offset = try api.createMethod("PathFollow", "get_v_offset");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_v_offset, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn hasLoop(self: *const Self) !bool {
        if (mbind_has_loop == null) {
            mbind_has_loop = try api.createMethod("PathFollow", "has_loop");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_has_loop, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setCubicInterpolation(self: *const Self, arg_enable: bool) !void {
        if (mbind_set_cubic_interpolation == null) {
            mbind_set_cubic_interpolation = try api.createMethod("PathFollow", "set_cubic_interpolation");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_cubic_interpolation, base, cargs, result);
    }

    pub fn setHOffset(self: *const Self, arg_h_offset: f32) !void {
        if (mbind_set_h_offset == null) {
            mbind_set_h_offset = try api.createMethod("PathFollow", "set_h_offset");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_h_offset),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_h_offset, base, cargs, result);
    }

    pub fn setLoop(self: *const Self, arg_loop: bool) !void {
        if (mbind_set_loop == null) {
            mbind_set_loop = try api.createMethod("PathFollow", "set_loop");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_loop),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_loop, base, cargs, result);
    }

    pub fn setOffset(self: *const Self, arg_offset: f32) !void {
        if (mbind_set_offset == null) {
            mbind_set_offset = try api.createMethod("PathFollow", "set_offset");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_offset),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_offset, base, cargs, result);
    }

    pub fn setRotationMode(self: *const Self, arg_rotation_mode: i32) !void {
        if (mbind_set_rotation_mode == null) {
            mbind_set_rotation_mode = try api.createMethod("PathFollow", "set_rotation_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_rotation_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_rotation_mode, base, cargs, result);
    }

    pub fn setUnitOffset(self: *const Self, arg_unit_offset: f32) !void {
        if (mbind_set_unit_offset == null) {
            mbind_set_unit_offset = try api.createMethod("PathFollow", "set_unit_offset");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_unit_offset),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_unit_offset, base, cargs, result);
    }

    pub fn setVOffset(self: *const Self, arg_v_offset: f32) !void {
        if (mbind_set_v_offset == null) {
            mbind_set_v_offset = try api.createMethod("PathFollow", "set_v_offset");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_v_offset),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_v_offset, base, cargs, result);
    }
};