// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_animation: ?*c_api.godot_method_bind = null;
var mbind_get_frame: ?*c_api.godot_method_bind = null;
var mbind_get_offset: ?*c_api.godot_method_bind = null;
var mbind_get_speed_scale: ?*c_api.godot_method_bind = null;
var mbind_get_sprite_frames: ?*c_api.godot_method_bind = null;
var mbind_is_centered: ?*c_api.godot_method_bind = null;
var mbind_is_flipped_h: ?*c_api.godot_method_bind = null;
var mbind_is_flipped_v: ?*c_api.godot_method_bind = null;
var mbind_is_playing: ?*c_api.godot_method_bind = null;
var mbind_play: ?*c_api.godot_method_bind = null;
var mbind_set_animation: ?*c_api.godot_method_bind = null;
var mbind_set_centered: ?*c_api.godot_method_bind = null;
var mbind_set_flip_h: ?*c_api.godot_method_bind = null;
var mbind_set_flip_v: ?*c_api.godot_method_bind = null;
var mbind_set_frame: ?*c_api.godot_method_bind = null;
var mbind_set_offset: ?*c_api.godot_method_bind = null;
var mbind_set_speed_scale: ?*c_api.godot_method_bind = null;
var mbind_set_sprite_frames: ?*c_api.godot_method_bind = null;
var mbind_stop: ?*c_api.godot_method_bind = null;
var mbind_animated_sprite_constructor: ?fn () ?*c_api.godot_object = null;

pub const AnimatedSprite = struct {
    const Self = @This();
    pub const BaseClass = godot.Node2D;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_animated_sprite_constructor == null) {
            mbind_animated_sprite_constructor = try api.createConstructor("AnimatedSprite");
        }
        return api.createObject(Self, mbind_animated_sprite_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getAnimation(self: *const Self) !godot.String {
        if (mbind_get_animation == null) {
            mbind_get_animation = try api.createMethod("AnimatedSprite", "get_animation");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_animation, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getFrame(self: *const Self) !i32 {
        if (mbind_get_frame == null) {
            mbind_get_frame = try api.createMethod("AnimatedSprite", "get_frame");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_frame, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getOffset(self: *const Self) !godot.Vector2 {
        if (mbind_get_offset == null) {
            mbind_get_offset = try api.createMethod("AnimatedSprite", "get_offset");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_offset, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getSpeedScale(self: *const Self) !f32 {
        if (mbind_get_speed_scale == null) {
            mbind_get_speed_scale = try api.createMethod("AnimatedSprite", "get_speed_scale");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_speed_scale, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getSpriteFrames(self: *const Self) !godot.SpriteFrames {
        if (mbind_get_sprite_frames == null) {
            mbind_get_sprite_frames = try api.createMethod("AnimatedSprite", "get_sprite_frames");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_sprite_frames, base, cargs, result);
        return @ptrCast(*godot.SpriteFrames, @alignCast(@alignOf(&godot.SpriteFrames), result)).*;
    }

    pub fn isCentered(self: *const Self) !bool {
        if (mbind_is_centered == null) {
            mbind_is_centered = try api.createMethod("AnimatedSprite", "is_centered");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_centered, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isFlippedH(self: *const Self) !bool {
        if (mbind_is_flipped_h == null) {
            mbind_is_flipped_h = try api.createMethod("AnimatedSprite", "is_flipped_h");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_flipped_h, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isFlippedV(self: *const Self) !bool {
        if (mbind_is_flipped_v == null) {
            mbind_is_flipped_v = try api.createMethod("AnimatedSprite", "is_flipped_v");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_flipped_v, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isPlaying(self: *const Self) !bool {
        if (mbind_is_playing == null) {
            mbind_is_playing = try api.createMethod("AnimatedSprite", "is_playing");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_playing, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn play(self: *const Self, arg_anim: *const godot.String, arg_backwards: bool) !void {
        if (mbind_play == null) {
            mbind_play = try api.createMethod("AnimatedSprite", "play");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_anim),
            @ptrCast(*const anyopaque, *arg_backwards),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_play, base, cargs, result);
    }

    pub fn setAnimation(self: *const Self, arg_animation: *const godot.String) !void {
        if (mbind_set_animation == null) {
            mbind_set_animation = try api.createMethod("AnimatedSprite", "set_animation");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_animation),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_animation, base, cargs, result);
    }

    pub fn setCentered(self: *const Self, arg_centered: bool) !void {
        if (mbind_set_centered == null) {
            mbind_set_centered = try api.createMethod("AnimatedSprite", "set_centered");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_centered),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_centered, base, cargs, result);
    }

    pub fn setFlipH(self: *const Self, arg_flip_h: bool) !void {
        if (mbind_set_flip_h == null) {
            mbind_set_flip_h = try api.createMethod("AnimatedSprite", "set_flip_h");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_flip_h),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_flip_h, base, cargs, result);
    }

    pub fn setFlipV(self: *const Self, arg_flip_v: bool) !void {
        if (mbind_set_flip_v == null) {
            mbind_set_flip_v = try api.createMethod("AnimatedSprite", "set_flip_v");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_flip_v),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_flip_v, base, cargs, result);
    }

    pub fn setFrame(self: *const Self, arg_frame: i32) !void {
        if (mbind_set_frame == null) {
            mbind_set_frame = try api.createMethod("AnimatedSprite", "set_frame");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_frame),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_frame, base, cargs, result);
    }

    pub fn setOffset(self: *const Self, arg_offset: *const godot.Vector2) !void {
        if (mbind_set_offset == null) {
            mbind_set_offset = try api.createMethod("AnimatedSprite", "set_offset");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_offset),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_offset, base, cargs, result);
    }

    pub fn setSpeedScale(self: *const Self, arg_speed_scale: f32) !void {
        if (mbind_set_speed_scale == null) {
            mbind_set_speed_scale = try api.createMethod("AnimatedSprite", "set_speed_scale");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_speed_scale),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_speed_scale, base, cargs, result);
    }

    pub fn setSpriteFrames(self: *const Self, arg_sprite_frames: *const godot.SpriteFrames) !void {
        if (mbind_set_sprite_frames == null) {
            mbind_set_sprite_frames = try api.createMethod("AnimatedSprite", "set_sprite_frames");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_sprite_frames),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_sprite_frames, base, cargs, result);
    }

    pub fn stop(self: *const Self) !void {
        if (mbind_stop == null) {
            mbind_stop = try api.createMethod("AnimatedSprite", "stop");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_stop, base, cargs, result);
    }
};