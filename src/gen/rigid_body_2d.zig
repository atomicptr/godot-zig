// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const PhysicsBody2D = @import("physics_body_2d.zig").PhysicsBody2D;

// method bindings
var mbind_add_central_force: ?*c_api.godot_method_bind = null;
var mbind_add_force: ?*c_api.godot_method_bind = null;
var mbind_add_torque: ?*c_api.godot_method_bind = null;
var mbind_apply_central_impulse: ?*c_api.godot_method_bind = null;
var mbind_apply_impulse: ?*c_api.godot_method_bind = null;
var mbind_apply_torque_impulse: ?*c_api.godot_method_bind = null;
var mbind_get_angular_damp: ?*c_api.godot_method_bind = null;
var mbind_get_angular_velocity: ?*c_api.godot_method_bind = null;
var mbind_get_applied_force: ?*c_api.godot_method_bind = null;
var mbind_get_applied_torque: ?*c_api.godot_method_bind = null;
var mbind_get_bounce: ?*c_api.godot_method_bind = null;
var mbind_get_colliding_bodies: ?*c_api.godot_method_bind = null;
var mbind_get_continuous_collision_detection_mode: ?*c_api.godot_method_bind = null;
var mbind_get_friction: ?*c_api.godot_method_bind = null;
var mbind_get_gravity_scale: ?*c_api.godot_method_bind = null;
var mbind_get_inertia: ?*c_api.godot_method_bind = null;
var mbind_get_linear_damp: ?*c_api.godot_method_bind = null;
var mbind_get_linear_velocity: ?*c_api.godot_method_bind = null;
var mbind_get_mass: ?*c_api.godot_method_bind = null;
var mbind_get_max_contacts_reported: ?*c_api.godot_method_bind = null;
var mbind_get_mode: ?*c_api.godot_method_bind = null;
var mbind_get_physics_material_override: ?*c_api.godot_method_bind = null;
var mbind_get_weight: ?*c_api.godot_method_bind = null;
var mbind_is_able_to_sleep: ?*c_api.godot_method_bind = null;
var mbind_is_contact_monitor_enabled: ?*c_api.godot_method_bind = null;
var mbind_is_sleeping: ?*c_api.godot_method_bind = null;
var mbind_is_using_custom_integrator: ?*c_api.godot_method_bind = null;
var mbind_set_angular_damp: ?*c_api.godot_method_bind = null;
var mbind_set_angular_velocity: ?*c_api.godot_method_bind = null;
var mbind_set_applied_force: ?*c_api.godot_method_bind = null;
var mbind_set_applied_torque: ?*c_api.godot_method_bind = null;
var mbind_set_axis_velocity: ?*c_api.godot_method_bind = null;
var mbind_set_bounce: ?*c_api.godot_method_bind = null;
var mbind_set_can_sleep: ?*c_api.godot_method_bind = null;
var mbind_set_contact_monitor: ?*c_api.godot_method_bind = null;
var mbind_set_continuous_collision_detection_mode: ?*c_api.godot_method_bind = null;
var mbind_set_friction: ?*c_api.godot_method_bind = null;
var mbind_set_gravity_scale: ?*c_api.godot_method_bind = null;
var mbind_set_inertia: ?*c_api.godot_method_bind = null;
var mbind_set_linear_damp: ?*c_api.godot_method_bind = null;
var mbind_set_linear_velocity: ?*c_api.godot_method_bind = null;
var mbind_set_mass: ?*c_api.godot_method_bind = null;
var mbind_set_max_contacts_reported: ?*c_api.godot_method_bind = null;
var mbind_set_mode: ?*c_api.godot_method_bind = null;
var mbind_set_physics_material_override: ?*c_api.godot_method_bind = null;
var mbind_set_sleeping: ?*c_api.godot_method_bind = null;
var mbind_set_use_custom_integrator: ?*c_api.godot_method_bind = null;
var mbind_set_weight: ?*c_api.godot_method_bind = null;
var mbind_test_motion: ?*c_api.godot_method_bind = null;
var mbind_rigid_body_2d_constructor: ?fn () ?*c_api.godot_object = null;

pub const RigidBody2D = struct {
    const Self = @This();
    const BaseClass = PhysicsBody2D;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_rigid_body_2d_constructor == null) {
            mbind_rigid_body_2d_constructor = try api.createConstructor("RigidBody2D");
        }
        return api.createObject(Self, mbind_rigid_body_2d_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn addCentralForce(self: *const Self, arg_force: *const godot.Vector2) !void {
        if (mbind_add_central_force == null) {
            mbind_add_central_force = try api.createMethod("RigidBody2D", "add_central_force");
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
            mbind_add_force = try api.createMethod("RigidBody2D", "add_force");
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
            mbind_add_torque = try api.createMethod("RigidBody2D", "add_torque");
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
            mbind_apply_central_impulse = try api.createMethod("RigidBody2D", "apply_central_impulse");
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
            mbind_apply_impulse = try api.createMethod("RigidBody2D", "apply_impulse");
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

    pub fn applyTorqueImpulse(self: *const Self, arg_torque: f32) !void {
        if (mbind_apply_torque_impulse == null) {
            mbind_apply_torque_impulse = try api.createMethod("RigidBody2D", "apply_torque_impulse");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_torque),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_apply_torque_impulse, base, cargs, result);
    }

    pub fn getAngularDamp(self: *const Self) !f32 {
        if (mbind_get_angular_damp == null) {
            mbind_get_angular_damp = try api.createMethod("RigidBody2D", "get_angular_damp");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_angular_damp, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getAngularVelocity(self: *const Self) !f32 {
        if (mbind_get_angular_velocity == null) {
            mbind_get_angular_velocity = try api.createMethod("RigidBody2D", "get_angular_velocity");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_angular_velocity, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getAppliedForce(self: *const Self) !godot.Vector2 {
        if (mbind_get_applied_force == null) {
            mbind_get_applied_force = try api.createMethod("RigidBody2D", "get_applied_force");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_applied_force, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getAppliedTorque(self: *const Self) !f32 {
        if (mbind_get_applied_torque == null) {
            mbind_get_applied_torque = try api.createMethod("RigidBody2D", "get_applied_torque");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_applied_torque, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getBounce(self: *const Self) !f32 {
        if (mbind_get_bounce == null) {
            mbind_get_bounce = try api.createMethod("RigidBody2D", "get_bounce");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_bounce, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getCollidingBodies(self: *const Self) !godot.Array {
        if (mbind_get_colliding_bodies == null) {
            mbind_get_colliding_bodies = try api.createMethod("RigidBody2D", "get_colliding_bodies");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_colliding_bodies, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getContinuousCollisionDetectionMode(self: *const Self) !i32 {
        if (mbind_get_continuous_collision_detection_mode == null) {
            mbind_get_continuous_collision_detection_mode = try api.createMethod("RigidBody2D", "get_continuous_collision_detection_mode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_continuous_collision_detection_mode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getFriction(self: *const Self) !f32 {
        if (mbind_get_friction == null) {
            mbind_get_friction = try api.createMethod("RigidBody2D", "get_friction");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_friction, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getGravityScale(self: *const Self) !f32 {
        if (mbind_get_gravity_scale == null) {
            mbind_get_gravity_scale = try api.createMethod("RigidBody2D", "get_gravity_scale");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_gravity_scale, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getInertia(self: *const Self) !f32 {
        if (mbind_get_inertia == null) {
            mbind_get_inertia = try api.createMethod("RigidBody2D", "get_inertia");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_inertia, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getLinearDamp(self: *const Self) !f32 {
        if (mbind_get_linear_damp == null) {
            mbind_get_linear_damp = try api.createMethod("RigidBody2D", "get_linear_damp");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_linear_damp, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getLinearVelocity(self: *const Self) !godot.Vector2 {
        if (mbind_get_linear_velocity == null) {
            mbind_get_linear_velocity = try api.createMethod("RigidBody2D", "get_linear_velocity");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_linear_velocity, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getMass(self: *const Self) !f32 {
        if (mbind_get_mass == null) {
            mbind_get_mass = try api.createMethod("RigidBody2D", "get_mass");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_mass, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getMaxContactsReported(self: *const Self) !i32 {
        if (mbind_get_max_contacts_reported == null) {
            mbind_get_max_contacts_reported = try api.createMethod("RigidBody2D", "get_max_contacts_reported");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_max_contacts_reported, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getMode(self: *const Self) !i32 {
        if (mbind_get_mode == null) {
            mbind_get_mode = try api.createMethod("RigidBody2D", "get_mode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_mode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getPhysicsMaterialOverride(self: *const Self) !godot.PhysicsMaterial {
        if (mbind_get_physics_material_override == null) {
            mbind_get_physics_material_override = try api.createMethod("RigidBody2D", "get_physics_material_override");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_physics_material_override, base, cargs, result);
        return @ptrCast(*godot.PhysicsMaterial, @alignCast(@alignOf(&godot.PhysicsMaterial), result)).*;
    }

    pub fn getWeight(self: *const Self) !f32 {
        if (mbind_get_weight == null) {
            mbind_get_weight = try api.createMethod("RigidBody2D", "get_weight");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_weight, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn isAbleToSleep(self: *const Self) !bool {
        if (mbind_is_able_to_sleep == null) {
            mbind_is_able_to_sleep = try api.createMethod("RigidBody2D", "is_able_to_sleep");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_able_to_sleep, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isContactMonitorEnabled(self: *const Self) !bool {
        if (mbind_is_contact_monitor_enabled == null) {
            mbind_is_contact_monitor_enabled = try api.createMethod("RigidBody2D", "is_contact_monitor_enabled");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_contact_monitor_enabled, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isSleeping(self: *const Self) !bool {
        if (mbind_is_sleeping == null) {
            mbind_is_sleeping = try api.createMethod("RigidBody2D", "is_sleeping");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_sleeping, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isUsingCustomIntegrator(self: *const Self) !bool {
        if (mbind_is_using_custom_integrator == null) {
            mbind_is_using_custom_integrator = try api.createMethod("RigidBody2D", "is_using_custom_integrator");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_using_custom_integrator, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setAngularDamp(self: *const Self, arg_angular_damp: f32) !void {
        if (mbind_set_angular_damp == null) {
            mbind_set_angular_damp = try api.createMethod("RigidBody2D", "set_angular_damp");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_angular_damp),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_angular_damp, base, cargs, result);
    }

    pub fn setAngularVelocity(self: *const Self, arg_angular_velocity: f32) !void {
        if (mbind_set_angular_velocity == null) {
            mbind_set_angular_velocity = try api.createMethod("RigidBody2D", "set_angular_velocity");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_angular_velocity),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_angular_velocity, base, cargs, result);
    }

    pub fn setAppliedForce(self: *const Self, arg_force: *const godot.Vector2) !void {
        if (mbind_set_applied_force == null) {
            mbind_set_applied_force = try api.createMethod("RigidBody2D", "set_applied_force");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_force),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_applied_force, base, cargs, result);
    }

    pub fn setAppliedTorque(self: *const Self, arg_torque: f32) !void {
        if (mbind_set_applied_torque == null) {
            mbind_set_applied_torque = try api.createMethod("RigidBody2D", "set_applied_torque");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_torque),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_applied_torque, base, cargs, result);
    }

    pub fn setAxisVelocity(self: *const Self, arg_axis_velocity: *const godot.Vector2) !void {
        if (mbind_set_axis_velocity == null) {
            mbind_set_axis_velocity = try api.createMethod("RigidBody2D", "set_axis_velocity");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_axis_velocity),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_axis_velocity, base, cargs, result);
    }

    pub fn setBounce(self: *const Self, arg_bounce: f32) !void {
        if (mbind_set_bounce == null) {
            mbind_set_bounce = try api.createMethod("RigidBody2D", "set_bounce");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_bounce),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_bounce, base, cargs, result);
    }

    pub fn setCanSleep(self: *const Self, arg_able_to_sleep: bool) !void {
        if (mbind_set_can_sleep == null) {
            mbind_set_can_sleep = try api.createMethod("RigidBody2D", "set_can_sleep");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_able_to_sleep),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_can_sleep, base, cargs, result);
    }

    pub fn setContactMonitor(self: *const Self, arg_enabled: bool) !void {
        if (mbind_set_contact_monitor == null) {
            mbind_set_contact_monitor = try api.createMethod("RigidBody2D", "set_contact_monitor");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enabled),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_contact_monitor, base, cargs, result);
    }

    pub fn setContinuousCollisionDetectionMode(self: *const Self, arg_mode: i32) !void {
        if (mbind_set_continuous_collision_detection_mode == null) {
            mbind_set_continuous_collision_detection_mode = try api.createMethod("RigidBody2D", "set_continuous_collision_detection_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_continuous_collision_detection_mode, base, cargs, result);
    }

    pub fn setFriction(self: *const Self, arg_friction: f32) !void {
        if (mbind_set_friction == null) {
            mbind_set_friction = try api.createMethod("RigidBody2D", "set_friction");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_friction),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_friction, base, cargs, result);
    }

    pub fn setGravityScale(self: *const Self, arg_gravity_scale: f32) !void {
        if (mbind_set_gravity_scale == null) {
            mbind_set_gravity_scale = try api.createMethod("RigidBody2D", "set_gravity_scale");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_gravity_scale),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_gravity_scale, base, cargs, result);
    }

    pub fn setInertia(self: *const Self, arg_inertia: f32) !void {
        if (mbind_set_inertia == null) {
            mbind_set_inertia = try api.createMethod("RigidBody2D", "set_inertia");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_inertia),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_inertia, base, cargs, result);
    }

    pub fn setLinearDamp(self: *const Self, arg_linear_damp: f32) !void {
        if (mbind_set_linear_damp == null) {
            mbind_set_linear_damp = try api.createMethod("RigidBody2D", "set_linear_damp");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_linear_damp),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_linear_damp, base, cargs, result);
    }

    pub fn setLinearVelocity(self: *const Self, arg_linear_velocity: *const godot.Vector2) !void {
        if (mbind_set_linear_velocity == null) {
            mbind_set_linear_velocity = try api.createMethod("RigidBody2D", "set_linear_velocity");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_linear_velocity),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_linear_velocity, base, cargs, result);
    }

    pub fn setMass(self: *const Self, arg_mass: f32) !void {
        if (mbind_set_mass == null) {
            mbind_set_mass = try api.createMethod("RigidBody2D", "set_mass");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mass),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_mass, base, cargs, result);
    }

    pub fn setMaxContactsReported(self: *const Self, arg_amount: i32) !void {
        if (mbind_set_max_contacts_reported == null) {
            mbind_set_max_contacts_reported = try api.createMethod("RigidBody2D", "set_max_contacts_reported");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_amount),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_max_contacts_reported, base, cargs, result);
    }

    pub fn setMode(self: *const Self, arg_mode: i32) !void {
        if (mbind_set_mode == null) {
            mbind_set_mode = try api.createMethod("RigidBody2D", "set_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_mode, base, cargs, result);
    }

    pub fn setPhysicsMaterialOverride(self: *const Self, arg_physics_material_override: *const godot.PhysicsMaterial) !void {
        if (mbind_set_physics_material_override == null) {
            mbind_set_physics_material_override = try api.createMethod("RigidBody2D", "set_physics_material_override");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_physics_material_override),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_physics_material_override, base, cargs, result);
    }

    pub fn setSleeping(self: *const Self, arg_sleeping: bool) !void {
        if (mbind_set_sleeping == null) {
            mbind_set_sleeping = try api.createMethod("RigidBody2D", "set_sleeping");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_sleeping),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_sleeping, base, cargs, result);
    }

    pub fn setUseCustomIntegrator(self: *const Self, arg_enable: bool) !void {
        if (mbind_set_use_custom_integrator == null) {
            mbind_set_use_custom_integrator = try api.createMethod("RigidBody2D", "set_use_custom_integrator");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_use_custom_integrator, base, cargs, result);
    }

    pub fn setWeight(self: *const Self, arg_weight: f32) !void {
        if (mbind_set_weight == null) {
            mbind_set_weight = try api.createMethod("RigidBody2D", "set_weight");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_weight),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_weight, base, cargs, result);
    }

    pub fn testMotion(self: *const Self, arg_motion: *const godot.Vector2, arg_infinite_inertia: bool, arg_margin: f32, arg_result: *const godot.Physics2DTestMotionResult) !bool {
        if (mbind_test_motion == null) {
            mbind_test_motion = try api.createMethod("RigidBody2D", "test_motion");
        }

        var result: ?*anyopaque = null;
        var args: [4]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_motion),
            @ptrCast(*const anyopaque, *arg_infinite_inertia),
            @ptrCast(*const anyopaque, *arg_margin),
            @ptrCast(*const anyopaque, arg_result),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_test_motion, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }
};