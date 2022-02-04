// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const CollisionObject2D = @import("collision_object_2d.zig").CollisionObject2D;

// method bindings
var mbind_add_collision_exception_with: ?*c_api.godot_method_bind = null;
var mbind_get_collision_exceptions: ?*c_api.godot_method_bind = null;
var mbind_remove_collision_exception_with: ?*c_api.godot_method_bind = null;
var mbind_physics_body_2d_constructor: ?fn () ?*c_api.godot_object = null;

pub const PhysicsBody2D = struct {
    const Self = @This();
    const BaseClass = CollisionObject2D;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_physics_body_2d_constructor == null) {
            mbind_physics_body_2d_constructor = try api.createConstructor("PhysicsBody2D");
        }
        return api.createObject(Self, mbind_physics_body_2d_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn addCollisionExceptionWith(self: *const Self, arg_body: *const godot.Node) !void {
        if (mbind_add_collision_exception_with == null) {
            mbind_add_collision_exception_with = try api.createMethod("PhysicsBody2D", "add_collision_exception_with");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_body),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_collision_exception_with, base, cargs, result);
    }

    pub fn getCollisionExceptions(self: *const Self) !godot.Array {
        if (mbind_get_collision_exceptions == null) {
            mbind_get_collision_exceptions = try api.createMethod("PhysicsBody2D", "get_collision_exceptions");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_collision_exceptions, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn removeCollisionExceptionWith(self: *const Self, arg_body: *const godot.Node) !void {
        if (mbind_remove_collision_exception_with == null) {
            mbind_remove_collision_exception_with = try api.createMethod("PhysicsBody2D", "remove_collision_exception_with");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_body),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_remove_collision_exception_with, base, cargs, result);
    }
};