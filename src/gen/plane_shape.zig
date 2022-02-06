// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_plane: ?*c_api.godot_method_bind = null;
var mbind_set_plane: ?*c_api.godot_method_bind = null;
var mbind_plane_shape_constructor: ?fn () ?*c_api.godot_object = null;

pub const PlaneShape = struct {
    const Self = @This();
    pub const BaseClass = godot.Shape;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_plane_shape_constructor == null) {
            mbind_plane_shape_constructor = try api.createConstructor("PlaneShape");
        }
        return api.createObject(Self, mbind_plane_shape_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getPlane(self: *const Self) !godot.Plane {
        if (mbind_get_plane == null) {
            mbind_get_plane = try api.createMethod("PlaneShape", "get_plane");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_plane, base, cargs, result);
        return @ptrCast(*godot.Plane, @alignCast(@alignOf(&godot.Plane), result)).*;
    }

    pub fn setPlane(self: *const Self, arg_plane: *const godot.Plane) !void {
        if (mbind_set_plane == null) {
            mbind_set_plane = try api.createMethod("PlaneShape", "set_plane");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_plane),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_plane, base, cargs, result);
    }
};