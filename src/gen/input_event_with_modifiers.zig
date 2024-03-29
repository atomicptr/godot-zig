// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_alt: ?*c_api.godot_method_bind = null;
var mbind_get_command: ?*c_api.godot_method_bind = null;
var mbind_get_control: ?*c_api.godot_method_bind = null;
var mbind_get_metakey: ?*c_api.godot_method_bind = null;
var mbind_get_shift: ?*c_api.godot_method_bind = null;
var mbind_set_alt: ?*c_api.godot_method_bind = null;
var mbind_set_command: ?*c_api.godot_method_bind = null;
var mbind_set_control: ?*c_api.godot_method_bind = null;
var mbind_set_metakey: ?*c_api.godot_method_bind = null;
var mbind_set_shift: ?*c_api.godot_method_bind = null;
var mbind_input_event_with_modifiers_constructor: ?fn () ?*c_api.godot_object = null;

pub const InputEventWithModifiers = struct {
    const Self = @This();
    pub const BaseClass = godot.InputEvent;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_input_event_with_modifiers_constructor == null) {
            mbind_input_event_with_modifiers_constructor = try api.createConstructor("InputEventWithModifiers");
        }
        return api.createObject(Self, mbind_input_event_with_modifiers_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getAlt(self: *const Self) !bool {
        if (mbind_get_alt == null) {
            mbind_get_alt = try api.createMethod("InputEventWithModifiers", "get_alt");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_alt, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getCommand(self: *const Self) !bool {
        if (mbind_get_command == null) {
            mbind_get_command = try api.createMethod("InputEventWithModifiers", "get_command");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_command, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getControl(self: *const Self) !bool {
        if (mbind_get_control == null) {
            mbind_get_control = try api.createMethod("InputEventWithModifiers", "get_control");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_control, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getMetakey(self: *const Self) !bool {
        if (mbind_get_metakey == null) {
            mbind_get_metakey = try api.createMethod("InputEventWithModifiers", "get_metakey");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_metakey, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getShift(self: *const Self) !bool {
        if (mbind_get_shift == null) {
            mbind_get_shift = try api.createMethod("InputEventWithModifiers", "get_shift");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_shift, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setAlt(self: *const Self, arg_enable: bool) !void {
        if (mbind_set_alt == null) {
            mbind_set_alt = try api.createMethod("InputEventWithModifiers", "set_alt");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_alt, base, cargs, result);
    }

    pub fn setCommand(self: *const Self, arg_enable: bool) !void {
        if (mbind_set_command == null) {
            mbind_set_command = try api.createMethod("InputEventWithModifiers", "set_command");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_command, base, cargs, result);
    }

    pub fn setControl(self: *const Self, arg_enable: bool) !void {
        if (mbind_set_control == null) {
            mbind_set_control = try api.createMethod("InputEventWithModifiers", "set_control");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_control, base, cargs, result);
    }

    pub fn setMetakey(self: *const Self, arg_enable: bool) !void {
        if (mbind_set_metakey == null) {
            mbind_set_metakey = try api.createMethod("InputEventWithModifiers", "set_metakey");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_metakey, base, cargs, result);
    }

    pub fn setShift(self: *const Self, arg_enable: bool) !void {
        if (mbind_set_shift == null) {
            mbind_set_shift = try api.createMethod("InputEventWithModifiers", "set_shift");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_shift, base, cargs, result);
    }
};