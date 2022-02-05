// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const SpriteBase3D = @import("sprite_base_3d.zig").SpriteBase3D;

// method bindings
var mbind_get_animation: ?*c_api.godot_method_bind = null;
var mbind_get_frame: ?*c_api.godot_method_bind = null;
var mbind_get_sprite_frames: ?*c_api.godot_method_bind = null;
var mbind_is_playing: ?*c_api.godot_method_bind = null;
var mbind_play: ?*c_api.godot_method_bind = null;
var mbind_set_animation: ?*c_api.godot_method_bind = null;
var mbind_set_frame: ?*c_api.godot_method_bind = null;
var mbind_set_sprite_frames: ?*c_api.godot_method_bind = null;
var mbind_stop: ?*c_api.godot_method_bind = null;
var mbind_animated_sprite_3d_constructor: ?fn () ?*c_api.godot_object = null;

pub const AnimatedSprite3D = struct {
    const Self = @This();
    const BaseClass = SpriteBase3D;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_animated_sprite_3d_constructor == null) {
            mbind_animated_sprite_3d_constructor = try api.createConstructor("AnimatedSprite3D");
        }
        return api.createObject(Self, mbind_animated_sprite_3d_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getAnimation(self: *const Self) !godot.String {
        if (mbind_get_animation == null) {
            mbind_get_animation = try api.createMethod("AnimatedSprite3D", "get_animation");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_animation, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getFrame(self: *const Self) !i32 {
        if (mbind_get_frame == null) {
            mbind_get_frame = try api.createMethod("AnimatedSprite3D", "get_frame");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_frame, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getSpriteFrames(self: *const Self) !godot.SpriteFrames {
        if (mbind_get_sprite_frames == null) {
            mbind_get_sprite_frames = try api.createMethod("AnimatedSprite3D", "get_sprite_frames");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_sprite_frames, base, cargs, result);
        return @ptrCast(*godot.SpriteFrames, @alignCast(@alignOf(&godot.SpriteFrames), result)).*;
    }

    pub fn isPlaying(self: *const Self) !bool {
        if (mbind_is_playing == null) {
            mbind_is_playing = try api.createMethod("AnimatedSprite3D", "is_playing");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_playing, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn play(self: *const Self, arg_anim: *const godot.String) !void {
        if (mbind_play == null) {
            mbind_play = try api.createMethod("AnimatedSprite3D", "play");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_anim),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_play, base, cargs, result);
    }

    pub fn setAnimation(self: *const Self, arg_animation: *const godot.String) !void {
        if (mbind_set_animation == null) {
            mbind_set_animation = try api.createMethod("AnimatedSprite3D", "set_animation");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_animation),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_animation, base, cargs, result);
    }

    pub fn setFrame(self: *const Self, arg_frame: i32) !void {
        if (mbind_set_frame == null) {
            mbind_set_frame = try api.createMethod("AnimatedSprite3D", "set_frame");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_frame),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_frame, base, cargs, result);
    }

    pub fn setSpriteFrames(self: *const Self, arg_sprite_frames: *const godot.SpriteFrames) !void {
        if (mbind_set_sprite_frames == null) {
            mbind_set_sprite_frames = try api.createMethod("AnimatedSprite3D", "set_sprite_frames");
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
            mbind_stop = try api.createMethod("AnimatedSprite3D", "stop");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_stop, base, cargs, result);
    }
};