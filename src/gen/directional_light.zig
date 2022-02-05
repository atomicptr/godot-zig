// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Light = @import("light.zig").Light;

// method bindings
var mbind_get_shadow_depth_range: ?*c_api.godot_method_bind = null;
var mbind_get_shadow_mode: ?*c_api.godot_method_bind = null;
var mbind_is_blend_splits_enabled: ?*c_api.godot_method_bind = null;
var mbind_set_blend_splits: ?*c_api.godot_method_bind = null;
var mbind_set_shadow_depth_range: ?*c_api.godot_method_bind = null;
var mbind_set_shadow_mode: ?*c_api.godot_method_bind = null;
var mbind_directional_light_constructor: ?fn () ?*c_api.godot_object = null;

pub const DirectionalLight = struct {
    const Self = @This();
    const BaseClass = Light;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_directional_light_constructor == null) {
            mbind_directional_light_constructor = try api.createConstructor("DirectionalLight");
        }
        return api.createObject(Self, mbind_directional_light_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getShadowDepthRange(self: *const Self) !i32 {
        if (mbind_get_shadow_depth_range == null) {
            mbind_get_shadow_depth_range = try api.createMethod("DirectionalLight", "get_shadow_depth_range");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_shadow_depth_range, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getShadowMode(self: *const Self) !i32 {
        if (mbind_get_shadow_mode == null) {
            mbind_get_shadow_mode = try api.createMethod("DirectionalLight", "get_shadow_mode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_shadow_mode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn isBlendSplitsEnabled(self: *const Self) !bool {
        if (mbind_is_blend_splits_enabled == null) {
            mbind_is_blend_splits_enabled = try api.createMethod("DirectionalLight", "is_blend_splits_enabled");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_blend_splits_enabled, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setBlendSplits(self: *const Self, arg_enabled: bool) !void {
        if (mbind_set_blend_splits == null) {
            mbind_set_blend_splits = try api.createMethod("DirectionalLight", "set_blend_splits");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enabled),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_blend_splits, base, cargs, result);
    }

    pub fn setShadowDepthRange(self: *const Self, arg_mode: i32) !void {
        if (mbind_set_shadow_depth_range == null) {
            mbind_set_shadow_depth_range = try api.createMethod("DirectionalLight", "set_shadow_depth_range");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_shadow_depth_range, base, cargs, result);
    }

    pub fn setShadowMode(self: *const Self, arg_mode: i32) !void {
        if (mbind_set_shadow_mode == null) {
            mbind_set_shadow_mode = try api.createMethod("DirectionalLight", "set_shadow_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_shadow_mode, base, cargs, result);
    }
};