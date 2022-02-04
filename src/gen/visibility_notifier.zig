// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const CullInstance = @import("cull_instance.zig").CullInstance;

// method bindings
var mbind_get_aabb: ?*c_api.godot_method_bind = null;
var mbind_is_on_screen: ?*c_api.godot_method_bind = null;
var mbind_set_aabb: ?*c_api.godot_method_bind = null;
var mbind_visibility_notifier_constructor: ?fn () ?*c_api.godot_object = null;

pub const VisibilityNotifier = struct {
    const Self = @This();
    const BaseClass = CullInstance;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_visibility_notifier_constructor == null) {
            mbind_visibility_notifier_constructor = try api.createConstructor("VisibilityNotifier");
        }
        return api.createObject(Self, mbind_visibility_notifier_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getAabb(self: *const Self) !godot.AABB {
        if (mbind_get_aabb == null) {
            mbind_get_aabb = try api.createMethod("VisibilityNotifier", "get_aabb");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_aabb, base, cargs, result);
        return @ptrCast(*godot.AABB, @alignCast(@alignOf(&godot.AABB), result)).*;
    }

    pub fn isOnScreen(self: *const Self) !bool {
        if (mbind_is_on_screen == null) {
            mbind_is_on_screen = try api.createMethod("VisibilityNotifier", "is_on_screen");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_on_screen, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setAabb(self: *const Self, arg_rect: *const godot.AABB) !void {
        if (mbind_set_aabb == null) {
            mbind_set_aabb = try api.createMethod("VisibilityNotifier", "set_aabb");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_rect),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_aabb, base, cargs, result);
    }
};