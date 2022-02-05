// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Resource = @import("resource.zig").Resource;

// method bindings
var mbind_get_as_text: ?*c_api.godot_method_bind = null;
var mbind_get_shortcut: ?*c_api.godot_method_bind = null;
var mbind_is_shortcut: ?*c_api.godot_method_bind = null;
var mbind_is_valid: ?*c_api.godot_method_bind = null;
var mbind_set_shortcut: ?*c_api.godot_method_bind = null;
var mbind_short_cut_constructor: ?fn () ?*c_api.godot_object = null;

pub const ShortCut = struct {
    const Self = @This();
    const BaseClass = Resource;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_short_cut_constructor == null) {
            mbind_short_cut_constructor = try api.createConstructor("ShortCut");
        }
        return api.createObject(Self, mbind_short_cut_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getAsText(self: *const Self) !godot.String {
        if (mbind_get_as_text == null) {
            mbind_get_as_text = try api.createMethod("ShortCut", "get_as_text");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_as_text, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getShortcut(self: *const Self) !godot.InputEvent {
        if (mbind_get_shortcut == null) {
            mbind_get_shortcut = try api.createMethod("ShortCut", "get_shortcut");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_shortcut, base, cargs, result);
        return @ptrCast(*godot.InputEvent, @alignCast(@alignOf(&godot.InputEvent), result)).*;
    }

    pub fn isShortcut(self: *const Self, arg_event: *const godot.InputEvent) !bool {
        if (mbind_is_shortcut == null) {
            mbind_is_shortcut = try api.createMethod("ShortCut", "is_shortcut");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_event),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_shortcut, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isValid(self: *const Self) !bool {
        if (mbind_is_valid == null) {
            mbind_is_valid = try api.createMethod("ShortCut", "is_valid");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_valid, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setShortcut(self: *const Self, arg_event: *const godot.InputEvent) !void {
        if (mbind_set_shortcut == null) {
            mbind_set_shortcut = try api.createMethod("ShortCut", "set_shortcut");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_event),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_shortcut, base, cargs, result);
    }
};