// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Resource = @import("resource.zig").Resource;

// method bindings
var mbind_get_canvas: ?*c_api.godot_method_bind = null;
var mbind_get_direct_space_state: ?*c_api.godot_method_bind = null;
var mbind_get_space: ?*c_api.godot_method_bind = null;
var mbind_world_2d_constructor: ?fn () ?*c_api.godot_object = null;

pub const World2D = struct {
    const Self = @This();
    const BaseClass = Resource;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_world_2d_constructor == null) {
            mbind_world_2d_constructor = try api.createConstructor("World2D");
        }
        return api.createObject(Self, mbind_world_2d_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getCanvas(self: *const Self) !godot.RID {
        if (mbind_get_canvas == null) {
            mbind_get_canvas = try api.createMethod("World2D", "get_canvas");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_canvas, base, cargs, result);
        return @ptrCast(*godot.RID, @alignCast(@alignOf(&godot.RID), result)).*;
    }

    pub fn getDirectSpaceState(self: *const Self) !godot.Physics2DDirectSpaceState {
        if (mbind_get_direct_space_state == null) {
            mbind_get_direct_space_state = try api.createMethod("World2D", "get_direct_space_state");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_direct_space_state, base, cargs, result);
        return @ptrCast(*godot.Physics2DDirectSpaceState, @alignCast(@alignOf(&godot.Physics2DDirectSpaceState), result)).*;
    }

    pub fn getSpace(self: *const Self) !godot.RID {
        if (mbind_get_space == null) {
            mbind_get_space = try api.createMethod("World2D", "get_space");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_space, base, cargs, result);
        return @ptrCast(*godot.RID, @alignCast(@alignOf(&godot.RID), result)).*;
    }
};