// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_multimesh: ?*c_api.godot_method_bind = null;
var mbind_get_normal_map: ?*c_api.godot_method_bind = null;
var mbind_get_texture: ?*c_api.godot_method_bind = null;
var mbind_set_multimesh: ?*c_api.godot_method_bind = null;
var mbind_set_normal_map: ?*c_api.godot_method_bind = null;
var mbind_set_texture: ?*c_api.godot_method_bind = null;
var mbind_multi_mesh_instance_2d_constructor: ?fn () ?*c_api.godot_object = null;

pub const MultiMeshInstance2D = struct {
    const Self = @This();
    pub const BaseClass = godot.Node2D;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_multi_mesh_instance_2d_constructor == null) {
            mbind_multi_mesh_instance_2d_constructor = try api.createConstructor("MultiMeshInstance2D");
        }
        return api.createObject(Self, mbind_multi_mesh_instance_2d_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getMultimesh(self: *const Self) !godot.MultiMesh {
        if (mbind_get_multimesh == null) {
            mbind_get_multimesh = try api.createMethod("MultiMeshInstance2D", "get_multimesh");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_multimesh, base, cargs, result);
        return @ptrCast(*godot.MultiMesh, @alignCast(@alignOf(&godot.MultiMesh), result)).*;
    }

    pub fn getNormalMap(self: *const Self) !godot.Texture {
        if (mbind_get_normal_map == null) {
            mbind_get_normal_map = try api.createMethod("MultiMeshInstance2D", "get_normal_map");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_normal_map, base, cargs, result);
        return @ptrCast(*godot.Texture, @alignCast(@alignOf(&godot.Texture), result)).*;
    }

    pub fn getTexture(self: *const Self) !godot.Texture {
        if (mbind_get_texture == null) {
            mbind_get_texture = try api.createMethod("MultiMeshInstance2D", "get_texture");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_texture, base, cargs, result);
        return @ptrCast(*godot.Texture, @alignCast(@alignOf(&godot.Texture), result)).*;
    }

    pub fn setMultimesh(self: *const Self, arg_multimesh: *const godot.MultiMesh) !void {
        if (mbind_set_multimesh == null) {
            mbind_set_multimesh = try api.createMethod("MultiMeshInstance2D", "set_multimesh");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_multimesh),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_multimesh, base, cargs, result);
    }

    pub fn setNormalMap(self: *const Self, arg_normal_map: *const godot.Texture) !void {
        if (mbind_set_normal_map == null) {
            mbind_set_normal_map = try api.createMethod("MultiMeshInstance2D", "set_normal_map");
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
            mbind_set_texture = try api.createMethod("MultiMeshInstance2D", "set_texture");
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