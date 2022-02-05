// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const PrimitiveMesh = @import("primitive_mesh.zig").PrimitiveMesh;

// method bindings
var mbind_get_left_to_right: ?*c_api.godot_method_bind = null;
var mbind_get_size: ?*c_api.godot_method_bind = null;
var mbind_get_subdivide_depth: ?*c_api.godot_method_bind = null;
var mbind_get_subdivide_height: ?*c_api.godot_method_bind = null;
var mbind_get_subdivide_width: ?*c_api.godot_method_bind = null;
var mbind_set_left_to_right: ?*c_api.godot_method_bind = null;
var mbind_set_size: ?*c_api.godot_method_bind = null;
var mbind_set_subdivide_depth: ?*c_api.godot_method_bind = null;
var mbind_set_subdivide_height: ?*c_api.godot_method_bind = null;
var mbind_set_subdivide_width: ?*c_api.godot_method_bind = null;
var mbind_prism_mesh_constructor: ?fn () ?*c_api.godot_object = null;

pub const PrismMesh = struct {
    const Self = @This();
    const BaseClass = PrimitiveMesh;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_prism_mesh_constructor == null) {
            mbind_prism_mesh_constructor = try api.createConstructor("PrismMesh");
        }
        return api.createObject(Self, mbind_prism_mesh_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getLeftToRight(self: *const Self) !f32 {
        if (mbind_get_left_to_right == null) {
            mbind_get_left_to_right = try api.createMethod("PrismMesh", "get_left_to_right");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_left_to_right, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getSize(self: *const Self) !godot.Vector3 {
        if (mbind_get_size == null) {
            mbind_get_size = try api.createMethod("PrismMesh", "get_size");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_size, base, cargs, result);
        return @ptrCast(*godot.Vector3, @alignCast(@alignOf(&godot.Vector3), result)).*;
    }

    pub fn getSubdivideDepth(self: *const Self) !i32 {
        if (mbind_get_subdivide_depth == null) {
            mbind_get_subdivide_depth = try api.createMethod("PrismMesh", "get_subdivide_depth");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_subdivide_depth, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getSubdivideHeight(self: *const Self) !i32 {
        if (mbind_get_subdivide_height == null) {
            mbind_get_subdivide_height = try api.createMethod("PrismMesh", "get_subdivide_height");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_subdivide_height, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getSubdivideWidth(self: *const Self) !i32 {
        if (mbind_get_subdivide_width == null) {
            mbind_get_subdivide_width = try api.createMethod("PrismMesh", "get_subdivide_width");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_subdivide_width, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn setLeftToRight(self: *const Self, arg_left_to_right: f32) !void {
        if (mbind_set_left_to_right == null) {
            mbind_set_left_to_right = try api.createMethod("PrismMesh", "set_left_to_right");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_left_to_right),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_left_to_right, base, cargs, result);
    }

    pub fn setSize(self: *const Self, arg_size: *const godot.Vector3) !void {
        if (mbind_set_size == null) {
            mbind_set_size = try api.createMethod("PrismMesh", "set_size");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_size),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_size, base, cargs, result);
    }

    pub fn setSubdivideDepth(self: *const Self, arg_segments: i32) !void {
        if (mbind_set_subdivide_depth == null) {
            mbind_set_subdivide_depth = try api.createMethod("PrismMesh", "set_subdivide_depth");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_segments),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_subdivide_depth, base, cargs, result);
    }

    pub fn setSubdivideHeight(self: *const Self, arg_segments: i32) !void {
        if (mbind_set_subdivide_height == null) {
            mbind_set_subdivide_height = try api.createMethod("PrismMesh", "set_subdivide_height");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_segments),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_subdivide_height, base, cargs, result);
    }

    pub fn setSubdivideWidth(self: *const Self, arg_segments: i32) !void {
        if (mbind_set_subdivide_width == null) {
            mbind_set_subdivide_width = try api.createMethod("PrismMesh", "set_subdivide_width");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_segments),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_subdivide_width, base, cargs, result);
    }
};