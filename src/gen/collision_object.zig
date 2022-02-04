// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Spatial = @import("spatial.zig").Spatial;

// method bindings
var mbind_create_shape_owner: ?*c_api.godot_method_bind = null;
var mbind_get_capture_input_on_drag: ?*c_api.godot_method_bind = null;
var mbind_get_collision_layer: ?*c_api.godot_method_bind = null;
var mbind_get_collision_layer_bit: ?*c_api.godot_method_bind = null;
var mbind_get_collision_mask: ?*c_api.godot_method_bind = null;
var mbind_get_collision_mask_bit: ?*c_api.godot_method_bind = null;
var mbind_get_rid: ?*c_api.godot_method_bind = null;
var mbind_get_shape_owners: ?*c_api.godot_method_bind = null;
var mbind_is_ray_pickable: ?*c_api.godot_method_bind = null;
var mbind_is_shape_owner_disabled: ?*c_api.godot_method_bind = null;
var mbind_remove_shape_owner: ?*c_api.godot_method_bind = null;
var mbind_set_capture_input_on_drag: ?*c_api.godot_method_bind = null;
var mbind_set_collision_layer: ?*c_api.godot_method_bind = null;
var mbind_set_collision_layer_bit: ?*c_api.godot_method_bind = null;
var mbind_set_collision_mask: ?*c_api.godot_method_bind = null;
var mbind_set_collision_mask_bit: ?*c_api.godot_method_bind = null;
var mbind_set_ray_pickable: ?*c_api.godot_method_bind = null;
var mbind_shape_find_owner: ?*c_api.godot_method_bind = null;
var mbind_shape_owner_add_shape: ?*c_api.godot_method_bind = null;
var mbind_shape_owner_clear_shapes: ?*c_api.godot_method_bind = null;
var mbind_shape_owner_get_owner: ?*c_api.godot_method_bind = null;
var mbind_shape_owner_get_shape: ?*c_api.godot_method_bind = null;
var mbind_shape_owner_get_shape_count: ?*c_api.godot_method_bind = null;
var mbind_shape_owner_get_shape_index: ?*c_api.godot_method_bind = null;
var mbind_shape_owner_get_transform: ?*c_api.godot_method_bind = null;
var mbind_shape_owner_remove_shape: ?*c_api.godot_method_bind = null;
var mbind_shape_owner_set_disabled: ?*c_api.godot_method_bind = null;
var mbind_shape_owner_set_transform: ?*c_api.godot_method_bind = null;
var mbind_collision_object_constructor: ?fn () ?*c_api.godot_object = null;

pub const CollisionObject = struct {
    const Self = @This();
    const BaseClass = Spatial;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_collision_object_constructor == null) {
            mbind_collision_object_constructor = try api.createConstructor("CollisionObject");
        }
        return api.createObject(Self, mbind_collision_object_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn createShapeOwner(self: *const Self, arg_owner: *const godot.Object) !i32 {
        if (mbind_create_shape_owner == null) {
            mbind_create_shape_owner = try api.createMethod("CollisionObject", "create_shape_owner");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_owner),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_create_shape_owner, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getCaptureInputOnDrag(self: *const Self) !bool {
        if (mbind_get_capture_input_on_drag == null) {
            mbind_get_capture_input_on_drag = try api.createMethod("CollisionObject", "get_capture_input_on_drag");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_capture_input_on_drag, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getCollisionLayer(self: *const Self) !i32 {
        if (mbind_get_collision_layer == null) {
            mbind_get_collision_layer = try api.createMethod("CollisionObject", "get_collision_layer");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_collision_layer, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getCollisionLayerBit(self: *const Self, arg_bit: i32) !bool {
        if (mbind_get_collision_layer_bit == null) {
            mbind_get_collision_layer_bit = try api.createMethod("CollisionObject", "get_collision_layer_bit");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_bit),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_collision_layer_bit, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getCollisionMask(self: *const Self) !i32 {
        if (mbind_get_collision_mask == null) {
            mbind_get_collision_mask = try api.createMethod("CollisionObject", "get_collision_mask");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_collision_mask, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getCollisionMaskBit(self: *const Self, arg_bit: i32) !bool {
        if (mbind_get_collision_mask_bit == null) {
            mbind_get_collision_mask_bit = try api.createMethod("CollisionObject", "get_collision_mask_bit");
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

    pub fn getRid(self: *const Self) !godot.RID {
        if (mbind_get_rid == null) {
            mbind_get_rid = try api.createMethod("CollisionObject", "get_rid");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_rid, base, cargs, result);
        return @ptrCast(*godot.RID, @alignCast(@alignOf(&godot.RID), result)).*;
    }

    pub fn getShapeOwners(self: *const Self) !godot.Array {
        if (mbind_get_shape_owners == null) {
            mbind_get_shape_owners = try api.createMethod("CollisionObject", "get_shape_owners");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_shape_owners, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn isRayPickable(self: *const Self) !bool {
        if (mbind_is_ray_pickable == null) {
            mbind_is_ray_pickable = try api.createMethod("CollisionObject", "is_ray_pickable");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_ray_pickable, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isShapeOwnerDisabled(self: *const Self, arg_owner_id: i32) !bool {
        if (mbind_is_shape_owner_disabled == null) {
            mbind_is_shape_owner_disabled = try api.createMethod("CollisionObject", "is_shape_owner_disabled");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_owner_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_shape_owner_disabled, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn removeShapeOwner(self: *const Self, arg_owner_id: i32) !void {
        if (mbind_remove_shape_owner == null) {
            mbind_remove_shape_owner = try api.createMethod("CollisionObject", "remove_shape_owner");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_owner_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_remove_shape_owner, base, cargs, result);
    }

    pub fn setCaptureInputOnDrag(self: *const Self, arg_enable: bool) !void {
        if (mbind_set_capture_input_on_drag == null) {
            mbind_set_capture_input_on_drag = try api.createMethod("CollisionObject", "set_capture_input_on_drag");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_capture_input_on_drag, base, cargs, result);
    }

    pub fn setCollisionLayer(self: *const Self, arg_layer: i32) !void {
        if (mbind_set_collision_layer == null) {
            mbind_set_collision_layer = try api.createMethod("CollisionObject", "set_collision_layer");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_layer),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_collision_layer, base, cargs, result);
    }

    pub fn setCollisionLayerBit(self: *const Self, arg_bit: i32, arg_value: bool) !void {
        if (mbind_set_collision_layer_bit == null) {
            mbind_set_collision_layer_bit = try api.createMethod("CollisionObject", "set_collision_layer_bit");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_bit),
            @ptrCast(*const anyopaque, *arg_value),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_collision_layer_bit, base, cargs, result);
    }

    pub fn setCollisionMask(self: *const Self, arg_mask: i32) !void {
        if (mbind_set_collision_mask == null) {
            mbind_set_collision_mask = try api.createMethod("CollisionObject", "set_collision_mask");
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
            mbind_set_collision_mask_bit = try api.createMethod("CollisionObject", "set_collision_mask_bit");
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

    pub fn setRayPickable(self: *const Self, arg_ray_pickable: bool) !void {
        if (mbind_set_ray_pickable == null) {
            mbind_set_ray_pickable = try api.createMethod("CollisionObject", "set_ray_pickable");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_ray_pickable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_ray_pickable, base, cargs, result);
    }

    pub fn shapeFindOwner(self: *const Self, arg_shape_index: i32) !i32 {
        if (mbind_shape_find_owner == null) {
            mbind_shape_find_owner = try api.createMethod("CollisionObject", "shape_find_owner");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_shape_index),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_shape_find_owner, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn shapeOwnerAddShape(self: *const Self, arg_owner_id: i32, arg_shape: *const godot.Shape) !void {
        if (mbind_shape_owner_add_shape == null) {
            mbind_shape_owner_add_shape = try api.createMethod("CollisionObject", "shape_owner_add_shape");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_owner_id),
            @ptrCast(*const anyopaque, arg_shape),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_shape_owner_add_shape, base, cargs, result);
    }

    pub fn shapeOwnerClearShapes(self: *const Self, arg_owner_id: i32) !void {
        if (mbind_shape_owner_clear_shapes == null) {
            mbind_shape_owner_clear_shapes = try api.createMethod("CollisionObject", "shape_owner_clear_shapes");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_owner_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_shape_owner_clear_shapes, base, cargs, result);
    }

    pub fn shapeOwnerGetOwner(self: *const Self, arg_owner_id: i32) !godot.Object {
        if (mbind_shape_owner_get_owner == null) {
            mbind_shape_owner_get_owner = try api.createMethod("CollisionObject", "shape_owner_get_owner");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_owner_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_shape_owner_get_owner, base, cargs, result);
        return @ptrCast(*godot.Object, @alignCast(@alignOf(&godot.Object), result)).*;
    }

    pub fn shapeOwnerGetShape(self: *const Self, arg_owner_id: i32, arg_shape_id: i32) !godot.Shape {
        if (mbind_shape_owner_get_shape == null) {
            mbind_shape_owner_get_shape = try api.createMethod("CollisionObject", "shape_owner_get_shape");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_owner_id),
            @ptrCast(*const anyopaque, *arg_shape_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_shape_owner_get_shape, base, cargs, result);
        return @ptrCast(*godot.Shape, @alignCast(@alignOf(&godot.Shape), result)).*;
    }

    pub fn shapeOwnerGetShapeCount(self: *const Self, arg_owner_id: i32) !i32 {
        if (mbind_shape_owner_get_shape_count == null) {
            mbind_shape_owner_get_shape_count = try api.createMethod("CollisionObject", "shape_owner_get_shape_count");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_owner_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_shape_owner_get_shape_count, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn shapeOwnerGetShapeIndex(self: *const Self, arg_owner_id: i32, arg_shape_id: i32) !i32 {
        if (mbind_shape_owner_get_shape_index == null) {
            mbind_shape_owner_get_shape_index = try api.createMethod("CollisionObject", "shape_owner_get_shape_index");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_owner_id),
            @ptrCast(*const anyopaque, *arg_shape_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_shape_owner_get_shape_index, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn shapeOwnerGetTransform(self: *const Self, arg_owner_id: i32) !godot.Transform {
        if (mbind_shape_owner_get_transform == null) {
            mbind_shape_owner_get_transform = try api.createMethod("CollisionObject", "shape_owner_get_transform");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_owner_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_shape_owner_get_transform, base, cargs, result);
        return @ptrCast(*godot.Transform, @alignCast(@alignOf(&godot.Transform), result)).*;
    }

    pub fn shapeOwnerRemoveShape(self: *const Self, arg_owner_id: i32, arg_shape_id: i32) !void {
        if (mbind_shape_owner_remove_shape == null) {
            mbind_shape_owner_remove_shape = try api.createMethod("CollisionObject", "shape_owner_remove_shape");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_owner_id),
            @ptrCast(*const anyopaque, *arg_shape_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_shape_owner_remove_shape, base, cargs, result);
    }

    pub fn shapeOwnerSetDisabled(self: *const Self, arg_owner_id: i32, arg_disabled: bool) !void {
        if (mbind_shape_owner_set_disabled == null) {
            mbind_shape_owner_set_disabled = try api.createMethod("CollisionObject", "shape_owner_set_disabled");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_owner_id),
            @ptrCast(*const anyopaque, *arg_disabled),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_shape_owner_set_disabled, base, cargs, result);
    }

    pub fn shapeOwnerSetTransform(self: *const Self, arg_owner_id: i32, arg_transform: *const godot.Transform) !void {
        if (mbind_shape_owner_set_transform == null) {
            mbind_shape_owner_set_transform = try api.createMethod("CollisionObject", "shape_owner_set_transform");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_owner_id),
            @ptrCast(*const anyopaque, arg_transform),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_shape_owner_set_transform, base, cargs, result);
    }
};