// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_create_convex_collision: ?*c_api.godot_method_bind = null;
var mbind_create_debug_tangents: ?*c_api.godot_method_bind = null;
var mbind_create_multiple_convex_collisions: ?*c_api.godot_method_bind = null;
var mbind_create_trimesh_collision: ?*c_api.godot_method_bind = null;
var mbind_get_active_material: ?*c_api.godot_method_bind = null;
var mbind_get_mesh: ?*c_api.godot_method_bind = null;
var mbind_get_skeleton_path: ?*c_api.godot_method_bind = null;
var mbind_get_skin: ?*c_api.godot_method_bind = null;
var mbind_get_surface_material: ?*c_api.godot_method_bind = null;
var mbind_get_surface_material_count: ?*c_api.godot_method_bind = null;
var mbind_is_software_skinning_transform_normals_enabled: ?*c_api.godot_method_bind = null;
var mbind_set_mesh: ?*c_api.godot_method_bind = null;
var mbind_set_skeleton_path: ?*c_api.godot_method_bind = null;
var mbind_set_skin: ?*c_api.godot_method_bind = null;
var mbind_set_software_skinning_transform_normals: ?*c_api.godot_method_bind = null;
var mbind_set_surface_material: ?*c_api.godot_method_bind = null;
var mbind_mesh_instance_constructor: ?fn () ?*c_api.godot_object = null;

pub const MeshInstance = struct {
    const Self = @This();
    pub const BaseClass = godot.GeometryInstance;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_mesh_instance_constructor == null) {
            mbind_mesh_instance_constructor = try api.createConstructor("MeshInstance");
        }
        return api.createObject(Self, mbind_mesh_instance_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn createConvexCollision(self: *const Self, arg_clean: bool, arg_simplify: bool) !void {
        if (mbind_create_convex_collision == null) {
            mbind_create_convex_collision = try api.createMethod("MeshInstance", "create_convex_collision");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_clean),
            @ptrCast(*const anyopaque, *arg_simplify),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_create_convex_collision, base, cargs, result);
    }

    pub fn createDebugTangents(self: *const Self) !void {
        if (mbind_create_debug_tangents == null) {
            mbind_create_debug_tangents = try api.createMethod("MeshInstance", "create_debug_tangents");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_create_debug_tangents, base, cargs, result);
    }

    pub fn createMultipleConvexCollisions(self: *const Self) !void {
        if (mbind_create_multiple_convex_collisions == null) {
            mbind_create_multiple_convex_collisions = try api.createMethod("MeshInstance", "create_multiple_convex_collisions");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_create_multiple_convex_collisions, base, cargs, result);
    }

    pub fn createTrimeshCollision(self: *const Self) !void {
        if (mbind_create_trimesh_collision == null) {
            mbind_create_trimesh_collision = try api.createMethod("MeshInstance", "create_trimesh_collision");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_create_trimesh_collision, base, cargs, result);
    }

    pub fn getActiveMaterial(self: *const Self, arg_surface: i32) !godot.Material {
        if (mbind_get_active_material == null) {
            mbind_get_active_material = try api.createMethod("MeshInstance", "get_active_material");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_surface),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_active_material, base, cargs, result);
        return @ptrCast(*godot.Material, @alignCast(@alignOf(&godot.Material), result)).*;
    }

    pub fn getMesh(self: *const Self) !godot.Mesh {
        if (mbind_get_mesh == null) {
            mbind_get_mesh = try api.createMethod("MeshInstance", "get_mesh");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_mesh, base, cargs, result);
        return @ptrCast(*godot.Mesh, @alignCast(@alignOf(&godot.Mesh), result)).*;
    }

    pub fn getSkeletonPath(self: *const Self) !godot.NodePath {
        if (mbind_get_skeleton_path == null) {
            mbind_get_skeleton_path = try api.createMethod("MeshInstance", "get_skeleton_path");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_skeleton_path, base, cargs, result);
        return @ptrCast(*godot.NodePath, @alignCast(@alignOf(&godot.NodePath), result)).*;
    }

    pub fn getSkin(self: *const Self) !godot.Skin {
        if (mbind_get_skin == null) {
            mbind_get_skin = try api.createMethod("MeshInstance", "get_skin");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_skin, base, cargs, result);
        return @ptrCast(*godot.Skin, @alignCast(@alignOf(&godot.Skin), result)).*;
    }

    pub fn getSurfaceMaterial(self: *const Self, arg_surface: i32) !godot.Material {
        if (mbind_get_surface_material == null) {
            mbind_get_surface_material = try api.createMethod("MeshInstance", "get_surface_material");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_surface),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_surface_material, base, cargs, result);
        return @ptrCast(*godot.Material, @alignCast(@alignOf(&godot.Material), result)).*;
    }

    pub fn getSurfaceMaterialCount(self: *const Self) !i32 {
        if (mbind_get_surface_material_count == null) {
            mbind_get_surface_material_count = try api.createMethod("MeshInstance", "get_surface_material_count");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_surface_material_count, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn isSoftwareSkinningTransformNormalsEnabled(self: *const Self) !bool {
        if (mbind_is_software_skinning_transform_normals_enabled == null) {
            mbind_is_software_skinning_transform_normals_enabled = try api.createMethod("MeshInstance", "is_software_skinning_transform_normals_enabled");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_software_skinning_transform_normals_enabled, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setMesh(self: *const Self, arg_mesh: *const godot.Mesh) !void {
        if (mbind_set_mesh == null) {
            mbind_set_mesh = try api.createMethod("MeshInstance", "set_mesh");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_mesh),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_mesh, base, cargs, result);
    }

    pub fn setSkeletonPath(self: *const Self, arg_skeleton_path: *const godot.NodePath) !void {
        if (mbind_set_skeleton_path == null) {
            mbind_set_skeleton_path = try api.createMethod("MeshInstance", "set_skeleton_path");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_skeleton_path),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_skeleton_path, base, cargs, result);
    }

    pub fn setSkin(self: *const Self, arg_skin: *const godot.Skin) !void {
        if (mbind_set_skin == null) {
            mbind_set_skin = try api.createMethod("MeshInstance", "set_skin");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_skin),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_skin, base, cargs, result);
    }

    pub fn setSoftwareSkinningTransformNormals(self: *const Self, arg_enabled: bool) !void {
        if (mbind_set_software_skinning_transform_normals == null) {
            mbind_set_software_skinning_transform_normals = try api.createMethod("MeshInstance", "set_software_skinning_transform_normals");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enabled),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_software_skinning_transform_normals, base, cargs, result);
    }

    pub fn setSurfaceMaterial(self: *const Self, arg_surface: i32, arg_material: *const godot.Material) !void {
        if (mbind_set_surface_material == null) {
            mbind_set_surface_material = try api.createMethod("MeshInstance", "set_surface_material");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_surface),
            @ptrCast(*const anyopaque, arg_material),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_surface_material, base, cargs, result);
    }
};