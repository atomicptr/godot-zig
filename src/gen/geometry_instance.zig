// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_cast_shadows_setting: ?*c_api.godot_method_bind = null;
var mbind_get_extra_cull_margin: ?*c_api.godot_method_bind = null;
var mbind_get_flag: ?*c_api.godot_method_bind = null;
var mbind_get_generate_lightmap: ?*c_api.godot_method_bind = null;
var mbind_get_lightmap_scale: ?*c_api.godot_method_bind = null;
var mbind_get_lod_max_distance: ?*c_api.godot_method_bind = null;
var mbind_get_lod_max_hysteresis: ?*c_api.godot_method_bind = null;
var mbind_get_lod_min_distance: ?*c_api.godot_method_bind = null;
var mbind_get_lod_min_hysteresis: ?*c_api.godot_method_bind = null;
var mbind_get_material_override: ?*c_api.godot_method_bind = null;
var mbind_set_cast_shadows_setting: ?*c_api.godot_method_bind = null;
var mbind_set_custom_aabb: ?*c_api.godot_method_bind = null;
var mbind_set_extra_cull_margin: ?*c_api.godot_method_bind = null;
var mbind_set_flag: ?*c_api.godot_method_bind = null;
var mbind_set_generate_lightmap: ?*c_api.godot_method_bind = null;
var mbind_set_lightmap_scale: ?*c_api.godot_method_bind = null;
var mbind_set_lod_max_distance: ?*c_api.godot_method_bind = null;
var mbind_set_lod_max_hysteresis: ?*c_api.godot_method_bind = null;
var mbind_set_lod_min_distance: ?*c_api.godot_method_bind = null;
var mbind_set_lod_min_hysteresis: ?*c_api.godot_method_bind = null;
var mbind_set_material_override: ?*c_api.godot_method_bind = null;
var mbind_geometry_instance_constructor: ?fn () ?*c_api.godot_object = null;

pub const GeometryInstance = struct {
    const Self = @This();
    pub const BaseClass = godot.VisualInstance;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_geometry_instance_constructor == null) {
            mbind_geometry_instance_constructor = try api.createConstructor("GeometryInstance");
        }
        return api.createObject(Self, mbind_geometry_instance_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getCastShadowsSetting(self: *const Self) !i32 {
        if (mbind_get_cast_shadows_setting == null) {
            mbind_get_cast_shadows_setting = try api.createMethod("GeometryInstance", "get_cast_shadows_setting");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_cast_shadows_setting, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getExtraCullMargin(self: *const Self) !f32 {
        if (mbind_get_extra_cull_margin == null) {
            mbind_get_extra_cull_margin = try api.createMethod("GeometryInstance", "get_extra_cull_margin");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_extra_cull_margin, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getFlag(self: *const Self, arg_flag: i32) !bool {
        if (mbind_get_flag == null) {
            mbind_get_flag = try api.createMethod("GeometryInstance", "get_flag");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_flag),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_flag, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getGenerateLightmap(self: *const Self) !bool {
        if (mbind_get_generate_lightmap == null) {
            mbind_get_generate_lightmap = try api.createMethod("GeometryInstance", "get_generate_lightmap");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_generate_lightmap, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getLightmapScale(self: *const Self) !i32 {
        if (mbind_get_lightmap_scale == null) {
            mbind_get_lightmap_scale = try api.createMethod("GeometryInstance", "get_lightmap_scale");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_lightmap_scale, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getLodMaxDistance(self: *const Self) !f32 {
        if (mbind_get_lod_max_distance == null) {
            mbind_get_lod_max_distance = try api.createMethod("GeometryInstance", "get_lod_max_distance");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_lod_max_distance, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getLodMaxHysteresis(self: *const Self) !f32 {
        if (mbind_get_lod_max_hysteresis == null) {
            mbind_get_lod_max_hysteresis = try api.createMethod("GeometryInstance", "get_lod_max_hysteresis");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_lod_max_hysteresis, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getLodMinDistance(self: *const Self) !f32 {
        if (mbind_get_lod_min_distance == null) {
            mbind_get_lod_min_distance = try api.createMethod("GeometryInstance", "get_lod_min_distance");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_lod_min_distance, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getLodMinHysteresis(self: *const Self) !f32 {
        if (mbind_get_lod_min_hysteresis == null) {
            mbind_get_lod_min_hysteresis = try api.createMethod("GeometryInstance", "get_lod_min_hysteresis");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_lod_min_hysteresis, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getMaterialOverride(self: *const Self) !godot.Material {
        if (mbind_get_material_override == null) {
            mbind_get_material_override = try api.createMethod("GeometryInstance", "get_material_override");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_material_override, base, cargs, result);
        return @ptrCast(*godot.Material, @alignCast(@alignOf(&godot.Material), result)).*;
    }

    pub fn setCastShadowsSetting(self: *const Self, arg_shadow_casting_setting: i32) !void {
        if (mbind_set_cast_shadows_setting == null) {
            mbind_set_cast_shadows_setting = try api.createMethod("GeometryInstance", "set_cast_shadows_setting");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_shadow_casting_setting),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_cast_shadows_setting, base, cargs, result);
    }

    pub fn setCustomAabb(self: *const Self, arg_aabb: *const godot.AABB) !void {
        if (mbind_set_custom_aabb == null) {
            mbind_set_custom_aabb = try api.createMethod("GeometryInstance", "set_custom_aabb");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_aabb),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_custom_aabb, base, cargs, result);
    }

    pub fn setExtraCullMargin(self: *const Self, arg_margin: f32) !void {
        if (mbind_set_extra_cull_margin == null) {
            mbind_set_extra_cull_margin = try api.createMethod("GeometryInstance", "set_extra_cull_margin");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_margin),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_extra_cull_margin, base, cargs, result);
    }

    pub fn setFlag(self: *const Self, arg_flag: i32, arg_value: bool) !void {
        if (mbind_set_flag == null) {
            mbind_set_flag = try api.createMethod("GeometryInstance", "set_flag");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_flag),
            @ptrCast(*const anyopaque, *arg_value),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_flag, base, cargs, result);
    }

    pub fn setGenerateLightmap(self: *const Self, arg_enabled: bool) !void {
        if (mbind_set_generate_lightmap == null) {
            mbind_set_generate_lightmap = try api.createMethod("GeometryInstance", "set_generate_lightmap");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enabled),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_generate_lightmap, base, cargs, result);
    }

    pub fn setLightmapScale(self: *const Self, arg_scale: i32) !void {
        if (mbind_set_lightmap_scale == null) {
            mbind_set_lightmap_scale = try api.createMethod("GeometryInstance", "set_lightmap_scale");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_scale),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_lightmap_scale, base, cargs, result);
    }

    pub fn setLodMaxDistance(self: *const Self, arg_mode: f32) !void {
        if (mbind_set_lod_max_distance == null) {
            mbind_set_lod_max_distance = try api.createMethod("GeometryInstance", "set_lod_max_distance");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_lod_max_distance, base, cargs, result);
    }

    pub fn setLodMaxHysteresis(self: *const Self, arg_mode: f32) !void {
        if (mbind_set_lod_max_hysteresis == null) {
            mbind_set_lod_max_hysteresis = try api.createMethod("GeometryInstance", "set_lod_max_hysteresis");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_lod_max_hysteresis, base, cargs, result);
    }

    pub fn setLodMinDistance(self: *const Self, arg_mode: f32) !void {
        if (mbind_set_lod_min_distance == null) {
            mbind_set_lod_min_distance = try api.createMethod("GeometryInstance", "set_lod_min_distance");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_lod_min_distance, base, cargs, result);
    }

    pub fn setLodMinHysteresis(self: *const Self, arg_mode: f32) !void {
        if (mbind_set_lod_min_hysteresis == null) {
            mbind_set_lod_min_hysteresis = try api.createMethod("GeometryInstance", "set_lod_min_hysteresis");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_lod_min_hysteresis, base, cargs, result);
    }

    pub fn setMaterialOverride(self: *const Self, arg_material: *const godot.Material) !void {
        if (mbind_set_material_override == null) {
            mbind_set_material_override = try api.createMethod("GeometryInstance", "set_material_override");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_material),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_material_override, base, cargs, result);
    }
};