// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_extents: ?*c_api.godot_method_bind = null;
var mbind_set_extents: ?*c_api.godot_method_bind = null;
var mbind_box_shape_constructor: ?fn () ?*c_api.godot_object = null;

pub const BoxShape = struct {
    const Self = @This();
    pub const BaseClass = godot.Shape;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_box_shape_constructor == null) {
            mbind_box_shape_constructor = try api.createConstructor("BoxShape");
        }
        return api.createObject(Self, mbind_box_shape_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getExtents(self: *const Self) !godot.Vector3 {
        if (mbind_get_extents == null) {
            mbind_get_extents = try api.createMethod("BoxShape", "get_extents");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_extents, base, cargs, result);
        return @ptrCast(*godot.Vector3, @alignCast(@alignOf(&godot.Vector3), result)).*;
    }

    pub fn setExtents(self: *const Self, arg_extents: *const godot.Vector3) !void {
        if (mbind_set_extents == null) {
            mbind_set_extents = try api.createMethod("BoxShape", "set_extents");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_extents),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_extents, base, cargs, result);
    }
};