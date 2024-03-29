// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_action: ?*c_api.godot_method_bind = null;
var mbind_get_bitmask: ?*c_api.godot_method_bind = null;
var mbind_get_shape: ?*c_api.godot_method_bind = null;
var mbind_get_texture: ?*c_api.godot_method_bind = null;
var mbind_get_texture_pressed: ?*c_api.godot_method_bind = null;
var mbind_get_visibility_mode: ?*c_api.godot_method_bind = null;
var mbind_is_passby_press_enabled: ?*c_api.godot_method_bind = null;
var mbind_is_pressed: ?*c_api.godot_method_bind = null;
var mbind_is_shape_centered: ?*c_api.godot_method_bind = null;
var mbind_is_shape_visible: ?*c_api.godot_method_bind = null;
var mbind_set_action: ?*c_api.godot_method_bind = null;
var mbind_set_bitmask: ?*c_api.godot_method_bind = null;
var mbind_set_passby_press: ?*c_api.godot_method_bind = null;
var mbind_set_shape: ?*c_api.godot_method_bind = null;
var mbind_set_shape_centered: ?*c_api.godot_method_bind = null;
var mbind_set_shape_visible: ?*c_api.godot_method_bind = null;
var mbind_set_texture: ?*c_api.godot_method_bind = null;
var mbind_set_texture_pressed: ?*c_api.godot_method_bind = null;
var mbind_set_visibility_mode: ?*c_api.godot_method_bind = null;
var mbind_touch_screen_button_constructor: ?fn () ?*c_api.godot_object = null;

pub const TouchScreenButton = struct {
    const Self = @This();
    pub const BaseClass = godot.Node2D;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_touch_screen_button_constructor == null) {
            mbind_touch_screen_button_constructor = try api.createConstructor("TouchScreenButton");
        }
        return api.createObject(Self, mbind_touch_screen_button_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getAction(self: *const Self) !godot.String {
        if (mbind_get_action == null) {
            mbind_get_action = try api.createMethod("TouchScreenButton", "get_action");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_action, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getBitmask(self: *const Self) !godot.BitMap {
        if (mbind_get_bitmask == null) {
            mbind_get_bitmask = try api.createMethod("TouchScreenButton", "get_bitmask");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_bitmask, base, cargs, result);
        return @ptrCast(*godot.BitMap, @alignCast(@alignOf(&godot.BitMap), result)).*;
    }

    pub fn getShape(self: *const Self) !godot.Shape2D {
        if (mbind_get_shape == null) {
            mbind_get_shape = try api.createMethod("TouchScreenButton", "get_shape");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_shape, base, cargs, result);
        return @ptrCast(*godot.Shape2D, @alignCast(@alignOf(&godot.Shape2D), result)).*;
    }

    pub fn getTexture(self: *const Self) !godot.Texture {
        if (mbind_get_texture == null) {
            mbind_get_texture = try api.createMethod("TouchScreenButton", "get_texture");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_texture, base, cargs, result);
        return @ptrCast(*godot.Texture, @alignCast(@alignOf(&godot.Texture), result)).*;
    }

    pub fn getTexturePressed(self: *const Self) !godot.Texture {
        if (mbind_get_texture_pressed == null) {
            mbind_get_texture_pressed = try api.createMethod("TouchScreenButton", "get_texture_pressed");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_texture_pressed, base, cargs, result);
        return @ptrCast(*godot.Texture, @alignCast(@alignOf(&godot.Texture), result)).*;
    }

    pub fn getVisibilityMode(self: *const Self) !i32 {
        if (mbind_get_visibility_mode == null) {
            mbind_get_visibility_mode = try api.createMethod("TouchScreenButton", "get_visibility_mode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_visibility_mode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn isPassbyPressEnabled(self: *const Self) !bool {
        if (mbind_is_passby_press_enabled == null) {
            mbind_is_passby_press_enabled = try api.createMethod("TouchScreenButton", "is_passby_press_enabled");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_passby_press_enabled, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isPressed(self: *const Self) !bool {
        if (mbind_is_pressed == null) {
            mbind_is_pressed = try api.createMethod("TouchScreenButton", "is_pressed");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_pressed, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isShapeCentered(self: *const Self) !bool {
        if (mbind_is_shape_centered == null) {
            mbind_is_shape_centered = try api.createMethod("TouchScreenButton", "is_shape_centered");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_shape_centered, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isShapeVisible(self: *const Self) !bool {
        if (mbind_is_shape_visible == null) {
            mbind_is_shape_visible = try api.createMethod("TouchScreenButton", "is_shape_visible");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_shape_visible, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setAction(self: *const Self, arg_action: *const godot.String) !void {
        if (mbind_set_action == null) {
            mbind_set_action = try api.createMethod("TouchScreenButton", "set_action");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_action),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_action, base, cargs, result);
    }

    pub fn setBitmask(self: *const Self, arg_bitmask: *const godot.BitMap) !void {
        if (mbind_set_bitmask == null) {
            mbind_set_bitmask = try api.createMethod("TouchScreenButton", "set_bitmask");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_bitmask),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_bitmask, base, cargs, result);
    }

    pub fn setPassbyPress(self: *const Self, arg_enabled: bool) !void {
        if (mbind_set_passby_press == null) {
            mbind_set_passby_press = try api.createMethod("TouchScreenButton", "set_passby_press");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enabled),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_passby_press, base, cargs, result);
    }

    pub fn setShape(self: *const Self, arg_shape: *const godot.Shape2D) !void {
        if (mbind_set_shape == null) {
            mbind_set_shape = try api.createMethod("TouchScreenButton", "set_shape");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_shape),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_shape, base, cargs, result);
    }

    pub fn setShapeCentered(self: *const Self, arg_bool: bool) !void {
        if (mbind_set_shape_centered == null) {
            mbind_set_shape_centered = try api.createMethod("TouchScreenButton", "set_shape_centered");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_bool),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_shape_centered, base, cargs, result);
    }

    pub fn setShapeVisible(self: *const Self, arg_bool: bool) !void {
        if (mbind_set_shape_visible == null) {
            mbind_set_shape_visible = try api.createMethod("TouchScreenButton", "set_shape_visible");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_bool),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_shape_visible, base, cargs, result);
    }

    pub fn setTexture(self: *const Self, arg_texture: *const godot.Texture) !void {
        if (mbind_set_texture == null) {
            mbind_set_texture = try api.createMethod("TouchScreenButton", "set_texture");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_texture),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_texture, base, cargs, result);
    }

    pub fn setTexturePressed(self: *const Self, arg_texture_pressed: *const godot.Texture) !void {
        if (mbind_set_texture_pressed == null) {
            mbind_set_texture_pressed = try api.createMethod("TouchScreenButton", "set_texture_pressed");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_texture_pressed),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_texture_pressed, base, cargs, result);
    }

    pub fn setVisibilityMode(self: *const Self, arg_mode: i32) !void {
        if (mbind_set_visibility_mode == null) {
            mbind_set_visibility_mode = try api.createMethod("TouchScreenButton", "set_visibility_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_visibility_mode, base, cargs, result);
    }
};