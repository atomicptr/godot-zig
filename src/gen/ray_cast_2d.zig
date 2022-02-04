// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Node2D = @import("node_2d.zig").Node2D;

// method bindings
var mbind_add_exception: ?*c_api.godot_method_bind = null;
var mbind_add_exception_rid: ?*c_api.godot_method_bind = null;
var mbind_clear_exceptions: ?*c_api.godot_method_bind = null;
var mbind_force_raycast_update: ?*c_api.godot_method_bind = null;
var mbind_get_cast_to: ?*c_api.godot_method_bind = null;
var mbind_get_collider: ?*c_api.godot_method_bind = null;
var mbind_get_collider_shape: ?*c_api.godot_method_bind = null;
var mbind_get_collision_mask: ?*c_api.godot_method_bind = null;
var mbind_get_collision_mask_bit: ?*c_api.godot_method_bind = null;
var mbind_get_collision_normal: ?*c_api.godot_method_bind = null;
var mbind_get_collision_point: ?*c_api.godot_method_bind = null;
var mbind_get_exclude_parent_body: ?*c_api.godot_method_bind = null;
var mbind_is_collide_with_areas_enabled: ?*c_api.godot_method_bind = null;
var mbind_is_collide_with_bodies_enabled: ?*c_api.godot_method_bind = null;
var mbind_is_colliding: ?*c_api.godot_method_bind = null;
var mbind_is_enabled: ?*c_api.godot_method_bind = null;
var mbind_remove_exception: ?*c_api.godot_method_bind = null;
var mbind_remove_exception_rid: ?*c_api.godot_method_bind = null;
var mbind_set_cast_to: ?*c_api.godot_method_bind = null;
var mbind_set_collide_with_areas: ?*c_api.godot_method_bind = null;
var mbind_set_collide_with_bodies: ?*c_api.godot_method_bind = null;
var mbind_set_collision_mask: ?*c_api.godot_method_bind = null;
var mbind_set_collision_mask_bit: ?*c_api.godot_method_bind = null;
var mbind_set_enabled: ?*c_api.godot_method_bind = null;
var mbind_set_exclude_parent_body: ?*c_api.godot_method_bind = null;
var mbind_ray_cast_2d_constructor: ?fn () ?*c_api.godot_object = null;

pub const RayCast2D = struct {
    const Self = @This();
    const BaseClass = Node2D;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_ray_cast_2d_constructor == null) {
            mbind_ray_cast_2d_constructor = try api.createConstructor("RayCast2D");
        }
        return api.createObject(Self, mbind_ray_cast_2d_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn addException(self: *const Self, arg_node: *const godot.Object) !void {
        if (mbind_add_exception == null) {
            mbind_add_exception = try api.createMethod("RayCast2D", "add_exception");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_node),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_exception, base, cargs, result);
    }

    pub fn addExceptionRid(self: *const Self, arg_rid: *const godot.RID) !void {
        if (mbind_add_exception_rid == null) {
            mbind_add_exception_rid = try api.createMethod("RayCast2D", "add_exception_rid");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_rid),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_exception_rid, base, cargs, result);
    }

    pub fn clearExceptions(self: *const Self) !void {
        if (mbind_clear_exceptions == null) {
            mbind_clear_exceptions = try api.createMethod("RayCast2D", "clear_exceptions");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_clear_exceptions, base, cargs, result);
    }

    pub fn forceRaycastUpdate(self: *const Self) !void {
        if (mbind_force_raycast_update == null) {
            mbind_force_raycast_update = try api.createMethod("RayCast2D", "force_raycast_update");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_force_raycast_update, base, cargs, result);
    }

    pub fn getCastTo(self: *const Self) !godot.Vector2 {
        if (mbind_get_cast_to == null) {
            mbind_get_cast_to = try api.createMethod("RayCast2D", "get_cast_to");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_cast_to, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getCollider(self: *const Self) !godot.Object {
        if (mbind_get_collider == null) {
            mbind_get_collider = try api.createMethod("RayCast2D", "get_collider");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_collider, base, cargs, result);
        return @ptrCast(*godot.Object, @alignCast(@alignOf(&godot.Object), result)).*;
    }

    pub fn getColliderShape(self: *const Self) !i32 {
        if (mbind_get_collider_shape == null) {
            mbind_get_collider_shape = try api.createMethod("RayCast2D", "get_collider_shape");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_collider_shape, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getCollisionMask(self: *const Self) !i32 {
        if (mbind_get_collision_mask == null) {
            mbind_get_collision_mask = try api.createMethod("RayCast2D", "get_collision_mask");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_collision_mask, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getCollisionMaskBit(self: *const Self, arg_bit: i32) !bool {
        if (mbind_get_collision_mask_bit == null) {
            mbind_get_collision_mask_bit = try api.createMethod("RayCast2D", "get_collision_mask_bit");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_bit),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_collision_mask_bit, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getCollisionNormal(self: *const Self) !godot.Vector2 {
        if (mbind_get_collision_normal == null) {
            mbind_get_collision_normal = try api.createMethod("RayCast2D", "get_collision_normal");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_collision_normal, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getCollisionPoint(self: *const Self) !godot.Vector2 {
        if (mbind_get_collision_point == null) {
            mbind_get_collision_point = try api.createMethod("RayCast2D", "get_collision_point");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_collision_point, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getExcludeParentBody(self: *const Self) !bool {
        if (mbind_get_exclude_parent_body == null) {
            mbind_get_exclude_parent_body = try api.createMethod("RayCast2D", "get_exclude_parent_body");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_exclude_parent_body, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isCollideWithAreasEnabled(self: *const Self) !bool {
        if (mbind_is_collide_with_areas_enabled == null) {
            mbind_is_collide_with_areas_enabled = try api.createMethod("RayCast2D", "is_collide_with_areas_enabled");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_collide_with_areas_enabled, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isCollideWithBodiesEnabled(self: *const Self) !bool {
        if (mbind_is_collide_with_bodies_enabled == null) {
            mbind_is_collide_with_bodies_enabled = try api.createMethod("RayCast2D", "is_collide_with_bodies_enabled");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_collide_with_bodies_enabled, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isColliding(self: *const Self) !bool {
        if (mbind_is_colliding == null) {
            mbind_is_colliding = try api.createMethod("RayCast2D", "is_colliding");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_colliding, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isEnabled(self: *const Self) !bool {
        if (mbind_is_enabled == null) {
            mbind_is_enabled = try api.createMethod("RayCast2D", "is_enabled");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_enabled, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn removeException(self: *const Self, arg_node: *const godot.Object) !void {
        if (mbind_remove_exception == null) {
            mbind_remove_exception = try api.createMethod("RayCast2D", "remove_exception");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_node),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_remove_exception, base, cargs, result);
    }

    pub fn removeExceptionRid(self: *const Self, arg_rid: *const godot.RID) !void {
        if (mbind_remove_exception_rid == null) {
            mbind_remove_exception_rid = try api.createMethod("RayCast2D", "remove_exception_rid");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_rid),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_remove_exception_rid, base, cargs, result);
    }

    pub fn setCastTo(self: *const Self, arg_local_point: *const godot.Vector2) !void {
        if (mbind_set_cast_to == null) {
            mbind_set_cast_to = try api.createMethod("RayCast2D", "set_cast_to");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_local_point),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_cast_to, base, cargs, result);
    }

    pub fn setCollideWithAreas(self: *const Self, arg_enable: bool) !void {
        if (mbind_set_collide_with_areas == null) {
            mbind_set_collide_with_areas = try api.createMethod("RayCast2D", "set_collide_with_areas");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_collide_with_areas, base, cargs, result);
    }

    pub fn setCollideWithBodies(self: *const Self, arg_enable: bool) !void {
        if (mbind_set_collide_with_bodies == null) {
            mbind_set_collide_with_bodies = try api.createMethod("RayCast2D", "set_collide_with_bodies");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_collide_with_bodies, base, cargs, result);
    }

    pub fn setCollisionMask(self: *const Self, arg_mask: i32) !void {
        if (mbind_set_collision_mask == null) {
            mbind_set_collision_mask = try api.createMethod("RayCast2D", "set_collision_mask");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mask),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_collision_mask, base, cargs, result);
    }

    pub fn setCollisionMaskBit(self: *const Self, arg_bit: i32, arg_value: bool) !void {
        if (mbind_set_collision_mask_bit == null) {
            mbind_set_collision_mask_bit = try api.createMethod("RayCast2D", "set_collision_mask_bit");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_bit),
            @ptrCast(*const anyopaque, *arg_value),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_collision_mask_bit, base, cargs, result);
    }

    pub fn setEnabled(self: *const Self, arg_enabled: bool) !void {
        if (mbind_set_enabled == null) {
            mbind_set_enabled = try api.createMethod("RayCast2D", "set_enabled");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enabled),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_enabled, base, cargs, result);
    }

    pub fn setExcludeParentBody(self: *const Self, arg_mask: bool) !void {
        if (mbind_set_exclude_parent_body == null) {
            mbind_set_exclude_parent_body = try api.createMethod("RayCast2D", "set_exclude_parent_body");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mask),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_exclude_parent_body, base, cargs, result);
    }
};