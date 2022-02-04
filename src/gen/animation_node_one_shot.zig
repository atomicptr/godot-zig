// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const AnimationNode = @import("animation_node.zig").AnimationNode;

// method bindings
var mbind_get_autorestart_delay: ?*c_api.godot_method_bind = null;
var mbind_get_autorestart_random_delay: ?*c_api.godot_method_bind = null;
var mbind_get_fadein_time: ?*c_api.godot_method_bind = null;
var mbind_get_fadeout_time: ?*c_api.godot_method_bind = null;
var mbind_get_mix_mode: ?*c_api.godot_method_bind = null;
var mbind_has_autorestart: ?*c_api.godot_method_bind = null;
var mbind_is_using_sync: ?*c_api.godot_method_bind = null;
var mbind_set_autorestart: ?*c_api.godot_method_bind = null;
var mbind_set_autorestart_delay: ?*c_api.godot_method_bind = null;
var mbind_set_autorestart_random_delay: ?*c_api.godot_method_bind = null;
var mbind_set_fadein_time: ?*c_api.godot_method_bind = null;
var mbind_set_fadeout_time: ?*c_api.godot_method_bind = null;
var mbind_set_mix_mode: ?*c_api.godot_method_bind = null;
var mbind_set_use_sync: ?*c_api.godot_method_bind = null;
var mbind_animation_node_one_shot_constructor: ?fn () ?*c_api.godot_object = null;

pub const AnimationNodeOneShot = struct {
    const Self = @This();
    const BaseClass = AnimationNode;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_animation_node_one_shot_constructor == null) {
            mbind_animation_node_one_shot_constructor = try api.createConstructor("AnimationNodeOneShot");
        }
        return api.createObject(Self, mbind_animation_node_one_shot_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getAutorestartDelay(self: *const Self) !f32 {
        if (mbind_get_autorestart_delay == null) {
            mbind_get_autorestart_delay = try api.createMethod("AnimationNodeOneShot", "get_autorestart_delay");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_autorestart_delay, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getAutorestartRandomDelay(self: *const Self) !f32 {
        if (mbind_get_autorestart_random_delay == null) {
            mbind_get_autorestart_random_delay = try api.createMethod("AnimationNodeOneShot", "get_autorestart_random_delay");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_autorestart_random_delay, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getFadeinTime(self: *const Self) !f32 {
        if (mbind_get_fadein_time == null) {
            mbind_get_fadein_time = try api.createMethod("AnimationNodeOneShot", "get_fadein_time");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_fadein_time, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getFadeoutTime(self: *const Self) !f32 {
        if (mbind_get_fadeout_time == null) {
            mbind_get_fadeout_time = try api.createMethod("AnimationNodeOneShot", "get_fadeout_time");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_fadeout_time, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getMixMode(self: *const Self) !i32 {
        if (mbind_get_mix_mode == null) {
            mbind_get_mix_mode = try api.createMethod("AnimationNodeOneShot", "get_mix_mode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_mix_mode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn hasAutorestart(self: *const Self) !bool {
        if (mbind_has_autorestart == null) {
            mbind_has_autorestart = try api.createMethod("AnimationNodeOneShot", "has_autorestart");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_has_autorestart, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isUsingSync(self: *const Self) !bool {
        if (mbind_is_using_sync == null) {
            mbind_is_using_sync = try api.createMethod("AnimationNodeOneShot", "is_using_sync");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_using_sync, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setAutorestart(self: *const Self, arg_enable: bool) !void {
        if (mbind_set_autorestart == null) {
            mbind_set_autorestart = try api.createMethod("AnimationNodeOneShot", "set_autorestart");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_autorestart, base, cargs, result);
    }

    pub fn setAutorestartDelay(self: *const Self, arg_enable: f32) !void {
        if (mbind_set_autorestart_delay == null) {
            mbind_set_autorestart_delay = try api.createMethod("AnimationNodeOneShot", "set_autorestart_delay");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_autorestart_delay, base, cargs, result);
    }

    pub fn setAutorestartRandomDelay(self: *const Self, arg_enable: f32) !void {
        if (mbind_set_autorestart_random_delay == null) {
            mbind_set_autorestart_random_delay = try api.createMethod("AnimationNodeOneShot", "set_autorestart_random_delay");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_autorestart_random_delay, base, cargs, result);
    }

    pub fn setFadeinTime(self: *const Self, arg_time: f32) !void {
        if (mbind_set_fadein_time == null) {
            mbind_set_fadein_time = try api.createMethod("AnimationNodeOneShot", "set_fadein_time");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_time),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_fadein_time, base, cargs, result);
    }

    pub fn setFadeoutTime(self: *const Self, arg_time: f32) !void {
        if (mbind_set_fadeout_time == null) {
            mbind_set_fadeout_time = try api.createMethod("AnimationNodeOneShot", "set_fadeout_time");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_time),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_fadeout_time, base, cargs, result);
    }

    pub fn setMixMode(self: *const Self, arg_mode: i32) !void {
        if (mbind_set_mix_mode == null) {
            mbind_set_mix_mode = try api.createMethod("AnimationNodeOneShot", "set_mix_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_mix_mode, base, cargs, result);
    }

    pub fn setUseSync(self: *const Self, arg_enable: bool) !void {
        if (mbind_set_use_sync == null) {
            mbind_set_use_sync = try api.createMethod("AnimationNodeOneShot", "set_use_sync");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_use_sync, base, cargs, result);
    }
};