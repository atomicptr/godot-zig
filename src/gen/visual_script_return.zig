// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const VisualScriptNode = @import("visual_script_node.zig").VisualScriptNode;

// method bindings
var mbind_get_return_type: ?*c_api.godot_method_bind = null;
var mbind_is_return_value_enabled: ?*c_api.godot_method_bind = null;
var mbind_set_enable_return_value: ?*c_api.godot_method_bind = null;
var mbind_set_return_type: ?*c_api.godot_method_bind = null;
var mbind_visual_script_return_constructor: ?fn () ?*c_api.godot_object = null;

pub const VisualScriptReturn = struct {
    const Self = @This();
    const BaseClass = VisualScriptNode;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_visual_script_return_constructor == null) {
            mbind_visual_script_return_constructor = try api.createConstructor("VisualScriptReturn");
        }
        return api.createObject(Self, mbind_visual_script_return_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getReturnType(self: *const Self) !i32 {
        if (mbind_get_return_type == null) {
            mbind_get_return_type = try api.createMethod("VisualScriptReturn", "get_return_type");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_return_type, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn isReturnValueEnabled(self: *const Self) !bool {
        if (mbind_is_return_value_enabled == null) {
            mbind_is_return_value_enabled = try api.createMethod("VisualScriptReturn", "is_return_value_enabled");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_return_value_enabled, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setEnableReturnValue(self: *const Self, arg_enable: bool) !void {
        if (mbind_set_enable_return_value == null) {
            mbind_set_enable_return_value = try api.createMethod("VisualScriptReturn", "set_enable_return_value");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_enable_return_value, base, cargs, result);
    }

    pub fn setReturnType(self: *const Self, arg_type: i32) !void {
        if (mbind_set_return_type == null) {
            mbind_set_return_type = try api.createMethod("VisualScriptReturn", "set_return_type");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_type),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_return_type, base, cargs, result);
    }
};