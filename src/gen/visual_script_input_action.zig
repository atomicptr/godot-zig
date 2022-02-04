// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const VisualScriptNode = @import("visual_script_node.zig").VisualScriptNode;

// method bindings
var mbind_get_action_mode: ?*c_api.godot_method_bind = null;
var mbind_get_action_name: ?*c_api.godot_method_bind = null;
var mbind_set_action_mode: ?*c_api.godot_method_bind = null;
var mbind_set_action_name: ?*c_api.godot_method_bind = null;
var mbind_visual_script_input_action_constructor: ?fn () ?*c_api.godot_object = null;

pub const VisualScriptInputAction = struct {
    const Self = @This();
    const BaseClass = VisualScriptNode;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_visual_script_input_action_constructor == null) {
            mbind_visual_script_input_action_constructor = try api.createConstructor("VisualScriptInputAction");
        }
        return api.createObject(Self, mbind_visual_script_input_action_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getActionMode(self: *const Self) !i32 {
        if (mbind_get_action_mode == null) {
            mbind_get_action_mode = try api.createMethod("VisualScriptInputAction", "get_action_mode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_action_mode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getActionName(self: *const Self) !godot.String {
        if (mbind_get_action_name == null) {
            mbind_get_action_name = try api.createMethod("VisualScriptInputAction", "get_action_name");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_action_name, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn setActionMode(self: *const Self, arg_mode: i32) !void {
        if (mbind_set_action_mode == null) {
            mbind_set_action_mode = try api.createMethod("VisualScriptInputAction", "set_action_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_action_mode, base, cargs, result);
    }

    pub fn setActionName(self: *const Self, arg_name: *const godot.String) !void {
        if (mbind_set_action_name == null) {
            mbind_set_action_name = try api.createMethod("VisualScriptInputAction", "set_action_name");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_action_name, base, cargs, result);
    }
};