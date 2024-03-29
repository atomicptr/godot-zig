// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_shape: ?*c_api.godot_method_bind = null;
var mbind_resource_changed: ?*c_api.godot_method_bind = null;
var mbind_set_shape: ?*c_api.godot_method_bind = null;
var mbind_occluder_constructor: ?fn () ?*c_api.godot_object = null;

pub const Occluder = struct {
    const Self = @This();
    pub const BaseClass = godot.Spatial;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_occluder_constructor == null) {
            mbind_occluder_constructor = try api.createConstructor("Occluder");
        }
        return api.createObject(Self, mbind_occluder_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getShape(self: *const Self) !godot.OccluderShape {
        if (mbind_get_shape == null) {
            mbind_get_shape = try api.createMethod("Occluder", "get_shape");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_shape, base, cargs, result);
        return @ptrCast(*godot.OccluderShape, @alignCast(@alignOf(&godot.OccluderShape), result)).*;
    }

    pub fn resourceChanged(self: *const Self, arg_resource: *const godot.Resource) !void {
        if (mbind_resource_changed == null) {
            mbind_resource_changed = try api.createMethod("Occluder", "resource_changed");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_resource),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_resource_changed, base, cargs, result);
    }

    pub fn setShape(self: *const Self, arg_shape: *const godot.OccluderShape) !void {
        if (mbind_set_shape == null) {
            mbind_set_shape = try api.createMethod("Occluder", "set_shape");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_shape),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_shape, base, cargs, result);
    }
};