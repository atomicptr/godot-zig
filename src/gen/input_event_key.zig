// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_physical_scancode: ?*c_api.godot_method_bind = null;
var mbind_get_physical_scancode_with_modifiers: ?*c_api.godot_method_bind = null;
var mbind_get_scancode: ?*c_api.godot_method_bind = null;
var mbind_get_scancode_with_modifiers: ?*c_api.godot_method_bind = null;
var mbind_get_unicode: ?*c_api.godot_method_bind = null;
var mbind_set_echo: ?*c_api.godot_method_bind = null;
var mbind_set_physical_scancode: ?*c_api.godot_method_bind = null;
var mbind_set_pressed: ?*c_api.godot_method_bind = null;
var mbind_set_scancode: ?*c_api.godot_method_bind = null;
var mbind_set_unicode: ?*c_api.godot_method_bind = null;
var mbind_input_event_key_constructor: ?fn () ?*c_api.godot_object = null;

pub const InputEventKey = struct {
    const Self = @This();
    pub const BaseClass = godot.InputEventWithModifiers;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_input_event_key_constructor == null) {
            mbind_input_event_key_constructor = try api.createConstructor("InputEventKey");
        }
        return api.createObject(Self, mbind_input_event_key_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getPhysicalScancode(self: *const Self) !i32 {
        if (mbind_get_physical_scancode == null) {
            mbind_get_physical_scancode = try api.createMethod("InputEventKey", "get_physical_scancode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_physical_scancode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getPhysicalScancodeWithModifiers(self: *const Self) !i32 {
        if (mbind_get_physical_scancode_with_modifiers == null) {
            mbind_get_physical_scancode_with_modifiers = try api.createMethod("InputEventKey", "get_physical_scancode_with_modifiers");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_physical_scancode_with_modifiers, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getScancode(self: *const Self) !i32 {
        if (mbind_get_scancode == null) {
            mbind_get_scancode = try api.createMethod("InputEventKey", "get_scancode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_scancode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getScancodeWithModifiers(self: *const Self) !i32 {
        if (mbind_get_scancode_with_modifiers == null) {
            mbind_get_scancode_with_modifiers = try api.createMethod("InputEventKey", "get_scancode_with_modifiers");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_scancode_with_modifiers, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getUnicode(self: *const Self) !i32 {
        if (mbind_get_unicode == null) {
            mbind_get_unicode = try api.createMethod("InputEventKey", "get_unicode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_unicode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn setEcho(self: *const Self, arg_echo: bool) !void {
        if (mbind_set_echo == null) {
            mbind_set_echo = try api.createMethod("InputEventKey", "set_echo");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_echo),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_echo, base, cargs, result);
    }

    pub fn setPhysicalScancode(self: *const Self, arg_scancode: i32) !void {
        if (mbind_set_physical_scancode == null) {
            mbind_set_physical_scancode = try api.createMethod("InputEventKey", "set_physical_scancode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_scancode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_physical_scancode, base, cargs, result);
    }

    pub fn setPressed(self: *const Self, arg_pressed: bool) !void {
        if (mbind_set_pressed == null) {
            mbind_set_pressed = try api.createMethod("InputEventKey", "set_pressed");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_pressed),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_pressed, base, cargs, result);
    }

    pub fn setScancode(self: *const Self, arg_scancode: i32) !void {
        if (mbind_set_scancode == null) {
            mbind_set_scancode = try api.createMethod("InputEventKey", "set_scancode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_scancode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_scancode, base, cargs, result);
    }

    pub fn setUnicode(self: *const Self, arg_unicode: i32) !void {
        if (mbind_set_unicode == null) {
            mbind_set_unicode = try api.createMethod("InputEventKey", "set_unicode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_unicode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_unicode, base, cargs, result);
    }
};