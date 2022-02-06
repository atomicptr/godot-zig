// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_add_collision_exception_with: ?*c_api.godot_method_bind = null;
var mbind_get_areaAngular_stiffness: ?*c_api.godot_method_bind = null;
var mbind_get_collision_exceptions: ?*c_api.godot_method_bind = null;
var mbind_get_collision_layer: ?*c_api.godot_method_bind = null;
var mbind_get_collision_layer_bit: ?*c_api.godot_method_bind = null;
var mbind_get_collision_mask: ?*c_api.godot_method_bind = null;
var mbind_get_collision_mask_bit: ?*c_api.godot_method_bind = null;
var mbind_get_damping_coefficient: ?*c_api.godot_method_bind = null;
var mbind_get_drag_coefficient: ?*c_api.godot_method_bind = null;
var mbind_get_linear_stiffness: ?*c_api.godot_method_bind = null;
var mbind_get_parent_collision_ignore: ?*c_api.godot_method_bind = null;
var mbind_get_point_transform: ?*c_api.godot_method_bind = null;
var mbind_get_pose_matching_coefficient: ?*c_api.godot_method_bind = null;
var mbind_get_pressure_coefficient: ?*c_api.godot_method_bind = null;
var mbind_get_simulation_precision: ?*c_api.godot_method_bind = null;
var mbind_get_total_mass: ?*c_api.godot_method_bind = null;
var mbind_get_volume_stiffness: ?*c_api.godot_method_bind = null;
var mbind_is_physics_enabled: ?*c_api.godot_method_bind = null;
var mbind_is_point_pinned: ?*c_api.godot_method_bind = null;
var mbind_is_ray_pickable: ?*c_api.godot_method_bind = null;
var mbind_remove_collision_exception_with: ?*c_api.godot_method_bind = null;
var mbind_set_areaAngular_stiffness: ?*c_api.godot_method_bind = null;
var mbind_set_collision_layer: ?*c_api.godot_method_bind = null;
var mbind_set_collision_layer_bit: ?*c_api.godot_method_bind = null;
var mbind_set_collision_mask: ?*c_api.godot_method_bind = null;
var mbind_set_collision_mask_bit: ?*c_api.godot_method_bind = null;
var mbind_set_damping_coefficient: ?*c_api.godot_method_bind = null;
var mbind_set_drag_coefficient: ?*c_api.godot_method_bind = null;
var mbind_set_linear_stiffness: ?*c_api.godot_method_bind = null;
var mbind_set_parent_collision_ignore: ?*c_api.godot_method_bind = null;
var mbind_set_physics_enabled: ?*c_api.godot_method_bind = null;
var mbind_set_point_pinned: ?*c_api.godot_method_bind = null;
var mbind_set_pose_matching_coefficient: ?*c_api.godot_method_bind = null;
var mbind_set_pressure_coefficient: ?*c_api.godot_method_bind = null;
var mbind_set_ray_pickable: ?*c_api.godot_method_bind = null;
var mbind_set_simulation_precision: ?*c_api.godot_method_bind = null;
var mbind_set_total_mass: ?*c_api.godot_method_bind = null;
var mbind_set_volume_stiffness: ?*c_api.godot_method_bind = null;
var mbind_soft_body_constructor: ?fn () ?*c_api.godot_object = null;

pub const SoftBody = struct {
    const Self = @This();
    pub const BaseClass = godot.MeshInstance;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_soft_body_constructor == null) {
            mbind_soft_body_constructor = try api.createConstructor("SoftBody");
        }
        return api.createObject(Self, mbind_soft_body_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn addCollisionExceptionWith(self: *const Self, arg_body: *const godot.Node) !void {
        if (mbind_add_collision_exception_with == null) {
            mbind_add_collision_exception_with = try api.createMethod("SoftBody", "add_collision_exception_with");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_body),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_collision_exception_with, base, cargs, result);
    }

    pub fn getAreaangularStiffness(self: *const Self) !f32 {
        if (mbind_get_areaAngular_stiffness == null) {
            mbind_get_areaAngular_stiffness = try api.createMethod("SoftBody", "get_areaAngular_stiffness");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_areaAngular_stiffness, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getCollisionExceptions(self: *const Self) !godot.Array {
        if (mbind_get_collision_exceptions == null) {
            mbind_get_collision_exceptions = try api.createMethod("SoftBody", "get_collision_exceptions");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_collision_exceptions, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getCollisionLayer(self: *const Self) !i32 {
        if (mbind_get_collision_layer == null) {
            mbind_get_collision_layer = try api.createMethod("SoftBody", "get_collision_layer");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_collision_layer, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getCollisionLayerBit(self: *const Self, arg_bit: i32) !bool {
        if (mbind_get_collision_layer_bit == null) {
            mbind_get_collision_layer_bit = try api.createMethod("SoftBody", "get_collision_layer_bit");
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
            mbind_get_collision_mask = try api.createMethod("SoftBody", "get_collision_mask");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_collision_mask, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getCollisionMaskBit(self: *const Self, arg_bit: i32) !bool {
        if (mbind_get_collision_mask_bit == null) {
            mbind_get_collision_mask_bit = try api.createMethod("SoftBody", "get_collision_mask_bit");
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

    pub fn getDampingCoefficient(self: *const Self) !f32 {
        if (mbind_get_damping_coefficient == null) {
            mbind_get_damping_coefficient = try api.createMethod("SoftBody", "get_damping_coefficient");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_damping_coefficient, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getDragCoefficient(self: *const Self) !f32 {
        if (mbind_get_drag_coefficient == null) {
            mbind_get_drag_coefficient = try api.createMethod("SoftBody", "get_drag_coefficient");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_drag_coefficient, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getLinearStiffness(self: *const Self) !f32 {
        if (mbind_get_linear_stiffness == null) {
            mbind_get_linear_stiffness = try api.createMethod("SoftBody", "get_linear_stiffness");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_linear_stiffness, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getParentCollisionIgnore(self: *const Self) !godot.NodePath {
        if (mbind_get_parent_collision_ignore == null) {
            mbind_get_parent_collision_ignore = try api.createMethod("SoftBody", "get_parent_collision_ignore");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_parent_collision_ignore, base, cargs, result);
        return @ptrCast(*godot.NodePath, @alignCast(@alignOf(&godot.NodePath), result)).*;
    }

    pub fn getPointTransform(self: *const Self, arg_point_index: i32) !godot.Vector3 {
        if (mbind_get_point_transform == null) {
            mbind_get_point_transform = try api.createMethod("SoftBody", "get_point_transform");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_point_index),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_point_transform, base, cargs, result);
        return @ptrCast(*godot.Vector3, @alignCast(@alignOf(&godot.Vector3), result)).*;
    }

    pub fn getPoseMatchingCoefficient(self: *const Self) !f32 {
        if (mbind_get_pose_matching_coefficient == null) {
            mbind_get_pose_matching_coefficient = try api.createMethod("SoftBody", "get_pose_matching_coefficient");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_pose_matching_coefficient, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getPressureCoefficient(self: *const Self) !f32 {
        if (mbind_get_pressure_coefficient == null) {
            mbind_get_pressure_coefficient = try api.createMethod("SoftBody", "get_pressure_coefficient");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_pressure_coefficient, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getSimulationPrecision(self: *const Self) !i32 {
        if (mbind_get_simulation_precision == null) {
            mbind_get_simulation_precision = try api.createMethod("SoftBody", "get_simulation_precision");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_simulation_precision, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getTotalMass(self: *const Self) !f32 {
        if (mbind_get_total_mass == null) {
            mbind_get_total_mass = try api.createMethod("SoftBody", "get_total_mass");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_total_mass, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getVolumeStiffness(self: *const Self) !f32 {
        if (mbind_get_volume_stiffness == null) {
            mbind_get_volume_stiffness = try api.createMethod("SoftBody", "get_volume_stiffness");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_volume_stiffness, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn isPhysicsEnabled(self: *const Self) !bool {
        if (mbind_is_physics_enabled == null) {
            mbind_is_physics_enabled = try api.createMethod("SoftBody", "is_physics_enabled");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_physics_enabled, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isPointPinned(self: *const Self, arg_point_index: i32) !bool {
        if (mbind_is_point_pinned == null) {
            mbind_is_point_pinned = try api.createMethod("SoftBody", "is_point_pinned");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_point_index),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_point_pinned, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isRayPickable(self: *const Self) !bool {
        if (mbind_is_ray_pickable == null) {
            mbind_is_ray_pickable = try api.createMethod("SoftBody", "is_ray_pickable");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_ray_pickable, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn removeCollisionExceptionWith(self: *const Self, arg_body: *const godot.Node) !void {
        if (mbind_remove_collision_exception_with == null) {
            mbind_remove_collision_exception_with = try api.createMethod("SoftBody", "remove_collision_exception_with");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_body),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_remove_collision_exception_with, base, cargs, result);
    }

    pub fn setAreaangularStiffness(self: *const Self, arg_areaAngular_stiffness: f32) !void {
        if (mbind_set_areaAngular_stiffness == null) {
            mbind_set_areaAngular_stiffness = try api.createMethod("SoftBody", "set_areaAngular_stiffness");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_areaAngular_stiffness),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_areaAngular_stiffness, base, cargs, result);
    }

    pub fn setCollisionLayer(self: *const Self, arg_collision_layer: i32) !void {
        if (mbind_set_collision_layer == null) {
            mbind_set_collision_layer = try api.createMethod("SoftBody", "set_collision_layer");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_collision_layer),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_collision_layer, base, cargs, result);
    }

    pub fn setCollisionLayerBit(self: *const Self, arg_bit: i32, arg_value: bool) !void {
        if (mbind_set_collision_layer_bit == null) {
            mbind_set_collision_layer_bit = try api.createMethod("SoftBody", "set_collision_layer_bit");
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

    pub fn setCollisionMask(self: *const Self, arg_collision_mask: i32) !void {
        if (mbind_set_collision_mask == null) {
            mbind_set_collision_mask = try api.createMethod("SoftBody", "set_collision_mask");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_collision_mask),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_collision_mask, base, cargs, result);
    }

    pub fn setCollisionMaskBit(self: *const Self, arg_bit: i32, arg_value: bool) !void {
        if (mbind_set_collision_mask_bit == null) {
            mbind_set_collision_mask_bit = try api.createMethod("SoftBody", "set_collision_mask_bit");
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

    pub fn setDampingCoefficient(self: *const Self, arg_damping_coefficient: f32) !void {
        if (mbind_set_damping_coefficient == null) {
            mbind_set_damping_coefficient = try api.createMethod("SoftBody", "set_damping_coefficient");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_damping_coefficient),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_damping_coefficient, base, cargs, result);
    }

    pub fn setDragCoefficient(self: *const Self, arg_drag_coefficient: f32) !void {
        if (mbind_set_drag_coefficient == null) {
            mbind_set_drag_coefficient = try api.createMethod("SoftBody", "set_drag_coefficient");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_drag_coefficient),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_drag_coefficient, base, cargs, result);
    }

    pub fn setLinearStiffness(self: *const Self, arg_linear_stiffness: f32) !void {
        if (mbind_set_linear_stiffness == null) {
            mbind_set_linear_stiffness = try api.createMethod("SoftBody", "set_linear_stiffness");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_linear_stiffness),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_linear_stiffness, base, cargs, result);
    }

    pub fn setParentCollisionIgnore(self: *const Self, arg_parent_collision_ignore: *const godot.NodePath) !void {
        if (mbind_set_parent_collision_ignore == null) {
            mbind_set_parent_collision_ignore = try api.createMethod("SoftBody", "set_parent_collision_ignore");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_parent_collision_ignore),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_parent_collision_ignore, base, cargs, result);
    }

    pub fn setPhysicsEnabled(self: *const Self, arg_enabled: bool) !void {
        if (mbind_set_physics_enabled == null) {
            mbind_set_physics_enabled = try api.createMethod("SoftBody", "set_physics_enabled");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enabled),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_physics_enabled, base, cargs, result);
    }

    pub fn setPointPinned(self: *const Self, arg_point_index: i32, arg_pinned: bool, arg_attachment_path: *const godot.NodePath) !void {
        if (mbind_set_point_pinned == null) {
            mbind_set_point_pinned = try api.createMethod("SoftBody", "set_point_pinned");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_point_index),
            @ptrCast(*const anyopaque, *arg_pinned),
            @ptrCast(*const anyopaque, arg_attachment_path),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_point_pinned, base, cargs, result);
    }

    pub fn setPoseMatchingCoefficient(self: *const Self, arg_pose_matching_coefficient: f32) !void {
        if (mbind_set_pose_matching_coefficient == null) {
            mbind_set_pose_matching_coefficient = try api.createMethod("SoftBody", "set_pose_matching_coefficient");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_pose_matching_coefficient),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_pose_matching_coefficient, base, cargs, result);
    }

    pub fn setPressureCoefficient(self: *const Self, arg_pressure_coefficient: f32) !void {
        if (mbind_set_pressure_coefficient == null) {
            mbind_set_pressure_coefficient = try api.createMethod("SoftBody", "set_pressure_coefficient");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_pressure_coefficient),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_pressure_coefficient, base, cargs, result);
    }

    pub fn setRayPickable(self: *const Self, arg_ray_pickable: bool) !void {
        if (mbind_set_ray_pickable == null) {
            mbind_set_ray_pickable = try api.createMethod("SoftBody", "set_ray_pickable");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_ray_pickable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_ray_pickable, base, cargs, result);
    }

    pub fn setSimulationPrecision(self: *const Self, arg_simulation_precision: i32) !void {
        if (mbind_set_simulation_precision == null) {
            mbind_set_simulation_precision = try api.createMethod("SoftBody", "set_simulation_precision");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_simulation_precision),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_simulation_precision, base, cargs, result);
    }

    pub fn setTotalMass(self: *const Self, arg_mass: f32) !void {
        if (mbind_set_total_mass == null) {
            mbind_set_total_mass = try api.createMethod("SoftBody", "set_total_mass");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mass),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_total_mass, base, cargs, result);
    }

    pub fn setVolumeStiffness(self: *const Self, arg_volume_stiffness: f32) !void {
        if (mbind_set_volume_stiffness == null) {
            mbind_set_volume_stiffness = try api.createMethod("SoftBody", "set_volume_stiffness");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_volume_stiffness),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_volume_stiffness, base, cargs, result);
    }
};