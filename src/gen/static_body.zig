// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const PhysicsBody = @import("physics_body.zig").PhysicsBody;

// method bindings
var mbind_get_bounce: ?*c_api.godot_method_bind = null;
var mbind_get_constant_angular_velocity: ?*c_api.godot_method_bind = null;
var mbind_get_constant_linear_velocity: ?*c_api.godot_method_bind = null;
var mbind_get_friction: ?*c_api.godot_method_bind = null;
var mbind_get_physics_material_override: ?*c_api.godot_method_bind = null;
var mbind_set_bounce: ?*c_api.godot_method_bind = null;
var mbind_set_constant_angular_velocity: ?*c_api.godot_method_bind = null;
var mbind_set_constant_linear_velocity: ?*c_api.godot_method_bind = null;
var mbind_set_friction: ?*c_api.godot_method_bind = null;
var mbind_set_physics_material_override: ?*c_api.godot_method_bind = null;
var mbind_static_body_constructor: ?fn () ?*c_api.godot_object = null;

pub const StaticBody = struct {
    const Self = @This();
    const BaseClass = PhysicsBody;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_static_body_constructor == null) {
            mbind_static_body_constructor = try api.createConstructor("StaticBody");
        }
        return api.createObject(Self, mbind_static_body_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getBounce(self: *const Self) !f32 {
        if (mbind_get_bounce == null) {
            mbind_get_bounce = try api.createMethod("StaticBody", "get_bounce");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_bounce, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getConstantAngularVelocity(self: *const Self) !godot.Vector3 {
        if (mbind_get_constant_angular_velocity == null) {
            mbind_get_constant_angular_velocity = try api.createMethod("StaticBody", "get_constant_angular_velocity");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_constant_angular_velocity, base, cargs, result);
        return @ptrCast(*godot.Vector3, @alignCast(@alignOf(&godot.Vector3), result)).*;
    }

    pub fn getConstantLinearVelocity(self: *const Self) !godot.Vector3 {
        if (mbind_get_constant_linear_velocity == null) {
            mbind_get_constant_linear_velocity = try api.createMethod("StaticBody", "get_constant_linear_velocity");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_constant_linear_velocity, base, cargs, result);
        return @ptrCast(*godot.Vector3, @alignCast(@alignOf(&godot.Vector3), result)).*;
    }

    pub fn getFriction(self: *const Self) !f32 {
        if (mbind_get_friction == null) {
            mbind_get_friction = try api.createMethod("StaticBody", "get_friction");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_friction, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getPhysicsMaterialOverride(self: *const Self) !godot.PhysicsMaterial {
        if (mbind_get_physics_material_override == null) {
            mbind_get_physics_material_override = try api.createMethod("StaticBody", "get_physics_material_override");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_physics_material_override, base, cargs, result);
        return @ptrCast(*godot.PhysicsMaterial, @alignCast(@alignOf(&godot.PhysicsMaterial), result)).*;
    }

    pub fn setBounce(self: *const Self, arg_bounce: f32) !void {
        if (mbind_set_bounce == null) {
            mbind_set_bounce = try api.createMethod("StaticBody", "set_bounce");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_bounce),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_bounce, base, cargs, result);
    }

    pub fn setConstantAngularVelocity(self: *const Self, arg_vel: *const godot.Vector3) !void {
        if (mbind_set_constant_angular_velocity == null) {
            mbind_set_constant_angular_velocity = try api.createMethod("StaticBody", "set_constant_angular_velocity");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_vel),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_constant_angular_velocity, base, cargs, result);
    }

    pub fn setConstantLinearVelocity(self: *const Self, arg_vel: *const godot.Vector3) !void {
        if (mbind_set_constant_linear_velocity == null) {
            mbind_set_constant_linear_velocity = try api.createMethod("StaticBody", "set_constant_linear_velocity");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_vel),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_constant_linear_velocity, base, cargs, result);
    }

    pub fn setFriction(self: *const Self, arg_friction: f32) !void {
        if (mbind_set_friction == null) {
            mbind_set_friction = try api.createMethod("StaticBody", "set_friction");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_friction),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_friction, base, cargs, result);
    }

    pub fn setPhysicsMaterialOverride(self: *const Self, arg_physics_material_override: *const godot.PhysicsMaterial) !void {
        if (mbind_set_physics_material_override == null) {
            mbind_set_physics_material_override = try api.createMethod("StaticBody", "set_physics_material_override");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_physics_material_override),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_physics_material_override, base, cargs, result);
    }
};