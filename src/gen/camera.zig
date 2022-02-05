// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Spatial = @import("spatial.zig").Spatial;

// method bindings
var mbind_clear_current: ?*c_api.godot_method_bind = null;
var mbind_get_camera_rid: ?*c_api.godot_method_bind = null;
var mbind_get_camera_transform: ?*c_api.godot_method_bind = null;
var mbind_get_cull_mask: ?*c_api.godot_method_bind = null;
var mbind_get_cull_mask_bit: ?*c_api.godot_method_bind = null;
var mbind_get_doppler_tracking: ?*c_api.godot_method_bind = null;
var mbind_get_environment: ?*c_api.godot_method_bind = null;
var mbind_get_fov: ?*c_api.godot_method_bind = null;
var mbind_get_frustum: ?*c_api.godot_method_bind = null;
var mbind_get_frustum_offset: ?*c_api.godot_method_bind = null;
var mbind_get_h_offset: ?*c_api.godot_method_bind = null;
var mbind_get_keep_aspect_mode: ?*c_api.godot_method_bind = null;
var mbind_get_projection: ?*c_api.godot_method_bind = null;
var mbind_get_size: ?*c_api.godot_method_bind = null;
var mbind_get_v_offset: ?*c_api.godot_method_bind = null;
var mbind_get_zfar: ?*c_api.godot_method_bind = null;
var mbind_get_znear: ?*c_api.godot_method_bind = null;
var mbind_is_current: ?*c_api.godot_method_bind = null;
var mbind_is_position_behind: ?*c_api.godot_method_bind = null;
var mbind_make_current: ?*c_api.godot_method_bind = null;
var mbind_project_local_ray_normal: ?*c_api.godot_method_bind = null;
var mbind_project_position: ?*c_api.godot_method_bind = null;
var mbind_project_ray_normal: ?*c_api.godot_method_bind = null;
var mbind_project_ray_origin: ?*c_api.godot_method_bind = null;
var mbind_set_cull_mask: ?*c_api.godot_method_bind = null;
var mbind_set_cull_mask_bit: ?*c_api.godot_method_bind = null;
var mbind_set_current: ?*c_api.godot_method_bind = null;
var mbind_set_doppler_tracking: ?*c_api.godot_method_bind = null;
var mbind_set_environment: ?*c_api.godot_method_bind = null;
var mbind_set_fov: ?*c_api.godot_method_bind = null;
var mbind_set_frustum: ?*c_api.godot_method_bind = null;
var mbind_set_frustum_offset: ?*c_api.godot_method_bind = null;
var mbind_set_h_offset: ?*c_api.godot_method_bind = null;
var mbind_set_keep_aspect_mode: ?*c_api.godot_method_bind = null;
var mbind_set_orthogonal: ?*c_api.godot_method_bind = null;
var mbind_set_perspective: ?*c_api.godot_method_bind = null;
var mbind_set_projection: ?*c_api.godot_method_bind = null;
var mbind_set_size: ?*c_api.godot_method_bind = null;
var mbind_set_v_offset: ?*c_api.godot_method_bind = null;
var mbind_set_zfar: ?*c_api.godot_method_bind = null;
var mbind_set_znear: ?*c_api.godot_method_bind = null;
var mbind_unproject_position: ?*c_api.godot_method_bind = null;
var mbind_camera_constructor: ?fn () ?*c_api.godot_object = null;

pub const Camera = struct {
    const Self = @This();
    const BaseClass = Spatial;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_camera_constructor == null) {
            mbind_camera_constructor = try api.createConstructor("Camera");
        }
        return api.createObject(Self, mbind_camera_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn clearCurrent(self: *const Self, arg_enable_next: bool) !void {
        if (mbind_clear_current == null) {
            mbind_clear_current = try api.createMethod("Camera", "clear_current");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable_next),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_clear_current, base, cargs, result);
    }

    pub fn getCameraRid(self: *const Self) !godot.RID {
        if (mbind_get_camera_rid == null) {
            mbind_get_camera_rid = try api.createMethod("Camera", "get_camera_rid");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_camera_rid, base, cargs, result);
        return @ptrCast(*godot.RID, @alignCast(@alignOf(&godot.RID), result)).*;
    }

    pub fn getCameraTransform(self: *const Self) !godot.Transform {
        if (mbind_get_camera_transform == null) {
            mbind_get_camera_transform = try api.createMethod("Camera", "get_camera_transform");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_camera_transform, base, cargs, result);
        return @ptrCast(*godot.Transform, @alignCast(@alignOf(&godot.Transform), result)).*;
    }

    pub fn getCullMask(self: *const Self) !i32 {
        if (mbind_get_cull_mask == null) {
            mbind_get_cull_mask = try api.createMethod("Camera", "get_cull_mask");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_cull_mask, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getCullMaskBit(self: *const Self, arg_layer: i32) !bool {
        if (mbind_get_cull_mask_bit == null) {
            mbind_get_cull_mask_bit = try api.createMethod("Camera", "get_cull_mask_bit");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_layer),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_cull_mask_bit, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getDopplerTracking(self: *const Self) !i32 {
        if (mbind_get_doppler_tracking == null) {
            mbind_get_doppler_tracking = try api.createMethod("Camera", "get_doppler_tracking");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_doppler_tracking, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getEnvironment(self: *const Self) !godot.Environment {
        if (mbind_get_environment == null) {
            mbind_get_environment = try api.createMethod("Camera", "get_environment");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_environment, base, cargs, result);
        return @ptrCast(*godot.Environment, @alignCast(@alignOf(&godot.Environment), result)).*;
    }

    pub fn getFov(self: *const Self) !f32 {
        if (mbind_get_fov == null) {
            mbind_get_fov = try api.createMethod("Camera", "get_fov");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_fov, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getFrustum(self: *const Self) !godot.Array {
        if (mbind_get_frustum == null) {
            mbind_get_frustum = try api.createMethod("Camera", "get_frustum");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_frustum, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getFrustumOffset(self: *const Self) !godot.Vector2 {
        if (mbind_get_frustum_offset == null) {
            mbind_get_frustum_offset = try api.createMethod("Camera", "get_frustum_offset");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_frustum_offset, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getHOffset(self: *const Self) !f32 {
        if (mbind_get_h_offset == null) {
            mbind_get_h_offset = try api.createMethod("Camera", "get_h_offset");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_h_offset, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getKeepAspectMode(self: *const Self) !i32 {
        if (mbind_get_keep_aspect_mode == null) {
            mbind_get_keep_aspect_mode = try api.createMethod("Camera", "get_keep_aspect_mode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_keep_aspect_mode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getProjection(self: *const Self) !i32 {
        if (mbind_get_projection == null) {
            mbind_get_projection = try api.createMethod("Camera", "get_projection");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_projection, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getSize(self: *const Self) !f32 {
        if (mbind_get_size == null) {
            mbind_get_size = try api.createMethod("Camera", "get_size");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_size, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getVOffset(self: *const Self) !f32 {
        if (mbind_get_v_offset == null) {
            mbind_get_v_offset = try api.createMethod("Camera", "get_v_offset");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_v_offset, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getZfar(self: *const Self) !f32 {
        if (mbind_get_zfar == null) {
            mbind_get_zfar = try api.createMethod("Camera", "get_zfar");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_zfar, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getZnear(self: *const Self) !f32 {
        if (mbind_get_znear == null) {
            mbind_get_znear = try api.createMethod("Camera", "get_znear");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_znear, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn isCurrent(self: *const Self) !bool {
        if (mbind_is_current == null) {
            mbind_is_current = try api.createMethod("Camera", "is_current");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_current, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isPositionBehind(self: *const Self, arg_world_point: *const godot.Vector3) !bool {
        if (mbind_is_position_behind == null) {
            mbind_is_position_behind = try api.createMethod("Camera", "is_position_behind");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_world_point),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_position_behind, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn makeCurrent(self: *const Self) !void {
        if (mbind_make_current == null) {
            mbind_make_current = try api.createMethod("Camera", "make_current");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_make_current, base, cargs, result);
    }

    pub fn projectLocalRayNormal(self: *const Self, arg_screen_point: *const godot.Vector2) !godot.Vector3 {
        if (mbind_project_local_ray_normal == null) {
            mbind_project_local_ray_normal = try api.createMethod("Camera", "project_local_ray_normal");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_screen_point),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_project_local_ray_normal, base, cargs, result);
        return @ptrCast(*godot.Vector3, @alignCast(@alignOf(&godot.Vector3), result)).*;
    }

    pub fn projectPosition(self: *const Self, arg_screen_point: *const godot.Vector2, arg_z_depth: f32) !godot.Vector3 {
        if (mbind_project_position == null) {
            mbind_project_position = try api.createMethod("Camera", "project_position");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_screen_point),
            @ptrCast(*const anyopaque, *arg_z_depth),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_project_position, base, cargs, result);
        return @ptrCast(*godot.Vector3, @alignCast(@alignOf(&godot.Vector3), result)).*;
    }

    pub fn projectRayNormal(self: *const Self, arg_screen_point: *const godot.Vector2) !godot.Vector3 {
        if (mbind_project_ray_normal == null) {
            mbind_project_ray_normal = try api.createMethod("Camera", "project_ray_normal");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_screen_point),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_project_ray_normal, base, cargs, result);
        return @ptrCast(*godot.Vector3, @alignCast(@alignOf(&godot.Vector3), result)).*;
    }

    pub fn projectRayOrigin(self: *const Self, arg_screen_point: *const godot.Vector2) !godot.Vector3 {
        if (mbind_project_ray_origin == null) {
            mbind_project_ray_origin = try api.createMethod("Camera", "project_ray_origin");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_screen_point),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_project_ray_origin, base, cargs, result);
        return @ptrCast(*godot.Vector3, @alignCast(@alignOf(&godot.Vector3), result)).*;
    }

    pub fn setCullMask(self: *const Self, arg_mask: i32) !void {
        if (mbind_set_cull_mask == null) {
            mbind_set_cull_mask = try api.createMethod("Camera", "set_cull_mask");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mask),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_cull_mask, base, cargs, result);
    }

    pub fn setCullMaskBit(self: *const Self, arg_layer: i32, arg_enable: bool) !void {
        if (mbind_set_cull_mask_bit == null) {
            mbind_set_cull_mask_bit = try api.createMethod("Camera", "set_cull_mask_bit");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_layer),
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_cull_mask_bit, base, cargs, result);
    }

    pub fn setCurrent(self: *const Self, arg_arg0: bool) !void {
        if (mbind_set_current == null) {
            mbind_set_current = try api.createMethod("Camera", "set_current");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_arg0),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_current, base, cargs, result);
    }

    pub fn setDopplerTracking(self: *const Self, arg_mode: i32) !void {
        if (mbind_set_doppler_tracking == null) {
            mbind_set_doppler_tracking = try api.createMethod("Camera", "set_doppler_tracking");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_doppler_tracking, base, cargs, result);
    }

    pub fn setEnvironment(self: *const Self, arg_env: *const godot.Environment) !void {
        if (mbind_set_environment == null) {
            mbind_set_environment = try api.createMethod("Camera", "set_environment");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_env),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_environment, base, cargs, result);
    }

    pub fn setFov(self: *const Self, arg_arg0: f32) !void {
        if (mbind_set_fov == null) {
            mbind_set_fov = try api.createMethod("Camera", "set_fov");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_arg0),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_fov, base, cargs, result);
    }

    pub fn setFrustum(self: *const Self, arg_size: f32, arg_offset: *const godot.Vector2, arg_z_near: f32, arg_z_far: f32) !void {
        if (mbind_set_frustum == null) {
            mbind_set_frustum = try api.createMethod("Camera", "set_frustum");
        }

        var result: ?*anyopaque = null;
        var args: [4]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_size),
            @ptrCast(*const anyopaque, arg_offset),
            @ptrCast(*const anyopaque, *arg_z_near),
            @ptrCast(*const anyopaque, *arg_z_far),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_frustum, base, cargs, result);
    }

    pub fn setFrustumOffset(self: *const Self, arg_arg0: *const godot.Vector2) !void {
        if (mbind_set_frustum_offset == null) {
            mbind_set_frustum_offset = try api.createMethod("Camera", "set_frustum_offset");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_arg0),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_frustum_offset, base, cargs, result);
    }

    pub fn setHOffset(self: *const Self, arg_ofs: f32) !void {
        if (mbind_set_h_offset == null) {
            mbind_set_h_offset = try api.createMethod("Camera", "set_h_offset");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_ofs),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_h_offset, base, cargs, result);
    }

    pub fn setKeepAspectMode(self: *const Self, arg_mode: i32) !void {
        if (mbind_set_keep_aspect_mode == null) {
            mbind_set_keep_aspect_mode = try api.createMethod("Camera", "set_keep_aspect_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_keep_aspect_mode, base, cargs, result);
    }

    pub fn setOrthogonal(self: *const Self, arg_size: f32, arg_z_near: f32, arg_z_far: f32) !void {
        if (mbind_set_orthogonal == null) {
            mbind_set_orthogonal = try api.createMethod("Camera", "set_orthogonal");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_size),
            @ptrCast(*const anyopaque, *arg_z_near),
            @ptrCast(*const anyopaque, *arg_z_far),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_orthogonal, base, cargs, result);
    }

    pub fn setPerspective(self: *const Self, arg_fov: f32, arg_z_near: f32, arg_z_far: f32) !void {
        if (mbind_set_perspective == null) {
            mbind_set_perspective = try api.createMethod("Camera", "set_perspective");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_fov),
            @ptrCast(*const anyopaque, *arg_z_near),
            @ptrCast(*const anyopaque, *arg_z_far),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_perspective, base, cargs, result);
    }

    pub fn setProjection(self: *const Self, arg_arg0: i32) !void {
        if (mbind_set_projection == null) {
            mbind_set_projection = try api.createMethod("Camera", "set_projection");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_arg0),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_projection, base, cargs, result);
    }

    pub fn setSize(self: *const Self, arg_arg0: f32) !void {
        if (mbind_set_size == null) {
            mbind_set_size = try api.createMethod("Camera", "set_size");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_arg0),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_size, base, cargs, result);
    }

    pub fn setVOffset(self: *const Self, arg_ofs: f32) !void {
        if (mbind_set_v_offset == null) {
            mbind_set_v_offset = try api.createMethod("Camera", "set_v_offset");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_ofs),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_v_offset, base, cargs, result);
    }

    pub fn setZfar(self: *const Self, arg_arg0: f32) !void {
        if (mbind_set_zfar == null) {
            mbind_set_zfar = try api.createMethod("Camera", "set_zfar");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_arg0),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_zfar, base, cargs, result);
    }

    pub fn setZnear(self: *const Self, arg_arg0: f32) !void {
        if (mbind_set_znear == null) {
            mbind_set_znear = try api.createMethod("Camera", "set_znear");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_arg0),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_znear, base, cargs, result);
    }

    pub fn unprojectPosition(self: *const Self, arg_world_point: *const godot.Vector3) !godot.Vector2 {
        if (mbind_unproject_position == null) {
            mbind_unproject_position = try api.createMethod("Camera", "unproject_position");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_world_point),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_unproject_position, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }
};