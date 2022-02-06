// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_absolute_index: ?*c_api.godot_method_bind = null;
var mbind_get_character: ?*c_api.godot_method_bind = null;
var mbind_get_color: ?*c_api.godot_method_bind = null;
var mbind_get_elapsed_time: ?*c_api.godot_method_bind = null;
var mbind_get_environment: ?*c_api.godot_method_bind = null;
var mbind_get_offset: ?*c_api.godot_method_bind = null;
var mbind_get_relative_index: ?*c_api.godot_method_bind = null;
var mbind_is_visible: ?*c_api.godot_method_bind = null;
var mbind_set_absolute_index: ?*c_api.godot_method_bind = null;
var mbind_set_character: ?*c_api.godot_method_bind = null;
var mbind_set_color: ?*c_api.godot_method_bind = null;
var mbind_set_elapsed_time: ?*c_api.godot_method_bind = null;
var mbind_set_environment: ?*c_api.godot_method_bind = null;
var mbind_set_offset: ?*c_api.godot_method_bind = null;
var mbind_set_relative_index: ?*c_api.godot_method_bind = null;
var mbind_set_visibility: ?*c_api.godot_method_bind = null;
var mbind_char_fxtransform_constructor: ?fn () ?*c_api.godot_object = null;

pub const CharFXTransform = struct {
    const Self = @This();
    pub const BaseClass = godot.Reference;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_char_fxtransform_constructor == null) {
            mbind_char_fxtransform_constructor = try api.createConstructor("CharFXTransform");
        }
        return api.createObject(Self, mbind_char_fxtransform_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getAbsoluteIndex(self: *const Self) !i32 {
        if (mbind_get_absolute_index == null) {
            mbind_get_absolute_index = try api.createMethod("CharFXTransform", "get_absolute_index");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_absolute_index, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getCharacter(self: *const Self) !i32 {
        if (mbind_get_character == null) {
            mbind_get_character = try api.createMethod("CharFXTransform", "get_character");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_character, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getColor(self: *const Self) !godot.Color {
        if (mbind_get_color == null) {
            mbind_get_color = try api.createMethod("CharFXTransform", "get_color");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_color, base, cargs, result);
        return @ptrCast(*godot.Color, @alignCast(@alignOf(&godot.Color), result)).*;
    }

    pub fn getElapsedTime(self: *const Self) !f32 {
        if (mbind_get_elapsed_time == null) {
            mbind_get_elapsed_time = try api.createMethod("CharFXTransform", "get_elapsed_time");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_elapsed_time, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getEnvironment(self: *const Self) !godot.Dictionary {
        if (mbind_get_environment == null) {
            mbind_get_environment = try api.createMethod("CharFXTransform", "get_environment");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_environment, base, cargs, result);
        return @ptrCast(*godot.Dictionary, @alignCast(@alignOf(&godot.Dictionary), result)).*;
    }

    pub fn getOffset(self: *const Self) !godot.Vector2 {
        if (mbind_get_offset == null) {
            mbind_get_offset = try api.createMethod("CharFXTransform", "get_offset");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_offset, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getRelativeIndex(self: *const Self) !i32 {
        if (mbind_get_relative_index == null) {
            mbind_get_relative_index = try api.createMethod("CharFXTransform", "get_relative_index");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_relative_index, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn isVisible(self: *const Self) !bool {
        if (mbind_is_visible == null) {
            mbind_is_visible = try api.createMethod("CharFXTransform", "is_visible");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_visible, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setAbsoluteIndex(self: *const Self, arg_index: i32) !void {
        if (mbind_set_absolute_index == null) {
            mbind_set_absolute_index = try api.createMethod("CharFXTransform", "set_absolute_index");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_index),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_absolute_index, base, cargs, result);
    }

    pub fn setCharacter(self: *const Self, arg_character: i32) !void {
        if (mbind_set_character == null) {
            mbind_set_character = try api.createMethod("CharFXTransform", "set_character");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_character),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_character, base, cargs, result);
    }

    pub fn setColor(self: *const Self, arg_color: *const godot.Color) !void {
        if (mbind_set_color == null) {
            mbind_set_color = try api.createMethod("CharFXTransform", "set_color");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_color),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_color, base, cargs, result);
    }

    pub fn setElapsedTime(self: *const Self, arg_time: f32) !void {
        if (mbind_set_elapsed_time == null) {
            mbind_set_elapsed_time = try api.createMethod("CharFXTransform", "set_elapsed_time");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_time),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_elapsed_time, base, cargs, result);
    }

    pub fn setEnvironment(self: *const Self, arg_environment: *const godot.Dictionary) !void {
        if (mbind_set_environment == null) {
            mbind_set_environment = try api.createMethod("CharFXTransform", "set_environment");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_environment),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_environment, base, cargs, result);
    }

    pub fn setOffset(self: *const Self, arg_offset: *const godot.Vector2) !void {
        if (mbind_set_offset == null) {
            mbind_set_offset = try api.createMethod("CharFXTransform", "set_offset");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_offset),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_offset, base, cargs, result);
    }

    pub fn setRelativeIndex(self: *const Self, arg_index: i32) !void {
        if (mbind_set_relative_index == null) {
            mbind_set_relative_index = try api.createMethod("CharFXTransform", "set_relative_index");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_index),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_relative_index, base, cargs, result);
    }

    pub fn setVisibility(self: *const Self, arg_visibility: bool) !void {
        if (mbind_set_visibility == null) {
            mbind_set_visibility = try api.createMethod("CharFXTransform", "set_visibility");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_visibility),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_visibility, base, cargs, result);
    }
};