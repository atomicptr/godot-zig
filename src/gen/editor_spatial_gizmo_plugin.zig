// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Resource = @import("resource.zig").Resource;

// method bindings
var mbind_add_material: ?*c_api.godot_method_bind = null;
var mbind_create_handle_material: ?*c_api.godot_method_bind = null;
var mbind_create_icon_material: ?*c_api.godot_method_bind = null;
var mbind_create_material: ?*c_api.godot_method_bind = null;
var mbind_get_material: ?*c_api.godot_method_bind = null;
var mbind_editor_spatial_gizmo_plugin_constructor: ?fn () ?*c_api.godot_object = null;

pub const EditorSpatialGizmoPlugin = struct {
    const Self = @This();
    const BaseClass = Resource;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_editor_spatial_gizmo_plugin_constructor == null) {
            mbind_editor_spatial_gizmo_plugin_constructor = try api.createConstructor("EditorSpatialGizmoPlugin");
        }
        return api.createObject(Self, mbind_editor_spatial_gizmo_plugin_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn addMaterial(self: *const Self, arg_name: *const godot.String, arg_material: *const godot.SpatialMaterial) !void {
        if (mbind_add_material == null) {
            mbind_add_material = try api.createMethod("EditorSpatialGizmoPlugin", "add_material");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
            @ptrCast(*const anyopaque, arg_material),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_material, base, cargs, result);
    }

    pub fn createHandleMaterial(self: *const Self, arg_name: *const godot.String, arg_billboard: bool, arg_texture: *const godot.Texture) !void {
        if (mbind_create_handle_material == null) {
            mbind_create_handle_material = try api.createMethod("EditorSpatialGizmoPlugin", "create_handle_material");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
            @ptrCast(*const anyopaque, *arg_billboard),
            @ptrCast(*const anyopaque, arg_texture),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_create_handle_material, base, cargs, result);
    }

    pub fn createIconMaterial(self: *const Self, arg_name: *const godot.String, arg_texture: *const godot.Texture, arg_on_top: bool, arg_color: *const godot.Color) !void {
        if (mbind_create_icon_material == null) {
            mbind_create_icon_material = try api.createMethod("EditorSpatialGizmoPlugin", "create_icon_material");
        }

        var result: ?*anyopaque = null;
        var args: [4]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
            @ptrCast(*const anyopaque, arg_texture),
            @ptrCast(*const anyopaque, *arg_on_top),
            @ptrCast(*const anyopaque, arg_color),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_create_icon_material, base, cargs, result);
    }

    pub fn createMaterial(self: *const Self, arg_name: *const godot.String, arg_color: *const godot.Color, arg_billboard: bool, arg_on_top: bool, arg_use_vertex_color: bool) !void {
        if (mbind_create_material == null) {
            mbind_create_material = try api.createMethod("EditorSpatialGizmoPlugin", "create_material");
        }

        var result: ?*anyopaque = null;
        var args: [5]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
            @ptrCast(*const anyopaque, arg_color),
            @ptrCast(*const anyopaque, *arg_billboard),
            @ptrCast(*const anyopaque, *arg_on_top),
            @ptrCast(*const anyopaque, *arg_use_vertex_color),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_create_material, base, cargs, result);
    }

    pub fn getMaterial(self: *const Self, arg_name: *const godot.String, arg_gizmo: *const godot.EditorSpatialGizmo) !godot.SpatialMaterial {
        if (mbind_get_material == null) {
            mbind_get_material = try api.createMethod("EditorSpatialGizmoPlugin", "get_material");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
            @ptrCast(*const anyopaque, arg_gizmo),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_material, base, cargs, result);
        return @ptrCast(*godot.SpatialMaterial, @alignCast(@alignOf(&godot.SpatialMaterial), result)).*;
    }
};