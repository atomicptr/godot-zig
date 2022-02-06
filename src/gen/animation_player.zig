// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_add_animation: ?*c_api.godot_method_bind = null;
var mbind_advance: ?*c_api.godot_method_bind = null;
var mbind_animation_get_next: ?*c_api.godot_method_bind = null;
var mbind_animation_set_next: ?*c_api.godot_method_bind = null;
var mbind_clear_caches: ?*c_api.godot_method_bind = null;
var mbind_clear_queue: ?*c_api.godot_method_bind = null;
var mbind_find_animation: ?*c_api.godot_method_bind = null;
var mbind_get_animation: ?*c_api.godot_method_bind = null;
var mbind_get_animation_list: ?*c_api.godot_method_bind = null;
var mbind_get_animation_process_mode: ?*c_api.godot_method_bind = null;
var mbind_get_assigned_animation: ?*c_api.godot_method_bind = null;
var mbind_get_autoplay: ?*c_api.godot_method_bind = null;
var mbind_get_blend_time: ?*c_api.godot_method_bind = null;
var mbind_get_current_animation: ?*c_api.godot_method_bind = null;
var mbind_get_current_animation_length: ?*c_api.godot_method_bind = null;
var mbind_get_current_animation_position: ?*c_api.godot_method_bind = null;
var mbind_get_default_blend_time: ?*c_api.godot_method_bind = null;
var mbind_get_method_call_mode: ?*c_api.godot_method_bind = null;
var mbind_get_playing_speed: ?*c_api.godot_method_bind = null;
var mbind_get_queue: ?*c_api.godot_method_bind = null;
var mbind_get_root: ?*c_api.godot_method_bind = null;
var mbind_get_speed_scale: ?*c_api.godot_method_bind = null;
var mbind_has_animation: ?*c_api.godot_method_bind = null;
var mbind_is_active: ?*c_api.godot_method_bind = null;
var mbind_is_playing: ?*c_api.godot_method_bind = null;
var mbind_is_reset_on_save_enabled: ?*c_api.godot_method_bind = null;
var mbind_play: ?*c_api.godot_method_bind = null;
var mbind_play_backwards: ?*c_api.godot_method_bind = null;
var mbind_queue: ?*c_api.godot_method_bind = null;
var mbind_remove_animation: ?*c_api.godot_method_bind = null;
var mbind_rename_animation: ?*c_api.godot_method_bind = null;
var mbind_seek: ?*c_api.godot_method_bind = null;
var mbind_set_active: ?*c_api.godot_method_bind = null;
var mbind_set_animation_process_mode: ?*c_api.godot_method_bind = null;
var mbind_set_assigned_animation: ?*c_api.godot_method_bind = null;
var mbind_set_autoplay: ?*c_api.godot_method_bind = null;
var mbind_set_blend_time: ?*c_api.godot_method_bind = null;
var mbind_set_current_animation: ?*c_api.godot_method_bind = null;
var mbind_set_default_blend_time: ?*c_api.godot_method_bind = null;
var mbind_set_method_call_mode: ?*c_api.godot_method_bind = null;
var mbind_set_reset_on_save_enabled: ?*c_api.godot_method_bind = null;
var mbind_set_root: ?*c_api.godot_method_bind = null;
var mbind_set_speed_scale: ?*c_api.godot_method_bind = null;
var mbind_stop: ?*c_api.godot_method_bind = null;
var mbind_animation_player_constructor: ?fn () ?*c_api.godot_object = null;

pub const AnimationPlayer = struct {
    const Self = @This();
    pub const BaseClass = godot.Node;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_animation_player_constructor == null) {
            mbind_animation_player_constructor = try api.createConstructor("AnimationPlayer");
        }
        return api.createObject(Self, mbind_animation_player_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn addAnimation(self: *const Self, arg_name: *const godot.String, arg_animation: *const godot.Animation) !i32 {
        if (mbind_add_animation == null) {
            mbind_add_animation = try api.createMethod("AnimationPlayer", "add_animation");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
            @ptrCast(*const anyopaque, arg_animation),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_animation, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn advance(self: *const Self, arg_delta: f32) !void {
        if (mbind_advance == null) {
            mbind_advance = try api.createMethod("AnimationPlayer", "advance");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_delta),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_advance, base, cargs, result);
    }

    pub fn animationGetNext(self: *const Self, arg_anim_from: *const godot.String) !godot.String {
        if (mbind_animation_get_next == null) {
            mbind_animation_get_next = try api.createMethod("AnimationPlayer", "animation_get_next");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_anim_from),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_animation_get_next, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn animationSetNext(self: *const Self, arg_anim_from: *const godot.String, arg_anim_to: *const godot.String) !void {
        if (mbind_animation_set_next == null) {
            mbind_animation_set_next = try api.createMethod("AnimationPlayer", "animation_set_next");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_anim_from),
            @ptrCast(*const anyopaque, arg_anim_to),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_animation_set_next, base, cargs, result);
    }

    pub fn clearCaches(self: *const Self) !void {
        if (mbind_clear_caches == null) {
            mbind_clear_caches = try api.createMethod("AnimationPlayer", "clear_caches");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_clear_caches, base, cargs, result);
    }

    pub fn clearQueue(self: *const Self) !void {
        if (mbind_clear_queue == null) {
            mbind_clear_queue = try api.createMethod("AnimationPlayer", "clear_queue");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_clear_queue, base, cargs, result);
    }

    pub fn findAnimation(self: *const Self, arg_animation: *const godot.Animation) !godot.String {
        if (mbind_find_animation == null) {
            mbind_find_animation = try api.createMethod("AnimationPlayer", "find_animation");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_animation),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_find_animation, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getAnimation(self: *const Self, arg_name: *const godot.String) !godot.Animation {
        if (mbind_get_animation == null) {
            mbind_get_animation = try api.createMethod("AnimationPlayer", "get_animation");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_animation, base, cargs, result);
        return @ptrCast(*godot.Animation, @alignCast(@alignOf(&godot.Animation), result)).*;
    }

    pub fn getAnimationList(self: *const Self) !godot.PoolStringArray {
        if (mbind_get_animation_list == null) {
            mbind_get_animation_list = try api.createMethod("AnimationPlayer", "get_animation_list");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_animation_list, base, cargs, result);
        return @ptrCast(*godot.PoolStringArray, @alignCast(@alignOf(&godot.PoolStringArray), result)).*;
    }

    pub fn getAnimationProcessMode(self: *const Self) !i32 {
        if (mbind_get_animation_process_mode == null) {
            mbind_get_animation_process_mode = try api.createMethod("AnimationPlayer", "get_animation_process_mode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_animation_process_mode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getAssignedAnimation(self: *const Self) !godot.String {
        if (mbind_get_assigned_animation == null) {
            mbind_get_assigned_animation = try api.createMethod("AnimationPlayer", "get_assigned_animation");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_assigned_animation, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getAutoplay(self: *const Self) !godot.String {
        if (mbind_get_autoplay == null) {
            mbind_get_autoplay = try api.createMethod("AnimationPlayer", "get_autoplay");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_autoplay, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getBlendTime(self: *const Self, arg_anim_from: *const godot.String, arg_anim_to: *const godot.String) !f32 {
        if (mbind_get_blend_time == null) {
            mbind_get_blend_time = try api.createMethod("AnimationPlayer", "get_blend_time");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_anim_from),
            @ptrCast(*const anyopaque, arg_anim_to),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_blend_time, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getCurrentAnimation(self: *const Self) !godot.String {
        if (mbind_get_current_animation == null) {
            mbind_get_current_animation = try api.createMethod("AnimationPlayer", "get_current_animation");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_current_animation, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getCurrentAnimationLength(self: *const Self) !f32 {
        if (mbind_get_current_animation_length == null) {
            mbind_get_current_animation_length = try api.createMethod("AnimationPlayer", "get_current_animation_length");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_current_animation_length, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getCurrentAnimationPosition(self: *const Self) !f32 {
        if (mbind_get_current_animation_position == null) {
            mbind_get_current_animation_position = try api.createMethod("AnimationPlayer", "get_current_animation_position");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_current_animation_position, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getDefaultBlendTime(self: *const Self) !f32 {
        if (mbind_get_default_blend_time == null) {
            mbind_get_default_blend_time = try api.createMethod("AnimationPlayer", "get_default_blend_time");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_default_blend_time, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getMethodCallMode(self: *const Self) !i32 {
        if (mbind_get_method_call_mode == null) {
            mbind_get_method_call_mode = try api.createMethod("AnimationPlayer", "get_method_call_mode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_method_call_mode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getPlayingSpeed(self: *const Self) !f32 {
        if (mbind_get_playing_speed == null) {
            mbind_get_playing_speed = try api.createMethod("AnimationPlayer", "get_playing_speed");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_playing_speed, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getQueue(self: *const Self) !godot.PoolStringArray {
        if (mbind_get_queue == null) {
            mbind_get_queue = try api.createMethod("AnimationPlayer", "get_queue");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_queue, base, cargs, result);
        return @ptrCast(*godot.PoolStringArray, @alignCast(@alignOf(&godot.PoolStringArray), result)).*;
    }

    pub fn getRoot(self: *const Self) !godot.NodePath {
        if (mbind_get_root == null) {
            mbind_get_root = try api.createMethod("AnimationPlayer", "get_root");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_root, base, cargs, result);
        return @ptrCast(*godot.NodePath, @alignCast(@alignOf(&godot.NodePath), result)).*;
    }

    pub fn getSpeedScale(self: *const Self) !f32 {
        if (mbind_get_speed_scale == null) {
            mbind_get_speed_scale = try api.createMethod("AnimationPlayer", "get_speed_scale");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_speed_scale, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn hasAnimation(self: *const Self, arg_name: *const godot.String) !bool {
        if (mbind_has_animation == null) {
            mbind_has_animation = try api.createMethod("AnimationPlayer", "has_animation");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_has_animation, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isActive(self: *const Self) !bool {
        if (mbind_is_active == null) {
            mbind_is_active = try api.createMethod("AnimationPlayer", "is_active");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_active, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isPlaying(self: *const Self) !bool {
        if (mbind_is_playing == null) {
            mbind_is_playing = try api.createMethod("AnimationPlayer", "is_playing");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_playing, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isResetOnSaveEnabled(self: *const Self) !bool {
        if (mbind_is_reset_on_save_enabled == null) {
            mbind_is_reset_on_save_enabled = try api.createMethod("AnimationPlayer", "is_reset_on_save_enabled");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_reset_on_save_enabled, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn play(self: *const Self, arg_name: *const godot.String, arg_custom_blend: f32, arg_custom_speed: f32, arg_from_end: bool) !void {
        if (mbind_play == null) {
            mbind_play = try api.createMethod("AnimationPlayer", "play");
        }

        var result: ?*anyopaque = null;
        var args: [4]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
            @ptrCast(*const anyopaque, *arg_custom_blend),
            @ptrCast(*const anyopaque, *arg_custom_speed),
            @ptrCast(*const anyopaque, *arg_from_end),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_play, base, cargs, result);
    }

    pub fn playBackwards(self: *const Self, arg_name: *const godot.String, arg_custom_blend: f32) !void {
        if (mbind_play_backwards == null) {
            mbind_play_backwards = try api.createMethod("AnimationPlayer", "play_backwards");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
            @ptrCast(*const anyopaque, *arg_custom_blend),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_play_backwards, base, cargs, result);
    }

    pub fn queue(self: *const Self, arg_name: *const godot.String) !void {
        if (mbind_queue == null) {
            mbind_queue = try api.createMethod("AnimationPlayer", "queue");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_queue, base, cargs, result);
    }

    pub fn removeAnimation(self: *const Self, arg_name: *const godot.String) !void {
        if (mbind_remove_animation == null) {
            mbind_remove_animation = try api.createMethod("AnimationPlayer", "remove_animation");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_remove_animation, base, cargs, result);
    }

    pub fn renameAnimation(self: *const Self, arg_name: *const godot.String, arg_newname: *const godot.String) !void {
        if (mbind_rename_animation == null) {
            mbind_rename_animation = try api.createMethod("AnimationPlayer", "rename_animation");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
            @ptrCast(*const anyopaque, arg_newname),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_rename_animation, base, cargs, result);
    }

    pub fn seek(self: *const Self, arg_seconds: f32, arg_update: bool) !void {
        if (mbind_seek == null) {
            mbind_seek = try api.createMethod("AnimationPlayer", "seek");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_seconds),
            @ptrCast(*const anyopaque, *arg_update),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_seek, base, cargs, result);
    }

    pub fn setActive(self: *const Self, arg_active: bool) !void {
        if (mbind_set_active == null) {
            mbind_set_active = try api.createMethod("AnimationPlayer", "set_active");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_active),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_active, base, cargs, result);
    }

    pub fn setAnimationProcessMode(self: *const Self, arg_mode: i32) !void {
        if (mbind_set_animation_process_mode == null) {
            mbind_set_animation_process_mode = try api.createMethod("AnimationPlayer", "set_animation_process_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_animation_process_mode, base, cargs, result);
    }

    pub fn setAssignedAnimation(self: *const Self, arg_anim: *const godot.String) !void {
        if (mbind_set_assigned_animation == null) {
            mbind_set_assigned_animation = try api.createMethod("AnimationPlayer", "set_assigned_animation");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_anim),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_assigned_animation, base, cargs, result);
    }

    pub fn setAutoplay(self: *const Self, arg_name: *const godot.String) !void {
        if (mbind_set_autoplay == null) {
            mbind_set_autoplay = try api.createMethod("AnimationPlayer", "set_autoplay");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_autoplay, base, cargs, result);
    }

    pub fn setBlendTime(self: *const Self, arg_anim_from: *const godot.String, arg_anim_to: *const godot.String, arg_sec: f32) !void {
        if (mbind_set_blend_time == null) {
            mbind_set_blend_time = try api.createMethod("AnimationPlayer", "set_blend_time");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_anim_from),
            @ptrCast(*const anyopaque, arg_anim_to),
            @ptrCast(*const anyopaque, *arg_sec),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_blend_time, base, cargs, result);
    }

    pub fn setCurrentAnimation(self: *const Self, arg_anim: *const godot.String) !void {
        if (mbind_set_current_animation == null) {
            mbind_set_current_animation = try api.createMethod("AnimationPlayer", "set_current_animation");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_anim),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_current_animation, base, cargs, result);
    }

    pub fn setDefaultBlendTime(self: *const Self, arg_sec: f32) !void {
        if (mbind_set_default_blend_time == null) {
            mbind_set_default_blend_time = try api.createMethod("AnimationPlayer", "set_default_blend_time");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_sec),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_default_blend_time, base, cargs, result);
    }

    pub fn setMethodCallMode(self: *const Self, arg_mode: i32) !void {
        if (mbind_set_method_call_mode == null) {
            mbind_set_method_call_mode = try api.createMethod("AnimationPlayer", "set_method_call_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_method_call_mode, base, cargs, result);
    }

    pub fn setResetOnSaveEnabled(self: *const Self, arg_enabled: bool) !void {
        if (mbind_set_reset_on_save_enabled == null) {
            mbind_set_reset_on_save_enabled = try api.createMethod("AnimationPlayer", "set_reset_on_save_enabled");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enabled),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_reset_on_save_enabled, base, cargs, result);
    }

    pub fn setRoot(self: *const Self, arg_path: *const godot.NodePath) !void {
        if (mbind_set_root == null) {
            mbind_set_root = try api.createMethod("AnimationPlayer", "set_root");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_path),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_root, base, cargs, result);
    }

    pub fn setSpeedScale(self: *const Self, arg_speed: f32) !void {
        if (mbind_set_speed_scale == null) {
            mbind_set_speed_scale = try api.createMethod("AnimationPlayer", "set_speed_scale");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_speed),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_speed_scale, base, cargs, result);
    }

    pub fn stop(self: *const Self, arg_reset: bool) !void {
        if (mbind_stop == null) {
            mbind_stop = try api.createMethod("AnimationPlayer", "stop");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_reset),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_stop, base, cargs, result);
    }
};