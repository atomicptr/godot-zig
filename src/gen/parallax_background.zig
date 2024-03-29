// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_limit_begin: ?*c_api.godot_method_bind = null;
var mbind_get_limit_end: ?*c_api.godot_method_bind = null;
var mbind_get_scroll_base_offset: ?*c_api.godot_method_bind = null;
var mbind_get_scroll_base_scale: ?*c_api.godot_method_bind = null;
var mbind_get_scroll_offset: ?*c_api.godot_method_bind = null;
var mbind_is_ignore_camera_zoom: ?*c_api.godot_method_bind = null;
var mbind_set_ignore_camera_zoom: ?*c_api.godot_method_bind = null;
var mbind_set_limit_begin: ?*c_api.godot_method_bind = null;
var mbind_set_limit_end: ?*c_api.godot_method_bind = null;
var mbind_set_scroll_base_offset: ?*c_api.godot_method_bind = null;
var mbind_set_scroll_base_scale: ?*c_api.godot_method_bind = null;
var mbind_set_scroll_offset: ?*c_api.godot_method_bind = null;
var mbind_parallax_background_constructor: ?fn () ?*c_api.godot_object = null;

pub const ParallaxBackground = struct {
    const Self = @This();
    pub const BaseClass = godot.CanvasLayer;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_parallax_background_constructor == null) {
            mbind_parallax_background_constructor = try api.createConstructor("ParallaxBackground");
        }
        return api.createObject(Self, mbind_parallax_background_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getLimitBegin(self: *const Self) !godot.Vector2 {
        if (mbind_get_limit_begin == null) {
            mbind_get_limit_begin = try api.createMethod("ParallaxBackground", "get_limit_begin");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_limit_begin, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getLimitEnd(self: *const Self) !godot.Vector2 {
        if (mbind_get_limit_end == null) {
            mbind_get_limit_end = try api.createMethod("ParallaxBackground", "get_limit_end");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_limit_end, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getScrollBaseOffset(self: *const Self) !godot.Vector2 {
        if (mbind_get_scroll_base_offset == null) {
            mbind_get_scroll_base_offset = try api.createMethod("ParallaxBackground", "get_scroll_base_offset");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_scroll_base_offset, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getScrollBaseScale(self: *const Self) !godot.Vector2 {
        if (mbind_get_scroll_base_scale == null) {
            mbind_get_scroll_base_scale = try api.createMethod("ParallaxBackground", "get_scroll_base_scale");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_scroll_base_scale, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getScrollOffset(self: *const Self) !godot.Vector2 {
        if (mbind_get_scroll_offset == null) {
            mbind_get_scroll_offset = try api.createMethod("ParallaxBackground", "get_scroll_offset");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_scroll_offset, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn isIgnoreCameraZoom(self: *const Self) !bool {
        if (mbind_is_ignore_camera_zoom == null) {
            mbind_is_ignore_camera_zoom = try api.createMethod("ParallaxBackground", "is_ignore_camera_zoom");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_ignore_camera_zoom, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setIgnoreCameraZoom(self: *const Self, arg_ignore: bool) !void {
        if (mbind_set_ignore_camera_zoom == null) {
            mbind_set_ignore_camera_zoom = try api.createMethod("ParallaxBackground", "set_ignore_camera_zoom");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_ignore),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_ignore_camera_zoom, base, cargs, result);
    }

    pub fn setLimitBegin(self: *const Self, arg_ofs: *const godot.Vector2) !void {
        if (mbind_set_limit_begin == null) {
            mbind_set_limit_begin = try api.createMethod("ParallaxBackground", "set_limit_begin");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_ofs),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_limit_begin, base, cargs, result);
    }

    pub fn setLimitEnd(self: *const Self, arg_ofs: *const godot.Vector2) !void {
        if (mbind_set_limit_end == null) {
            mbind_set_limit_end = try api.createMethod("ParallaxBackground", "set_limit_end");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_ofs),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_limit_end, base, cargs, result);
    }

    pub fn setScrollBaseOffset(self: *const Self, arg_ofs: *const godot.Vector2) !void {
        if (mbind_set_scroll_base_offset == null) {
            mbind_set_scroll_base_offset = try api.createMethod("ParallaxBackground", "set_scroll_base_offset");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_ofs),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_scroll_base_offset, base, cargs, result);
    }

    pub fn setScrollBaseScale(self: *const Self, arg_scale: *const godot.Vector2) !void {
        if (mbind_set_scroll_base_scale == null) {
            mbind_set_scroll_base_scale = try api.createMethod("ParallaxBackground", "set_scroll_base_scale");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_scale),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_scroll_base_scale, base, cargs, result);
    }

    pub fn setScrollOffset(self: *const Self, arg_ofs: *const godot.Vector2) !void {
        if (mbind_set_scroll_offset == null) {
            mbind_set_scroll_offset = try api.createMethod("ParallaxBackground", "set_scroll_offset");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_ofs),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_scroll_offset, base, cargs, result);
    }
};