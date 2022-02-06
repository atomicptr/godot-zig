// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_flag: ?*c_api.godot_method_bind = null;
var mbind_get_param: ?*c_api.godot_method_bind = null;
var mbind_set_flag: ?*c_api.godot_method_bind = null;
var mbind_set_param: ?*c_api.godot_method_bind = null;
var mbind_hinge_joint_constructor: ?fn () ?*c_api.godot_object = null;

pub const HingeJoint = struct {
    const Self = @This();
    pub const BaseClass = godot.Joint;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_hinge_joint_constructor == null) {
            mbind_hinge_joint_constructor = try api.createConstructor("HingeJoint");
        }
        return api.createObject(Self, mbind_hinge_joint_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getFlag(self: *const Self, arg_flag: i32) !bool {
        if (mbind_get_flag == null) {
            mbind_get_flag = try api.createMethod("HingeJoint", "get_flag");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_flag),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_flag, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getParam(self: *const Self, arg_param: i32) !f32 {
        if (mbind_get_param == null) {
            mbind_get_param = try api.createMethod("HingeJoint", "get_param");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_param),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_param, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn setFlag(self: *const Self, arg_flag: i32, arg_enabled: bool) !void {
        if (mbind_set_flag == null) {
            mbind_set_flag = try api.createMethod("HingeJoint", "set_flag");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_flag),
            @ptrCast(*const anyopaque, *arg_enabled),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_flag, base, cargs, result);
    }

    pub fn setParam(self: *const Self, arg_param: i32, arg_value: f32) !void {
        if (mbind_set_param == null) {
            mbind_set_param = try api.createMethod("HingeJoint", "set_param");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_param),
            @ptrCast(*const anyopaque, *arg_value),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_param, base, cargs, result);
    }
};