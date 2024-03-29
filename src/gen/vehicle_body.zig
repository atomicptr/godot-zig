// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_brake: ?*c_api.godot_method_bind = null;
var mbind_get_engine_force: ?*c_api.godot_method_bind = null;
var mbind_get_steering: ?*c_api.godot_method_bind = null;
var mbind_set_brake: ?*c_api.godot_method_bind = null;
var mbind_set_engine_force: ?*c_api.godot_method_bind = null;
var mbind_set_steering: ?*c_api.godot_method_bind = null;
var mbind_vehicle_body_constructor: ?fn () ?*c_api.godot_object = null;

pub const VehicleBody = struct {
    const Self = @This();
    pub const BaseClass = godot.RigidBody;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_vehicle_body_constructor == null) {
            mbind_vehicle_body_constructor = try api.createConstructor("VehicleBody");
        }
        return api.createObject(Self, mbind_vehicle_body_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getBrake(self: *const Self) !f32 {
        if (mbind_get_brake == null) {
            mbind_get_brake = try api.createMethod("VehicleBody", "get_brake");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_brake, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getEngineForce(self: *const Self) !f32 {
        if (mbind_get_engine_force == null) {
            mbind_get_engine_force = try api.createMethod("VehicleBody", "get_engine_force");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_engine_force, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getSteering(self: *const Self) !f32 {
        if (mbind_get_steering == null) {
            mbind_get_steering = try api.createMethod("VehicleBody", "get_steering");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_steering, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn setBrake(self: *const Self, arg_brake: f32) !void {
        if (mbind_set_brake == null) {
            mbind_set_brake = try api.createMethod("VehicleBody", "set_brake");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_brake),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_brake, base, cargs, result);
    }

    pub fn setEngineForce(self: *const Self, arg_engine_force: f32) !void {
        if (mbind_set_engine_force == null) {
            mbind_set_engine_force = try api.createMethod("VehicleBody", "set_engine_force");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_engine_force),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_engine_force, base, cargs, result);
    }

    pub fn setSteering(self: *const Self, arg_steering: f32) !void {
        if (mbind_set_steering == null) {
            mbind_set_steering = try api.createMethod("VehicleBody", "set_steering");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_steering),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_steering, base, cargs, result);
    }
};