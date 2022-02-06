// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_direct_space_state: ?*c_api.godot_method_bind = null;
var mbind_get_environment: ?*c_api.godot_method_bind = null;
var mbind_get_fallback_environment: ?*c_api.godot_method_bind = null;
var mbind_get_scenario: ?*c_api.godot_method_bind = null;
var mbind_get_space: ?*c_api.godot_method_bind = null;
var mbind_set_environment: ?*c_api.godot_method_bind = null;
var mbind_set_fallback_environment: ?*c_api.godot_method_bind = null;
var mbind_world_constructor: ?fn () ?*c_api.godot_object = null;

pub const World = struct {
    const Self = @This();
    pub const BaseClass = godot.Resource;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_world_constructor == null) {
            mbind_world_constructor = try api.createConstructor("World");
        }
        return api.createObject(Self, mbind_world_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getDirectSpaceState(self: *const Self) !godot.PhysicsDirectSpaceState {
        if (mbind_get_direct_space_state == null) {
            mbind_get_direct_space_state = try api.createMethod("World", "get_direct_space_state");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_direct_space_state, base, cargs, result);
        return @ptrCast(*godot.PhysicsDirectSpaceState, @alignCast(@alignOf(&godot.PhysicsDirectSpaceState), result)).*;
    }

    pub fn getEnvironment(self: *const Self) !godot.Environment {
        if (mbind_get_environment == null) {
            mbind_get_environment = try api.createMethod("World", "get_environment");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_environment, base, cargs, result);
        return @ptrCast(*godot.Environment, @alignCast(@alignOf(&godot.Environment), result)).*;
    }

    pub fn getFallbackEnvironment(self: *const Self) !godot.Environment {
        if (mbind_get_fallback_environment == null) {
            mbind_get_fallback_environment = try api.createMethod("World", "get_fallback_environment");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_fallback_environment, base, cargs, result);
        return @ptrCast(*godot.Environment, @alignCast(@alignOf(&godot.Environment), result)).*;
    }

    pub fn getScenario(self: *const Self) !godot.RID {
        if (mbind_get_scenario == null) {
            mbind_get_scenario = try api.createMethod("World", "get_scenario");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_scenario, base, cargs, result);
        return @ptrCast(*godot.RID, @alignCast(@alignOf(&godot.RID), result)).*;
    }

    pub fn getSpace(self: *const Self) !godot.RID {
        if (mbind_get_space == null) {
            mbind_get_space = try api.createMethod("World", "get_space");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_space, base, cargs, result);
        return @ptrCast(*godot.RID, @alignCast(@alignOf(&godot.RID), result)).*;
    }

    pub fn setEnvironment(self: *const Self, arg_env: *const godot.Environment) !void {
        if (mbind_set_environment == null) {
            mbind_set_environment = try api.createMethod("World", "set_environment");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_env),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_environment, base, cargs, result);
    }

    pub fn setFallbackEnvironment(self: *const Self, arg_env: *const godot.Environment) !void {
        if (mbind_set_fallback_environment == null) {
            mbind_set_fallback_environment = try api.createMethod("World", "set_fallback_environment");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_env),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_fallback_environment, base, cargs, result);
    }
};