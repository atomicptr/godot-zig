// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Spatial = @import("spatial.zig").Spatial;

// method bindings
var mbind_get_include_in_bound: ?*c_api.godot_method_bind = null;
var mbind_get_portal_autoplace_priority: ?*c_api.godot_method_bind = null;
var mbind_get_portal_mode: ?*c_api.godot_method_bind = null;
var mbind_set_include_in_bound: ?*c_api.godot_method_bind = null;
var mbind_set_portal_autoplace_priority: ?*c_api.godot_method_bind = null;
var mbind_set_portal_mode: ?*c_api.godot_method_bind = null;
var mbind_cull_instance_constructor: ?fn () ?*c_api.godot_object = null;

pub const CullInstance = struct {
    const Self = @This();
    const BaseClass = Spatial;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_cull_instance_constructor == null) {
            mbind_cull_instance_constructor = try api.createConstructor("CullInstance");
        }
        return api.createObject(Self, mbind_cull_instance_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getIncludeInBound(self: *const Self) !bool {
        if (mbind_get_include_in_bound == null) {
            mbind_get_include_in_bound = try api.createMethod("CullInstance", "get_include_in_bound");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_include_in_bound, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getPortalAutoplacePriority(self: *const Self) !i32 {
        if (mbind_get_portal_autoplace_priority == null) {
            mbind_get_portal_autoplace_priority = try api.createMethod("CullInstance", "get_portal_autoplace_priority");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_portal_autoplace_priority, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getPortalMode(self: *const Self) !i32 {
        if (mbind_get_portal_mode == null) {
            mbind_get_portal_mode = try api.createMethod("CullInstance", "get_portal_mode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_portal_mode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn setIncludeInBound(self: *const Self, arg_arg0: bool) !void {
        if (mbind_set_include_in_bound == null) {
            mbind_set_include_in_bound = try api.createMethod("CullInstance", "set_include_in_bound");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_arg0),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_include_in_bound, base, cargs, result);
    }

    pub fn setPortalAutoplacePriority(self: *const Self, arg_priority: i32) !void {
        if (mbind_set_portal_autoplace_priority == null) {
            mbind_set_portal_autoplace_priority = try api.createMethod("CullInstance", "set_portal_autoplace_priority");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_priority),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_portal_autoplace_priority, base, cargs, result);
    }

    pub fn setPortalMode(self: *const Self, arg_mode: i32) !void {
        if (mbind_set_portal_mode == null) {
            mbind_set_portal_mode = try api.createMethod("CullInstance", "set_portal_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_portal_mode, base, cargs, result);
    }
};