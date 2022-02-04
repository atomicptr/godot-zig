// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Joint = @import("joint.zig").Joint;

// method bindings
var mbind_get_param: ?*c_api.godot_method_bind = null;
var mbind_set_param: ?*c_api.godot_method_bind = null;
var mbind_slider_joint_constructor: ?fn () ?*c_api.godot_object = null;

pub const SliderJoint = struct {
    const Self = @This();
    const BaseClass = Joint;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_slider_joint_constructor == null) {
            mbind_slider_joint_constructor = try api.createConstructor("SliderJoint");
        }
        return api.createObject(Self, mbind_slider_joint_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getParam(self: *const Self, arg_param: i32) !f32 {
        if (mbind_get_param == null) {
            mbind_get_param = try api.createMethod("SliderJoint", "get_param");
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

    pub fn setParam(self: *const Self, arg_param: i32, arg_value: f32) !void {
        if (mbind_set_param == null) {
            mbind_set_param = try api.createMethod("SliderJoint", "set_param");
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