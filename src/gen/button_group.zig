// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_buttons: ?*c_api.godot_method_bind = null;
var mbind_get_pressed_button: ?*c_api.godot_method_bind = null;
var mbind_button_group_constructor: ?fn () ?*c_api.godot_object = null;

pub const ButtonGroup = struct {
    const Self = @This();
    pub const BaseClass = godot.Resource;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_button_group_constructor == null) {
            mbind_button_group_constructor = try api.createConstructor("ButtonGroup");
        }
        return api.createObject(Self, mbind_button_group_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getButtons(self: *const Self) !godot.Array {
        if (mbind_get_buttons == null) {
            mbind_get_buttons = try api.createMethod("ButtonGroup", "get_buttons");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_buttons, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getPressedButton(self: *const Self) !godot.BaseButton {
        if (mbind_get_pressed_button == null) {
            mbind_get_pressed_button = try api.createMethod("ButtonGroup", "get_pressed_button");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_pressed_button, base, cargs, result);
        return @ptrCast(*godot.BaseButton, @alignCast(@alignOf(&godot.BaseButton), result)).*;
    }
};