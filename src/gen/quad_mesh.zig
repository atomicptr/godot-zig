// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const PrimitiveMesh = @import("primitive_mesh.zig").PrimitiveMesh;

// method bindings
var mbind_get_center_offset: ?*c_api.godot_method_bind = null;
var mbind_get_size: ?*c_api.godot_method_bind = null;
var mbind_set_center_offset: ?*c_api.godot_method_bind = null;
var mbind_set_size: ?*c_api.godot_method_bind = null;
var mbind_quad_mesh_constructor: ?fn () ?*c_api.godot_object = null;

pub const QuadMesh = struct {
    const Self = @This();
    const BaseClass = PrimitiveMesh;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_quad_mesh_constructor == null) {
            mbind_quad_mesh_constructor = try api.createConstructor("QuadMesh");
        }
        return api.createObject(Self, mbind_quad_mesh_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getCenterOffset(self: *const Self) !godot.Vector3 {
        if (mbind_get_center_offset == null) {
            mbind_get_center_offset = try api.createMethod("QuadMesh", "get_center_offset");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_center_offset, base, cargs, result);
        return @ptrCast(*godot.Vector3, @alignCast(@alignOf(&godot.Vector3), result)).*;
    }

    pub fn getSize(self: *const Self) !godot.Vector2 {
        if (mbind_get_size == null) {
            mbind_get_size = try api.createMethod("QuadMesh", "get_size");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_size, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn setCenterOffset(self: *const Self, arg_center_offset: *const godot.Vector3) !void {
        if (mbind_set_center_offset == null) {
            mbind_set_center_offset = try api.createMethod("QuadMesh", "set_center_offset");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_center_offset),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_center_offset, base, cargs, result);
    }

    pub fn setSize(self: *const Self, arg_size: *const godot.Vector2) !void {
        if (mbind_set_size == null) {
            mbind_set_size = try api.createMethod("QuadMesh", "set_size");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_size),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_size, base, cargs, result);
    }
};