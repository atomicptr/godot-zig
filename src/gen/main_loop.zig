// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Object = @import("object.zig").Object;

// method bindings
var mbind_finish: ?*c_api.godot_method_bind = null;
var mbind_idle: ?*c_api.godot_method_bind = null;
var mbind_init: ?*c_api.godot_method_bind = null;
var mbind_input_event: ?*c_api.godot_method_bind = null;
var mbind_input_text: ?*c_api.godot_method_bind = null;
var mbind_iteration: ?*c_api.godot_method_bind = null;
var mbind_main_loop_constructor: ?fn () ?*c_api.godot_object = null;

pub const MainLoop = struct {
    const Self = @This();
    const BaseClass = Object;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_main_loop_constructor == null) {
            mbind_main_loop_constructor = try api.createConstructor("MainLoop");
        }
        return api.createObject(Self, mbind_main_loop_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn finish(self: *const Self) !void {
        if (mbind_finish == null) {
            mbind_finish = try api.createMethod("MainLoop", "finish");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_finish, base, cargs, result);
    }

    pub fn idle(self: *const Self, arg_delta: f32) !bool {
        if (mbind_idle == null) {
            mbind_idle = try api.createMethod("MainLoop", "idle");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_delta),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_idle, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn initFn(self: *const Self) !void {
        if (mbind_init == null) {
            mbind_init = try api.createMethod("MainLoop", "init");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_init, base, cargs, result);
    }

    pub fn inputEvent(self: *const Self, arg_event: *const godot.InputEvent) !void {
        if (mbind_input_event == null) {
            mbind_input_event = try api.createMethod("MainLoop", "input_event");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_event),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_input_event, base, cargs, result);
    }

    pub fn inputText(self: *const Self, arg_text: *const godot.String) !void {
        if (mbind_input_text == null) {
            mbind_input_text = try api.createMethod("MainLoop", "input_text");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_text),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_input_text, base, cargs, result);
    }

    pub fn iteration(self: *const Self, arg_delta: f32) !bool {
        if (mbind_iteration == null) {
            mbind_iteration = try api.createMethod("MainLoop", "iteration");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_delta),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_iteration, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }
};