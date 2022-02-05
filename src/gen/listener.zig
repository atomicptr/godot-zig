// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Spatial = @import("spatial.zig").Spatial;

// method bindings
var mbind_clear_current: ?*c_api.godot_method_bind = null;
var mbind_get_listener_transform: ?*c_api.godot_method_bind = null;
var mbind_is_current: ?*c_api.godot_method_bind = null;
var mbind_make_current: ?*c_api.godot_method_bind = null;
var mbind_listener_constructor: ?fn () ?*c_api.godot_object = null;

pub const Listener = struct {
    const Self = @This();
    const BaseClass = Spatial;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_listener_constructor == null) {
            mbind_listener_constructor = try api.createConstructor("Listener");
        }
        return api.createObject(Self, mbind_listener_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn clearCurrent(self: *const Self) !void {
        if (mbind_clear_current == null) {
            mbind_clear_current = try api.createMethod("Listener", "clear_current");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_clear_current, base, cargs, result);
    }

    pub fn getListenerTransform(self: *const Self) !godot.Transform {
        if (mbind_get_listener_transform == null) {
            mbind_get_listener_transform = try api.createMethod("Listener", "get_listener_transform");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_listener_transform, base, cargs, result);
        return @ptrCast(*godot.Transform, @alignCast(@alignOf(&godot.Transform), result)).*;
    }

    pub fn isCurrent(self: *const Self) !bool {
        if (mbind_is_current == null) {
            mbind_is_current = try api.createMethod("Listener", "is_current");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_current, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn makeCurrent(self: *const Self) !void {
        if (mbind_make_current == null) {
            mbind_make_current = try api.createMethod("Listener", "make_current");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_make_current, base, cargs, result);
    }
};