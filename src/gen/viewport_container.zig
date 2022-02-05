// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Container = @import("container.zig").Container;

// method bindings
var mbind_get_stretch_shrink: ?*c_api.godot_method_bind = null;
var mbind_is_stretch_enabled: ?*c_api.godot_method_bind = null;
var mbind_set_stretch: ?*c_api.godot_method_bind = null;
var mbind_set_stretch_shrink: ?*c_api.godot_method_bind = null;
var mbind_viewport_container_constructor: ?fn () ?*c_api.godot_object = null;

pub const ViewportContainer = struct {
    const Self = @This();
    const BaseClass = Container;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_viewport_container_constructor == null) {
            mbind_viewport_container_constructor = try api.createConstructor("ViewportContainer");
        }
        return api.createObject(Self, mbind_viewport_container_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getStretchShrink(self: *const Self) !i32 {
        if (mbind_get_stretch_shrink == null) {
            mbind_get_stretch_shrink = try api.createMethod("ViewportContainer", "get_stretch_shrink");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_stretch_shrink, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn isStretchEnabled(self: *const Self) !bool {
        if (mbind_is_stretch_enabled == null) {
            mbind_is_stretch_enabled = try api.createMethod("ViewportContainer", "is_stretch_enabled");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_stretch_enabled, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setStretch(self: *const Self, arg_enable: bool) !void {
        if (mbind_set_stretch == null) {
            mbind_set_stretch = try api.createMethod("ViewportContainer", "set_stretch");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_stretch, base, cargs, result);
    }

    pub fn setStretchShrink(self: *const Self, arg_amount: i32) !void {
        if (mbind_set_stretch_shrink == null) {
            mbind_set_stretch_shrink = try api.createMethod("ViewportContainer", "set_stretch_shrink");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_amount),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_stretch_shrink, base, cargs, result);
    }
};