// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Reference = @import("reference.zig").Reference;

// method bindings
var mbind_duplicate: ?*c_api.godot_method_bind = null;
var mbind_emit_changed: ?*c_api.godot_method_bind = null;
var mbind_get_local_scene: ?*c_api.godot_method_bind = null;
var mbind_get_name: ?*c_api.godot_method_bind = null;
var mbind_get_path: ?*c_api.godot_method_bind = null;
var mbind_get_rid: ?*c_api.godot_method_bind = null;
var mbind_is_local_to_scene: ?*c_api.godot_method_bind = null;
var mbind_set_local_to_scene: ?*c_api.godot_method_bind = null;
var mbind_set_name: ?*c_api.godot_method_bind = null;
var mbind_set_path: ?*c_api.godot_method_bind = null;
var mbind_setup_local_to_scene: ?*c_api.godot_method_bind = null;
var mbind_take_over_path: ?*c_api.godot_method_bind = null;
var mbind_resource_constructor: ?fn () ?*c_api.godot_object = null;

pub const Resource = struct {
    const Self = @This();
    const BaseClass = Reference;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_resource_constructor == null) {
            mbind_resource_constructor = try api.createConstructor("Resource");
        }
        return api.createObject(Self, mbind_resource_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn duplicate(self: *const Self, arg_subresources: bool) !godot.Resource {
        if (mbind_duplicate == null) {
            mbind_duplicate = try api.createMethod("Resource", "duplicate");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_subresources),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_duplicate, base, cargs, result);
        return @ptrCast(*godot.Resource, @alignCast(@alignOf(&godot.Resource), result)).*;
    }

    pub fn emitChanged(self: *const Self) !void {
        if (mbind_emit_changed == null) {
            mbind_emit_changed = try api.createMethod("Resource", "emit_changed");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_emit_changed, base, cargs, result);
    }

    pub fn getLocalScene(self: *const Self) !godot.Node {
        if (mbind_get_local_scene == null) {
            mbind_get_local_scene = try api.createMethod("Resource", "get_local_scene");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_local_scene, base, cargs, result);
        return @ptrCast(*godot.Node, @alignCast(@alignOf(&godot.Node), result)).*;
    }

    pub fn getName(self: *const Self) !godot.String {
        if (mbind_get_name == null) {
            mbind_get_name = try api.createMethod("Resource", "get_name");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_name, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getPath(self: *const Self) !godot.String {
        if (mbind_get_path == null) {
            mbind_get_path = try api.createMethod("Resource", "get_path");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_path, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getRid(self: *const Self) !godot.RID {
        if (mbind_get_rid == null) {
            mbind_get_rid = try api.createMethod("Resource", "get_rid");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_rid, base, cargs, result);
        return @ptrCast(*godot.RID, @alignCast(@alignOf(&godot.RID), result)).*;
    }

    pub fn isLocalToScene(self: *const Self) !bool {
        if (mbind_is_local_to_scene == null) {
            mbind_is_local_to_scene = try api.createMethod("Resource", "is_local_to_scene");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_local_to_scene, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setLocalToScene(self: *const Self, arg_enable: bool) !void {
        if (mbind_set_local_to_scene == null) {
            mbind_set_local_to_scene = try api.createMethod("Resource", "set_local_to_scene");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_local_to_scene, base, cargs, result);
    }

    pub fn setName(self: *const Self, arg_name: *const godot.String) !void {
        if (mbind_set_name == null) {
            mbind_set_name = try api.createMethod("Resource", "set_name");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_name, base, cargs, result);
    }

    pub fn setPath(self: *const Self, arg_path: *const godot.String) !void {
        if (mbind_set_path == null) {
            mbind_set_path = try api.createMethod("Resource", "set_path");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_path),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_path, base, cargs, result);
    }

    pub fn setupLocalToScene(self: *const Self) !void {
        if (mbind_setup_local_to_scene == null) {
            mbind_setup_local_to_scene = try api.createMethod("Resource", "setup_local_to_scene");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_setup_local_to_scene, base, cargs, result);
    }

    pub fn takeOverPath(self: *const Self, arg_path: *const godot.String) !void {
        if (mbind_take_over_path == null) {
            mbind_take_over_path = try api.createMethod("Resource", "take_over_path");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_path),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_take_over_path, base, cargs, result);
    }
};