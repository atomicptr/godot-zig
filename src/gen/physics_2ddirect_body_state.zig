// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Object = @import("object.zig").Object;

// method bindings
var mbind_add_central_force: ?*c_api.godot_method_bind = null;
var mbind_add_force: ?*c_api.godot_method_bind = null;
var mbind_add_torque: ?*c_api.godot_method_bind = null;
var mbind_apply_central_impulse: ?*c_api.godot_method_bind = null;
var mbind_apply_impulse: ?*c_api.godot_method_bind = null;
var mbind_apply_torque_impulse: ?*c_api.godot_method_bind = null;
var mbind_get_angular_velocity: ?*c_api.godot_method_bind = null;
var mbind_get_contact_collider: ?*c_api.godot_method_bind = null;
var mbind_get_contact_collider_id: ?*c_api.godot_method_bind = null;
var mbind_get_contact_collider_object: ?*c_api.godot_method_bind = null;
var mbind_get_contact_collider_position: ?*c_api.godot_method_bind = null;
var mbind_get_contact_collider_shape: ?*c_api.godot_method_bind = null;
var mbind_get_contact_collider_shape_metadata: ?*c_api.godot_method_bind = null;
var mbind_get_contact_collider_velocity_at_position: ?*c_api.godot_method_bind = null;
var mbind_get_contact_count: ?*c_api.godot_method_bind = null;
var mbind_get_contact_local_normal: ?*c_api.godot_method_bind = null;
var mbind_get_contact_local_position: ?*c_api.godot_method_bind = null;
var mbind_get_contact_local_shape: ?*c_api.godot_method_bind = null;
var mbind_get_inverse_inertia: ?*c_api.godot_method_bind = null;
var mbind_get_inverse_mass: ?*c_api.godot_method_bind = null;
var mbind_get_linear_velocity: ?*c_api.godot_method_bind = null;
var mbind_get_space_state: ?*c_api.godot_method_bind = null;
var mbind_get_step: ?*c_api.godot_method_bind = null;
var mbind_get_total_angular_damp: ?*c_api.godot_method_bind = null;
var mbind_get_total_gravity: ?*c_api.godot_method_bind = null;
var mbind_get_total_linear_damp: ?*c_api.godot_method_bind = null;
var mbind_get_transform: ?*c_api.godot_method_bind = null;
var mbind_get_velocity_at_local_position: ?*c_api.godot_method_bind = null;
var mbind_integrate_forces: ?*c_api.godot_method_bind = null;
var mbind_is_sleeping: ?*c_api.godot_method_bind = null;
var mbind_set_angular_velocity: ?*c_api.godot_method_bind = null;
var mbind_set_linear_velocity: ?*c_api.godot_method_bind = null;
var mbind_set_sleep_state: ?*c_api.godot_method_bind = null;
var mbind_set_transform: ?*c_api.godot_method_bind = null;
var mbind_physics_2ddirect_body_state_constructor: ?fn () ?*c_api.godot_object = null;

pub const Physics2DDirectBodyState = struct {
    const Self = @This();
    const BaseClass = Object;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_physics_2ddirect_body_state_constructor == null) {
            mbind_physics_2ddirect_body_state_constructor = try api.createConstructor("Physics2DDirectBodyState");
        }
        return api.createObject(Self, mbind_physics_2ddirect_body_state_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn addCentralForce(self: *const Self, arg_force: *const godot.Vector2) !void {
        if (mbind_add_central_force == null) {
            mbind_add_central_force = try api.createMethod("Physics2DDirectBodyState", "add_central_force");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_force),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_central_force, base, cargs, result);
    }

    pub fn addForce(self: *const Self, arg_offset: *const godot.Vector2, arg_force: *const godot.Vector2) !void {
        if (mbind_add_force == null) {
            mbind_add_force = try api.createMethod("Physics2DDirectBodyState", "add_force");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_offset),
            @ptrCast(*const anyopaque, arg_force),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_force, base, cargs, result);
    }

    pub fn addTorque(self: *const Self, arg_torque: f32) !void {
        if (mbind_add_torque == null) {
            mbind_add_torque = try api.createMethod("Physics2DDirectBodyState", "add_torque");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_torque),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_torque, base, cargs, result);
    }

    pub fn applyCentralImpulse(self: *const Self, arg_impulse: *const godot.Vector2) !void {
        if (mbind_apply_central_impulse == null) {
            mbind_apply_central_impulse = try api.createMethod("Physics2DDirectBodyState", "apply_central_impulse");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_impulse),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_apply_central_impulse, base, cargs, result);
    }

    pub fn applyImpulse(self: *const Self, arg_offset: *const godot.Vector2, arg_impulse: *const godot.Vector2) !void {
        if (mbind_apply_impulse == null) {
            mbind_apply_impulse = try api.createMethod("Physics2DDirectBodyState", "apply_impulse");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_offset),
            @ptrCast(*const anyopaque, arg_impulse),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_apply_impulse, base, cargs, result);
    }

    pub fn applyTorqueImpulse(self: *const Self, arg_impulse: f32) !void {
        if (mbind_apply_torque_impulse == null) {
            mbind_apply_torque_impulse = try api.createMethod("Physics2DDirectBodyState", "apply_torque_impulse");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_impulse),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_apply_torque_impulse, base, cargs, result);
    }

    pub fn getAngularVelocity(self: *const Self) !f32 {
        if (mbind_get_angular_velocity == null) {
            mbind_get_angular_velocity = try api.createMethod("Physics2DDirectBodyState", "get_angular_velocity");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_angular_velocity, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getContactCollider(self: *const Self, arg_contact_idx: i32) !godot.RID {
        if (mbind_get_contact_collider == null) {
            mbind_get_contact_collider = try api.createMethod("Physics2DDirectBodyState", "get_contact_collider");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_contact_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_contact_collider, base, cargs, result);
        return @ptrCast(*godot.RID, @alignCast(@alignOf(&godot.RID), result)).*;
    }

    pub fn getContactColliderId(self: *const Self, arg_contact_idx: i32) !i32 {
        if (mbind_get_contact_collider_id == null) {
            mbind_get_contact_collider_id = try api.createMethod("Physics2DDirectBodyState", "get_contact_collider_id");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_contact_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_contact_collider_id, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getContactColliderObject(self: *const Self, arg_contact_idx: i32) !godot.Object {
        if (mbind_get_contact_collider_object == null) {
            mbind_get_contact_collider_object = try api.createMethod("Physics2DDirectBodyState", "get_contact_collider_object");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_contact_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_contact_collider_object, base, cargs, result);
        return @ptrCast(*godot.Object, @alignCast(@alignOf(&godot.Object), result)).*;
    }

    pub fn getContactColliderPosition(self: *const Self, arg_contact_idx: i32) !godot.Vector2 {
        if (mbind_get_contact_collider_position == null) {
            mbind_get_contact_collider_position = try api.createMethod("Physics2DDirectBodyState", "get_contact_collider_position");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_contact_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_contact_collider_position, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getContactColliderShape(self: *const Self, arg_contact_idx: i32) !i32 {
        if (mbind_get_contact_collider_shape == null) {
            mbind_get_contact_collider_shape = try api.createMethod("Physics2DDirectBodyState", "get_contact_collider_shape");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_contact_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_contact_collider_shape, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getContactColliderShapeMetadata(self: *const Self, arg_contact_idx: i32) !godot.Variant {
        if (mbind_get_contact_collider_shape_metadata == null) {
            mbind_get_contact_collider_shape_metadata = try api.createMethod("Physics2DDirectBodyState", "get_contact_collider_shape_metadata");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_contact_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_contact_collider_shape_metadata, base, cargs, result);
        return @ptrCast(*godot.Variant, @alignCast(@alignOf(&godot.Variant), result)).*;
    }

    pub fn getContactColliderVelocityAtPosition(self: *const Self, arg_contact_idx: i32) !godot.Vector2 {
        if (mbind_get_contact_collider_velocity_at_position == null) {
            mbind_get_contact_collider_velocity_at_position = try api.createMethod("Physics2DDirectBodyState", "get_contact_collider_velocity_at_position");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_contact_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_contact_collider_velocity_at_position, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getContactCount(self: *const Self) !i32 {
        if (mbind_get_contact_count == null) {
            mbind_get_contact_count = try api.createMethod("Physics2DDirectBodyState", "get_contact_count");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_contact_count, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getContactLocalNormal(self: *const Self, arg_contact_idx: i32) !godot.Vector2 {
        if (mbind_get_contact_local_normal == null) {
            mbind_get_contact_local_normal = try api.createMethod("Physics2DDirectBodyState", "get_contact_local_normal");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_contact_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_contact_local_normal, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getContactLocalPosition(self: *const Self, arg_contact_idx: i32) !godot.Vector2 {
        if (mbind_get_contact_local_position == null) {
            mbind_get_contact_local_position = try api.createMethod("Physics2DDirectBodyState", "get_contact_local_position");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_contact_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_contact_local_position, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getContactLocalShape(self: *const Self, arg_contact_idx: i32) !i32 {
        if (mbind_get_contact_local_shape == null) {
            mbind_get_contact_local_shape = try api.createMethod("Physics2DDirectBodyState", "get_contact_local_shape");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_contact_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_contact_local_shape, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getInverseInertia(self: *const Self) !f32 {
        if (mbind_get_inverse_inertia == null) {
            mbind_get_inverse_inertia = try api.createMethod("Physics2DDirectBodyState", "get_inverse_inertia");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_inverse_inertia, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getInverseMass(self: *const Self) !f32 {
        if (mbind_get_inverse_mass == null) {
            mbind_get_inverse_mass = try api.createMethod("Physics2DDirectBodyState", "get_inverse_mass");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_inverse_mass, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getLinearVelocity(self: *const Self) !godot.Vector2 {
        if (mbind_get_linear_velocity == null) {
            mbind_get_linear_velocity = try api.createMethod("Physics2DDirectBodyState", "get_linear_velocity");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_linear_velocity, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getSpaceState(self: *const Self) !godot.Physics2DDirectSpaceState {
        if (mbind_get_space_state == null) {
            mbind_get_space_state = try api.createMethod("Physics2DDirectBodyState", "get_space_state");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_space_state, base, cargs, result);
        return @ptrCast(*godot.Physics2DDirectSpaceState, @alignCast(@alignOf(&godot.Physics2DDirectSpaceState), result)).*;
    }

    pub fn getStep(self: *const Self) !f32 {
        if (mbind_get_step == null) {
            mbind_get_step = try api.createMethod("Physics2DDirectBodyState", "get_step");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_step, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getTotalAngularDamp(self: *const Self) !f32 {
        if (mbind_get_total_angular_damp == null) {
            mbind_get_total_angular_damp = try api.createMethod("Physics2DDirectBodyState", "get_total_angular_damp");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_total_angular_damp, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getTotalGravity(self: *const Self) !godot.Vector2 {
        if (mbind_get_total_gravity == null) {
            mbind_get_total_gravity = try api.createMethod("Physics2DDirectBodyState", "get_total_gravity");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_total_gravity, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getTotalLinearDamp(self: *const Self) !f32 {
        if (mbind_get_total_linear_damp == null) {
            mbind_get_total_linear_damp = try api.createMethod("Physics2DDirectBodyState", "get_total_linear_damp");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_total_linear_damp, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getTransform(self: *const Self) !godot.Transform2D {
        if (mbind_get_transform == null) {
            mbind_get_transform = try api.createMethod("Physics2DDirectBodyState", "get_transform");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_transform, base, cargs, result);
        return @ptrCast(*godot.Transform2D, @alignCast(@alignOf(&godot.Transform2D), result)).*;
    }

    pub fn getVelocityAtLocalPosition(self: *const Self, arg_local_position: *const godot.Vector2) !godot.Vector2 {
        if (mbind_get_velocity_at_local_position == null) {
            mbind_get_velocity_at_local_position = try api.createMethod("Physics2DDirectBodyState", "get_velocity_at_local_position");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_local_position),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_velocity_at_local_position, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn integrateForces(self: *const Self) !void {
        if (mbind_integrate_forces == null) {
            mbind_integrate_forces = try api.createMethod("Physics2DDirectBodyState", "integrate_forces");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_integrate_forces, base, cargs, result);
    }

    pub fn isSleeping(self: *const Self) !bool {
        if (mbind_is_sleeping == null) {
            mbind_is_sleeping = try api.createMethod("Physics2DDirectBodyState", "is_sleeping");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_sleeping, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setAngularVelocity(self: *const Self, arg_velocity: f32) !void {
        if (mbind_set_angular_velocity == null) {
            mbind_set_angular_velocity = try api.createMethod("Physics2DDirectBodyState", "set_angular_velocity");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_velocity),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_angular_velocity, base, cargs, result);
    }

    pub fn setLinearVelocity(self: *const Self, arg_velocity: *const godot.Vector2) !void {
        if (mbind_set_linear_velocity == null) {
            mbind_set_linear_velocity = try api.createMethod("Physics2DDirectBodyState", "set_linear_velocity");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_velocity),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_linear_velocity, base, cargs, result);
    }

    pub fn setSleepState(self: *const Self, arg_enabled: bool) !void {
        if (mbind_set_sleep_state == null) {
            mbind_set_sleep_state = try api.createMethod("Physics2DDirectBodyState", "set_sleep_state");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enabled),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_sleep_state, base, cargs, result);
    }

    pub fn setTransform(self: *const Self, arg_transform: *const godot.Transform2D) !void {
        if (mbind_set_transform == null) {
            mbind_set_transform = try api.createMethod("Physics2DDirectBodyState", "set_transform");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_transform),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_transform, base, cargs, result);
    }
};