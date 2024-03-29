// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_mesh: ?*c_api.godot_method_bind = null;
var mbind_get_normal_map: ?*c_api.godot_method_bind = null;
var mbind_get_texture: ?*c_api.godot_method_bind = null;
var mbind_set_mesh: ?*c_api.godot_method_bind = null;
var mbind_set_normal_map: ?*c_api.godot_method_bind = null;
var mbind_set_texture: ?*c_api.godot_method_bind = null;
var mbind_mesh_instance_2d_constructor: ?fn () ?*c_api.godot_object = null;

pub const MeshInstance2D = struct {
    const Self = @This();
    pub const BaseClass = godot.Node2D;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_mesh_instance_2d_constructor == null) {
            mbind_mesh_instance_2d_constructor = try api.createConstructor("MeshInstance2D");
        }
        return api.createObject(Self, mbind_mesh_instance_2d_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getMesh(self: *const Self) !godot.Mesh {
        if (mbind_get_mesh == null) {
            mbind_get_mesh = try api.createMethod("MeshInstance2D", "get_mesh");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_mesh, base, cargs, result);
        return @ptrCast(*godot.Mesh, @alignCast(@alignOf(&godot.Mesh), result)).*;
    }

    pub fn getNormalMap(self: *const Self) !godot.Texture {
        if (mbind_get_normal_map == null) {
            mbind_get_normal_map = try api.createMethod("MeshInstance2D", "get_normal_map");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_normal_map, base, cargs, result);
        return @ptrCast(*godot.Texture, @alignCast(@alignOf(&godot.Texture), result)).*;
    }

    pub fn getTexture(self: *const Self) !godot.Texture {
        if (mbind_get_texture == null) {
            mbind_get_texture = try api.createMethod("MeshInstance2D", "get_texture");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_texture, base, cargs, result);
        return @ptrCast(*godot.Texture, @alignCast(@alignOf(&godot.Texture), result)).*;
    }

    pub fn setMesh(self: *const Self, arg_mesh: *const godot.Mesh) !void {
        if (mbind_set_mesh == null) {
            mbind_set_mesh = try api.createMethod("MeshInstance2D", "set_mesh");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_mesh),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_mesh, base, cargs, result);
    }

    pub fn setNormalMap(self: *const Self, arg_normal_map: *const godot.Texture) !void {
        if (mbind_set_normal_map == null) {
            mbind_set_normal_map = try api.createMethod("MeshInstance2D", "set_normal_map");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_normal_map),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_normal_map, base, cargs, result);
    }

    pub fn setTexture(self: *const Self, arg_texture: *const godot.Texture) !void {
        if (mbind_set_texture == null) {
            mbind_set_texture = try api.createMethod("MeshInstance2D", "set_texture");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_texture),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_texture, base, cargs, result);
    }
};