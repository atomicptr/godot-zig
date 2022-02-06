// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_id: ?*c_api.godot_method_bind = null;
var mbind_get_name: ?*c_api.godot_method_bind = null;
var mbind_get_position: ?*c_api.godot_method_bind = null;
var mbind_get_transform: ?*c_api.godot_method_bind = null;
var mbind_is_active: ?*c_api.godot_method_bind = null;
var mbind_set_active: ?*c_api.godot_method_bind = null;
var mbind_set_transform: ?*c_api.godot_method_bind = null;
var mbind_camera_feed_constructor: ?fn () ?*c_api.godot_object = null;

pub const CameraFeed = struct {
    const Self = @This();
    pub const BaseClass = godot.Reference;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_camera_feed_constructor == null) {
            mbind_camera_feed_constructor = try api.createConstructor("CameraFeed");
        }
        return api.createObject(Self, mbind_camera_feed_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getId(self: *const Self) !i32 {
        if (mbind_get_id == null) {
            mbind_get_id = try api.createMethod("CameraFeed", "get_id");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_id, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getName(self: *const Self) !godot.String {
        if (mbind_get_name == null) {
            mbind_get_name = try api.createMethod("CameraFeed", "get_name");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_name, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getPosition(self: *const Self) !i32 {
        if (mbind_get_position == null) {
            mbind_get_position = try api.createMethod("CameraFeed", "get_position");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_position, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getTransform(self: *const Self) !godot.Transform2D {
        if (mbind_get_transform == null) {
            mbind_get_transform = try api.createMethod("CameraFeed", "get_transform");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_transform, base, cargs, result);
        return @ptrCast(*godot.Transform2D, @alignCast(@alignOf(&godot.Transform2D), result)).*;
    }

    pub fn isActive(self: *const Self) !bool {
        if (mbind_is_active == null) {
            mbind_is_active = try api.createMethod("CameraFeed", "is_active");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_active, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setActive(self: *const Self, arg_active: bool) !void {
        if (mbind_set_active == null) {
            mbind_set_active = try api.createMethod("CameraFeed", "set_active");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_active),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_active, base, cargs, result);
    }

    pub fn setTransform(self: *const Self, arg_transform: *const godot.Transform2D) !void {
        if (mbind_set_transform == null) {
            mbind_set_transform = try api.createMethod("CameraFeed", "set_transform");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_transform),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_transform, base, cargs, result);
    }
};