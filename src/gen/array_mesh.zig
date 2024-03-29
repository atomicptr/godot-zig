// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_add_blend_shape: ?*c_api.godot_method_bind = null;
var mbind_add_surface_from_arrays: ?*c_api.godot_method_bind = null;
var mbind_clear_blend_shapes: ?*c_api.godot_method_bind = null;
var mbind_clear_surfaces: ?*c_api.godot_method_bind = null;
var mbind_get_blend_shape_count: ?*c_api.godot_method_bind = null;
var mbind_get_blend_shape_mode: ?*c_api.godot_method_bind = null;
var mbind_get_blend_shape_name: ?*c_api.godot_method_bind = null;
var mbind_get_custom_aabb: ?*c_api.godot_method_bind = null;
var mbind_lightmap_unwrap: ?*c_api.godot_method_bind = null;
var mbind_regen_normalmaps: ?*c_api.godot_method_bind = null;
var mbind_set_blend_shape_mode: ?*c_api.godot_method_bind = null;
var mbind_set_blend_shape_name: ?*c_api.godot_method_bind = null;
var mbind_set_custom_aabb: ?*c_api.godot_method_bind = null;
var mbind_surface_find_by_name: ?*c_api.godot_method_bind = null;
var mbind_surface_get_array_index_len: ?*c_api.godot_method_bind = null;
var mbind_surface_get_array_len: ?*c_api.godot_method_bind = null;
var mbind_surface_get_format: ?*c_api.godot_method_bind = null;
var mbind_surface_get_name: ?*c_api.godot_method_bind = null;
var mbind_surface_get_primitive_type: ?*c_api.godot_method_bind = null;
var mbind_surface_remove: ?*c_api.godot_method_bind = null;
var mbind_surface_set_name: ?*c_api.godot_method_bind = null;
var mbind_surface_update_region: ?*c_api.godot_method_bind = null;
var mbind_array_mesh_constructor: ?fn () ?*c_api.godot_object = null;

pub const ArrayMesh = struct {
    const Self = @This();
    pub const BaseClass = godot.Mesh;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_array_mesh_constructor == null) {
            mbind_array_mesh_constructor = try api.createConstructor("ArrayMesh");
        }
        return api.createObject(Self, mbind_array_mesh_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn addBlendShape(self: *const Self, arg_name: *const godot.String) !void {
        if (mbind_add_blend_shape == null) {
            mbind_add_blend_shape = try api.createMethod("ArrayMesh", "add_blend_shape");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_blend_shape, base, cargs, result);
    }

    pub fn addSurfaceFromArrays(self: *const Self, arg_primitive: i32, arg_arrays: *const godot.Array, arg_blend_shapes: *const godot.Array, arg_compress_flags: i32) !void {
        if (mbind_add_surface_from_arrays == null) {
            mbind_add_surface_from_arrays = try api.createMethod("ArrayMesh", "add_surface_from_arrays");
        }

        var result: ?*anyopaque = null;
        var args: [4]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_primitive),
            @ptrCast(*const anyopaque, arg_arrays),
            @ptrCast(*const anyopaque, arg_blend_shapes),
            @ptrCast(*const anyopaque, *arg_compress_flags),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_surface_from_arrays, base, cargs, result);
    }

    pub fn clearBlendShapes(self: *const Self) !void {
        if (mbind_clear_blend_shapes == null) {
            mbind_clear_blend_shapes = try api.createMethod("ArrayMesh", "clear_blend_shapes");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_clear_blend_shapes, base, cargs, result);
    }

    pub fn clearSurfaces(self: *const Self) !void {
        if (mbind_clear_surfaces == null) {
            mbind_clear_surfaces = try api.createMethod("ArrayMesh", "clear_surfaces");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_clear_surfaces, base, cargs, result);
    }

    pub fn getBlendShapeCount(self: *const Self) !i32 {
        if (mbind_get_blend_shape_count == null) {
            mbind_get_blend_shape_count = try api.createMethod("ArrayMesh", "get_blend_shape_count");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_blend_shape_count, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getBlendShapeMode(self: *const Self) !i32 {
        if (mbind_get_blend_shape_mode == null) {
            mbind_get_blend_shape_mode = try api.createMethod("ArrayMesh", "get_blend_shape_mode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_blend_shape_mode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getBlendShapeName(self: *const Self, arg_index: i32) !godot.String {
        if (mbind_get_blend_shape_name == null) {
            mbind_get_blend_shape_name = try api.createMethod("ArrayMesh", "get_blend_shape_name");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_index),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_blend_shape_name, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getCustomAabb(self: *const Self) !godot.AABB {
        if (mbind_get_custom_aabb == null) {
            mbind_get_custom_aabb = try api.createMethod("ArrayMesh", "get_custom_aabb");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_custom_aabb, base, cargs, result);
        return @ptrCast(*godot.AABB, @alignCast(@alignOf(&godot.AABB), result)).*;
    }

    pub fn lightmapUnwrap(self: *const Self, arg_transform: *const godot.Transform, arg_texel_size: f32) !i32 {
        if (mbind_lightmap_unwrap == null) {
            mbind_lightmap_unwrap = try api.createMethod("ArrayMesh", "lightmap_unwrap");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_transform),
            @ptrCast(*const anyopaque, *arg_texel_size),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_lightmap_unwrap, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn regenNormalmaps(self: *const Self) !void {
        if (mbind_regen_normalmaps == null) {
            mbind_regen_normalmaps = try api.createMethod("ArrayMesh", "regen_normalmaps");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_regen_normalmaps, base, cargs, result);
    }

    pub fn setBlendShapeMode(self: *const Self, arg_mode: i32) !void {
        if (mbind_set_blend_shape_mode == null) {
            mbind_set_blend_shape_mode = try api.createMethod("ArrayMesh", "set_blend_shape_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_blend_shape_mode, base, cargs, result);
    }

    pub fn setBlendShapeName(self: *const Self, arg_index: i32, arg_name: *const godot.String) !void {
        if (mbind_set_blend_shape_name == null) {
            mbind_set_blend_shape_name = try api.createMethod("ArrayMesh", "set_blend_shape_name");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_index),
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_blend_shape_name, base, cargs, result);
    }

    pub fn setCustomAabb(self: *const Self, arg_aabb: *const godot.AABB) !void {
        if (mbind_set_custom_aabb == null) {
            mbind_set_custom_aabb = try api.createMethod("ArrayMesh", "set_custom_aabb");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_aabb),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_custom_aabb, base, cargs, result);
    }

    pub fn surfaceFindByName(self: *const Self, arg_name: *const godot.String) !i32 {
        if (mbind_surface_find_by_name == null) {
            mbind_surface_find_by_name = try api.createMethod("ArrayMesh", "surface_find_by_name");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_surface_find_by_name, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn surfaceGetArrayIndexLen(self: *const Self, arg_surf_idx: i32) !i32 {
        if (mbind_surface_get_array_index_len == null) {
            mbind_surface_get_array_index_len = try api.createMethod("ArrayMesh", "surface_get_array_index_len");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_surf_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_surface_get_array_index_len, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn surfaceGetArrayLen(self: *const Self, arg_surf_idx: i32) !i32 {
        if (mbind_surface_get_array_len == null) {
            mbind_surface_get_array_len = try api.createMethod("ArrayMesh", "surface_get_array_len");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_surf_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_surface_get_array_len, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn surfaceGetFormat(self: *const Self, arg_surf_idx: i32) !i32 {
        if (mbind_surface_get_format == null) {
            mbind_surface_get_format = try api.createMethod("ArrayMesh", "surface_get_format");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_surf_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_surface_get_format, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn surfaceGetName(self: *const Self, arg_surf_idx: i32) !godot.String {
        if (mbind_surface_get_name == null) {
            mbind_surface_get_name = try api.createMethod("ArrayMesh", "surface_get_name");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_surf_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_surface_get_name, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn surfaceGetPrimitiveType(self: *const Self, arg_surf_idx: i32) !i32 {
        if (mbind_surface_get_primitive_type == null) {
            mbind_surface_get_primitive_type = try api.createMethod("ArrayMesh", "surface_get_primitive_type");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_surf_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_surface_get_primitive_type, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn surfaceRemove(self: *const Self, arg_surf_idx: i32) !void {
        if (mbind_surface_remove == null) {
            mbind_surface_remove = try api.createMethod("ArrayMesh", "surface_remove");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_surf_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_surface_remove, base, cargs, result);
    }

    pub fn surfaceSetName(self: *const Self, arg_surf_idx: i32, arg_name: *const godot.String) !void {
        if (mbind_surface_set_name == null) {
            mbind_surface_set_name = try api.createMethod("ArrayMesh", "surface_set_name");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_surf_idx),
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_surface_set_name, base, cargs, result);
    }

    pub fn surfaceUpdateRegion(self: *const Self, arg_surf_idx: i32, arg_offset: i32, arg_data: *const godot.PoolByteArray) !void {
        if (mbind_surface_update_region == null) {
            mbind_surface_update_region = try api.createMethod("ArrayMesh", "surface_update_region");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_surf_idx),
            @ptrCast(*const anyopaque, *arg_offset),
            @ptrCast(*const anyopaque, arg_data),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_surface_update_region, base, cargs, result);
    }
};