// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const InputEventWithModifiers = @import("input_event_with_modifiers.zig").InputEventWithModifiers;

// method bindings
var mbind_get_button_mask: ?*c_api.godot_method_bind = null;
var mbind_get_global_position: ?*c_api.godot_method_bind = null;
var mbind_get_position: ?*c_api.godot_method_bind = null;
var mbind_set_button_mask: ?*c_api.godot_method_bind = null;
var mbind_set_global_position: ?*c_api.godot_method_bind = null;
var mbind_set_position: ?*c_api.godot_method_bind = null;
var mbind_input_event_mouse_constructor: ?fn () ?*c_api.godot_object = null;

pub const InputEventMouse = struct {
    const Self = @This();
    const BaseClass = InputEventWithModifiers;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_input_event_mouse_constructor == null) {
            mbind_input_event_mouse_constructor = try api.createConstructor("InputEventMouse");
        }
        return api.createObject(Self, mbind_input_event_mouse_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getButtonMask(self: *const Self) !i32 {
        if (mbind_get_button_mask == null) {
            mbind_get_button_mask = try api.createMethod("InputEventMouse", "get_button_mask");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_button_mask, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getGlobalPosition(self: *const Self) !godot.Vector2 {
        if (mbind_get_global_position == null) {
            mbind_get_global_position = try api.createMethod("InputEventMouse", "get_global_position");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_global_position, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getPosition(self: *const Self) !godot.Vector2 {
        if (mbind_get_position == null) {
            mbind_get_position = try api.createMethod("InputEventMouse", "get_position");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_position, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn setButtonMask(self: *const Self, arg_button_mask: i32) !void {
        if (mbind_set_button_mask == null) {
            mbind_set_button_mask = try api.createMethod("InputEventMouse", "set_button_mask");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_button_mask),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_button_mask, base, cargs, result);
    }

    pub fn setGlobalPosition(self: *const Self, arg_global_position: *const godot.Vector2) !void {
        if (mbind_set_global_position == null) {
            mbind_set_global_position = try api.createMethod("InputEventMouse", "set_global_position");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_global_position),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_global_position, base, cargs, result);
    }

    pub fn setPosition(self: *const Self, arg_position: *const godot.Vector2) !void {
        if (mbind_set_position == null) {
            mbind_set_position = try api.createMethod("InputEventMouse", "set_position");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_position),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_position, base, cargs, result);
    }
};