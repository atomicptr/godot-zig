// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Node = @import("node.zig").Node;

// method bindings
var mbind_create_instance: ?*c_api.godot_method_bind = null;
var mbind_get_instance_path: ?*c_api.godot_method_bind = null;
var mbind_get_stored_values: ?*c_api.godot_method_bind = null;
var mbind_replace_by_instance: ?*c_api.godot_method_bind = null;
var mbind_instance_placeholder_constructor: ?fn () ?*c_api.godot_object = null;

pub const InstancePlaceholder = struct {
    const Self = @This();
    const BaseClass = Node;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_instance_placeholder_constructor == null) {
            mbind_instance_placeholder_constructor = try api.createConstructor("InstancePlaceholder");
        }
        return api.createObject(Self, mbind_instance_placeholder_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn createInstance(self: *const Self, arg_replace: bool, arg_custom_scene: *const godot.PackedScene) !godot.Node {
        if (mbind_create_instance == null) {
            mbind_create_instance = try api.createMethod("InstancePlaceholder", "create_instance");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_replace),
            @ptrCast(*const anyopaque, arg_custom_scene),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_create_instance, base, cargs, result);
        return @ptrCast(*godot.Node, @alignCast(@alignOf(&godot.Node), result)).*;
    }

    pub fn getInstancePath(self: *const Self) !godot.String {
        if (mbind_get_instance_path == null) {
            mbind_get_instance_path = try api.createMethod("InstancePlaceholder", "get_instance_path");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_instance_path, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getStoredValues(self: *const Self, arg_with_order: bool) !godot.Dictionary {
        if (mbind_get_stored_values == null) {
            mbind_get_stored_values = try api.createMethod("InstancePlaceholder", "get_stored_values");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_with_order),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_stored_values, base, cargs, result);
        return @ptrCast(*godot.Dictionary, @alignCast(@alignOf(&godot.Dictionary), result)).*;
    }

    pub fn replaceByInstance(self: *const Self, arg_custom_scene: *const godot.PackedScene) !void {
        if (mbind_replace_by_instance == null) {
            mbind_replace_by_instance = try api.createMethod("InstancePlaceholder", "replace_by_instance");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_custom_scene),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_replace_by_instance, base, cargs, result);
    }
};