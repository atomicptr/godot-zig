// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Resource = @import("resource.zig").Resource;

// method bindings
var mbind_add_message: ?*c_api.godot_method_bind = null;
var mbind_erase_message: ?*c_api.godot_method_bind = null;
var mbind_get_locale: ?*c_api.godot_method_bind = null;
var mbind_get_message: ?*c_api.godot_method_bind = null;
var mbind_get_message_count: ?*c_api.godot_method_bind = null;
var mbind_get_message_list: ?*c_api.godot_method_bind = null;
var mbind_set_locale: ?*c_api.godot_method_bind = null;
var mbind_translation_constructor: ?fn () ?*c_api.godot_object = null;

pub const Translation = struct {
    const Self = @This();
    const BaseClass = Resource;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_translation_constructor == null) {
            mbind_translation_constructor = try api.createConstructor("Translation");
        }
        return api.createObject(Self, mbind_translation_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn addMessage(self: *const Self, arg_src_message: *const godot.String, arg_xlated_message: *const godot.String) !void {
        if (mbind_add_message == null) {
            mbind_add_message = try api.createMethod("Translation", "add_message");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_src_message),
            @ptrCast(*const anyopaque, arg_xlated_message),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_message, base, cargs, result);
    }

    pub fn eraseMessage(self: *const Self, arg_src_message: *const godot.String) !void {
        if (mbind_erase_message == null) {
            mbind_erase_message = try api.createMethod("Translation", "erase_message");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_src_message),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_erase_message, base, cargs, result);
    }

    pub fn getLocale(self: *const Self) !godot.String {
        if (mbind_get_locale == null) {
            mbind_get_locale = try api.createMethod("Translation", "get_locale");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_locale, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getMessage(self: *const Self, arg_src_message: *const godot.String) !godot.String {
        if (mbind_get_message == null) {
            mbind_get_message = try api.createMethod("Translation", "get_message");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_src_message),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_message, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getMessageCount(self: *const Self) !i32 {
        if (mbind_get_message_count == null) {
            mbind_get_message_count = try api.createMethod("Translation", "get_message_count");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_message_count, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getMessageList(self: *const Self) !godot.PoolStringArray {
        if (mbind_get_message_list == null) {
            mbind_get_message_list = try api.createMethod("Translation", "get_message_list");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_message_list, base, cargs, result);
        return @ptrCast(*godot.PoolStringArray, @alignCast(@alignOf(&godot.PoolStringArray), result)).*;
    }

    pub fn setLocale(self: *const Self, arg_locale: *const godot.String) !void {
        if (mbind_set_locale == null) {
            mbind_set_locale = try api.createMethod("Translation", "set_locale");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_locale),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_locale, base, cargs, result);
    }
};