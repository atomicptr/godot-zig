// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_occluder_light_mask: ?*c_api.godot_method_bind = null;
var mbind_get_occluder_polygon: ?*c_api.godot_method_bind = null;
var mbind_set_occluder_light_mask: ?*c_api.godot_method_bind = null;
var mbind_set_occluder_polygon: ?*c_api.godot_method_bind = null;
var mbind_light_occluder_2d_constructor: ?fn () ?*c_api.godot_object = null;

pub const LightOccluder2D = struct {
    const Self = @This();
    pub const BaseClass = godot.Node2D;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_light_occluder_2d_constructor == null) {
            mbind_light_occluder_2d_constructor = try api.createConstructor("LightOccluder2D");
        }
        return api.createObject(Self, mbind_light_occluder_2d_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getOccluderLightMask(self: *const Self) !i32 {
        if (mbind_get_occluder_light_mask == null) {
            mbind_get_occluder_light_mask = try api.createMethod("LightOccluder2D", "get_occluder_light_mask");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_occluder_light_mask, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getOccluderPolygon(self: *const Self) !godot.OccluderPolygon2D {
        if (mbind_get_occluder_polygon == null) {
            mbind_get_occluder_polygon = try api.createMethod("LightOccluder2D", "get_occluder_polygon");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_occluder_polygon, base, cargs, result);
        return @ptrCast(*godot.OccluderPolygon2D, @alignCast(@alignOf(&godot.OccluderPolygon2D), result)).*;
    }

    pub fn setOccluderLightMask(self: *const Self, arg_mask: i32) !void {
        if (mbind_set_occluder_light_mask == null) {
            mbind_set_occluder_light_mask = try api.createMethod("LightOccluder2D", "set_occluder_light_mask");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mask),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_occluder_light_mask, base, cargs, result);
    }

    pub fn setOccluderPolygon(self: *const Self, arg_polygon: *const godot.OccluderPolygon2D) !void {
        if (mbind_set_occluder_polygon == null) {
            mbind_set_occluder_polygon = try api.createMethod("LightOccluder2D", "set_occluder_polygon");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_polygon),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_occluder_polygon, base, cargs, result);
    }
};