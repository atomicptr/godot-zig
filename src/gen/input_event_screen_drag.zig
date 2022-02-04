// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const InputEvent = @import("input_event.zig").InputEvent;

// method bindings
var mbind_get_index: ?*c_api.godot_method_bind = null;
var mbind_get_position: ?*c_api.godot_method_bind = null;
var mbind_get_relative: ?*c_api.godot_method_bind = null;
var mbind_get_speed: ?*c_api.godot_method_bind = null;
var mbind_set_index: ?*c_api.godot_method_bind = null;
var mbind_set_position: ?*c_api.godot_method_bind = null;
var mbind_set_relative: ?*c_api.godot_method_bind = null;
var mbind_set_speed: ?*c_api.godot_method_bind = null;
var mbind_input_event_screen_drag_constructor: ?fn () ?*c_api.godot_object = null;

pub const InputEventScreenDrag = struct {
    const Self = @This();
    const BaseClass = InputEvent;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_input_event_screen_drag_constructor == null) {
            mbind_input_event_screen_drag_constructor = try api.createConstructor("InputEventScreenDrag");
        }
        return api.createObject(Self, mbind_input_event_screen_drag_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getIndex(self: *const Self) !i32 {
        if (mbind_get_index == null) {
            mbind_get_index = try api.createMethod("InputEventScreenDrag", "get_index");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_index, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getPosition(self: *const Self) !godot.Vector2 {
        if (mbind_get_position == null) {
            mbind_get_position = try api.createMethod("InputEventScreenDrag", "get_position");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_position, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getRelative(self: *const Self) !godot.Vector2 {
        if (mbind_get_relative == null) {
            mbind_get_relative = try api.createMethod("InputEventScreenDrag", "get_relative");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_relative, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getSpeed(self: *const Self) !godot.Vector2 {
        if (mbind_get_speed == null) {
            mbind_get_speed = try api.createMethod("InputEventScreenDrag", "get_speed");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_speed, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn setIndex(self: *const Self, arg_index: i32) !void {
        if (mbind_set_index == null) {
            mbind_set_index = try api.createMethod("InputEventScreenDrag", "set_index");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_index),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_index, base, cargs, result);
    }

    pub fn setPosition(self: *const Self, arg_position: *const godot.Vector2) !void {
        if (mbind_set_position == null) {
            mbind_set_position = try api.createMethod("InputEventScreenDrag", "set_position");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_position),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_position, base, cargs, result);
    }

    pub fn setRelative(self: *const Self, arg_relative: *const godot.Vector2) !void {
        if (mbind_set_relative == null) {
            mbind_set_relative = try api.createMethod("InputEventScreenDrag", "set_relative");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_relative),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_relative, base, cargs, result);
    }

    pub fn setSpeed(self: *const Self, arg_speed: *const godot.Vector2) !void {
        if (mbind_set_speed == null) {
            mbind_set_speed = try api.createMethod("InputEventScreenDrag", "set_speed");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_speed),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_speed, base, cargs, result);
    }
};