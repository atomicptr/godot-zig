// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Resource = @import("resource.zig").Resource;

// method bindings
var mbind_add_user: ?*c_api.godot_method_bind = null;
var mbind_clear_data: ?*c_api.godot_method_bind = null;
var mbind_clear_users: ?*c_api.godot_method_bind = null;
var mbind_get_bounds: ?*c_api.godot_method_bind = null;
var mbind_get_cell_space_transform: ?*c_api.godot_method_bind = null;
var mbind_get_cell_subdiv: ?*c_api.godot_method_bind = null;
var mbind_get_energy: ?*c_api.godot_method_bind = null;
var mbind_get_octree: ?*c_api.godot_method_bind = null;
var mbind_get_user_count: ?*c_api.godot_method_bind = null;
var mbind_get_user_lightmap: ?*c_api.godot_method_bind = null;
var mbind_get_user_path: ?*c_api.godot_method_bind = null;
var mbind_is_interior: ?*c_api.godot_method_bind = null;
var mbind_set_bounds: ?*c_api.godot_method_bind = null;
var mbind_set_cell_space_transform: ?*c_api.godot_method_bind = null;
var mbind_set_cell_subdiv: ?*c_api.godot_method_bind = null;
var mbind_set_energy: ?*c_api.godot_method_bind = null;
var mbind_set_interior: ?*c_api.godot_method_bind = null;
var mbind_set_octree: ?*c_api.godot_method_bind = null;
var mbind_baked_lightmap_data_constructor: ?fn () ?*c_api.godot_object = null;

pub const BakedLightmapData = struct {
    const Self = @This();
    const BaseClass = Resource;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_baked_lightmap_data_constructor == null) {
            mbind_baked_lightmap_data_constructor = try api.createConstructor("BakedLightmapData");
        }
        return api.createObject(Self, mbind_baked_lightmap_data_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn addUser(self: *const Self, arg_path: *const godot.NodePath, arg_lightmap: *const godot.Resource, arg_lightmap_slice: i32, arg_lightmap_uv_rect: *const godot.Rect2, arg_instance: i32) !void {
        if (mbind_add_user == null) {
            mbind_add_user = try api.createMethod("BakedLightmapData", "add_user");
        }

        var result: ?*anyopaque = null;
        var args: [5]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_path),
            @ptrCast(*const anyopaque, arg_lightmap),
            @ptrCast(*const anyopaque, *arg_lightmap_slice),
            @ptrCast(*const anyopaque, arg_lightmap_uv_rect),
            @ptrCast(*const anyopaque, *arg_instance),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_user, base, cargs, result);
    }

    pub fn clearData(self: *const Self) !void {
        if (mbind_clear_data == null) {
            mbind_clear_data = try api.createMethod("BakedLightmapData", "clear_data");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_clear_data, base, cargs, result);
    }

    pub fn clearUsers(self: *const Self) !void {
        if (mbind_clear_users == null) {
            mbind_clear_users = try api.createMethod("BakedLightmapData", "clear_users");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_clear_users, base, cargs, result);
    }

    pub fn getBounds(self: *const Self) !godot.AABB {
        if (mbind_get_bounds == null) {
            mbind_get_bounds = try api.createMethod("BakedLightmapData", "get_bounds");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_bounds, base, cargs, result);
        return @ptrCast(*godot.AABB, @alignCast(@alignOf(&godot.AABB), result)).*;
    }

    pub fn getCellSpaceTransform(self: *const Self) !godot.Transform {
        if (mbind_get_cell_space_transform == null) {
            mbind_get_cell_space_transform = try api.createMethod("BakedLightmapData", "get_cell_space_transform");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_cell_space_transform, base, cargs, result);
        return @ptrCast(*godot.Transform, @alignCast(@alignOf(&godot.Transform), result)).*;
    }

    pub fn getCellSubdiv(self: *const Self) !i32 {
        if (mbind_get_cell_subdiv == null) {
            mbind_get_cell_subdiv = try api.createMethod("BakedLightmapData", "get_cell_subdiv");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_cell_subdiv, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getEnergy(self: *const Self) !f32 {
        if (mbind_get_energy == null) {
            mbind_get_energy = try api.createMethod("BakedLightmapData", "get_energy");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_energy, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getOctree(self: *const Self) !godot.PoolByteArray {
        if (mbind_get_octree == null) {
            mbind_get_octree = try api.createMethod("BakedLightmapData", "get_octree");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_octree, base, cargs, result);
        return @ptrCast(*godot.PoolByteArray, @alignCast(@alignOf(&godot.PoolByteArray), result)).*;
    }

    pub fn getUserCount(self: *const Self) !i32 {
        if (mbind_get_user_count == null) {
            mbind_get_user_count = try api.createMethod("BakedLightmapData", "get_user_count");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_user_count, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getUserLightmap(self: *const Self, arg_user_idx: i32) !godot.Resource {
        if (mbind_get_user_lightmap == null) {
            mbind_get_user_lightmap = try api.createMethod("BakedLightmapData", "get_user_lightmap");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_user_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_user_lightmap, base, cargs, result);
        return @ptrCast(*godot.Resource, @alignCast(@alignOf(&godot.Resource), result)).*;
    }

    pub fn getUserPath(self: *const Self, arg_user_idx: i32) !godot.NodePath {
        if (mbind_get_user_path == null) {
            mbind_get_user_path = try api.createMethod("BakedLightmapData", "get_user_path");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_user_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_user_path, base, cargs, result);
        return @ptrCast(*godot.NodePath, @alignCast(@alignOf(&godot.NodePath), result)).*;
    }

    pub fn isInterior(self: *const Self) !bool {
        if (mbind_is_interior == null) {
            mbind_is_interior = try api.createMethod("BakedLightmapData", "is_interior");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_interior, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setBounds(self: *const Self, arg_bounds: *const godot.AABB) !void {
        if (mbind_set_bounds == null) {
            mbind_set_bounds = try api.createMethod("BakedLightmapData", "set_bounds");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_bounds),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_bounds, base, cargs, result);
    }

    pub fn setCellSpaceTransform(self: *const Self, arg_xform: *const godot.Transform) !void {
        if (mbind_set_cell_space_transform == null) {
            mbind_set_cell_space_transform = try api.createMethod("BakedLightmapData", "set_cell_space_transform");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_xform),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_cell_space_transform, base, cargs, result);
    }

    pub fn setCellSubdiv(self: *const Self, arg_cell_subdiv: i32) !void {
        if (mbind_set_cell_subdiv == null) {
            mbind_set_cell_subdiv = try api.createMethod("BakedLightmapData", "set_cell_subdiv");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_cell_subdiv),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_cell_subdiv, base, cargs, result);
    }

    pub fn setEnergy(self: *const Self, arg_energy: f32) !void {
        if (mbind_set_energy == null) {
            mbind_set_energy = try api.createMethod("BakedLightmapData", "set_energy");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_energy),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_energy, base, cargs, result);
    }

    pub fn setInterior(self: *const Self, arg_interior: bool) !void {
        if (mbind_set_interior == null) {
            mbind_set_interior = try api.createMethod("BakedLightmapData", "set_interior");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_interior),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_interior, base, cargs, result);
    }

    pub fn setOctree(self: *const Self, arg_octree: *const godot.PoolByteArray) !void {
        if (mbind_set_octree == null) {
            mbind_set_octree = try api.createMethod("BakedLightmapData", "set_octree");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_octree),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_octree, base, cargs, result);
    }
};