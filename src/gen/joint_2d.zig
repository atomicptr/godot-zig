// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_bias: ?*c_api.godot_method_bind = null;
var mbind_get_exclude_nodes_from_collision: ?*c_api.godot_method_bind = null;
var mbind_get_node_a: ?*c_api.godot_method_bind = null;
var mbind_get_node_b: ?*c_api.godot_method_bind = null;
var mbind_set_bias: ?*c_api.godot_method_bind = null;
var mbind_set_exclude_nodes_from_collision: ?*c_api.godot_method_bind = null;
var mbind_set_node_a: ?*c_api.godot_method_bind = null;
var mbind_set_node_b: ?*c_api.godot_method_bind = null;
var mbind_joint_2d_constructor: ?fn () ?*c_api.godot_object = null;

pub const Joint2D = struct {
    const Self = @This();
    pub const BaseClass = godot.Node2D;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_joint_2d_constructor == null) {
            mbind_joint_2d_constructor = try api.createConstructor("Joint2D");
        }
        return api.createObject(Self, mbind_joint_2d_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getBias(self: *const Self) !f32 {
        if (mbind_get_bias == null) {
            mbind_get_bias = try api.createMethod("Joint2D", "get_bias");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_bias, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getExcludeNodesFromCollision(self: *const Self) !bool {
        if (mbind_get_exclude_nodes_from_collision == null) {
            mbind_get_exclude_nodes_from_collision = try api.createMethod("Joint2D", "get_exclude_nodes_from_collision");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_exclude_nodes_from_collision, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getNodeA(self: *const Self) !godot.NodePath {
        if (mbind_get_node_a == null) {
            mbind_get_node_a = try api.createMethod("Joint2D", "get_node_a");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_node_a, base, cargs, result);
        return @ptrCast(*godot.NodePath, @alignCast(@alignOf(&godot.NodePath), result)).*;
    }

    pub fn getNodeB(self: *const Self) !godot.NodePath {
        if (mbind_get_node_b == null) {
            mbind_get_node_b = try api.createMethod("Joint2D", "get_node_b");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_node_b, base, cargs, result);
        return @ptrCast(*godot.NodePath, @alignCast(@alignOf(&godot.NodePath), result)).*;
    }

    pub fn setBias(self: *const Self, arg_bias: f32) !void {
        if (mbind_set_bias == null) {
            mbind_set_bias = try api.createMethod("Joint2D", "set_bias");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_bias),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_bias, base, cargs, result);
    }

    pub fn setExcludeNodesFromCollision(self: *const Self, arg_enable: bool) !void {
        if (mbind_set_exclude_nodes_from_collision == null) {
            mbind_set_exclude_nodes_from_collision = try api.createMethod("Joint2D", "set_exclude_nodes_from_collision");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_exclude_nodes_from_collision, base, cargs, result);
    }

    pub fn setNodeA(self: *const Self, arg_node: *const godot.NodePath) !void {
        if (mbind_set_node_a == null) {
            mbind_set_node_a = try api.createMethod("Joint2D", "set_node_a");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_node),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_node_a, base, cargs, result);
    }

    pub fn setNodeB(self: *const Self, arg_node: *const godot.NodePath) !void {
        if (mbind_set_node_b == null) {
            mbind_set_node_b = try api.createMethod("Joint2D", "set_node_b");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_node),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_node_b, base, cargs, result);
    }
};