// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_current_frame: ?*c_api.godot_method_bind = null;
var mbind_get_fps: ?*c_api.godot_method_bind = null;
var mbind_get_frame_delay: ?*c_api.godot_method_bind = null;
var mbind_get_frame_texture: ?*c_api.godot_method_bind = null;
var mbind_get_frames: ?*c_api.godot_method_bind = null;
var mbind_get_oneshot: ?*c_api.godot_method_bind = null;
var mbind_get_pause: ?*c_api.godot_method_bind = null;
var mbind_set_current_frame: ?*c_api.godot_method_bind = null;
var mbind_set_fps: ?*c_api.godot_method_bind = null;
var mbind_set_frame_delay: ?*c_api.godot_method_bind = null;
var mbind_set_frame_texture: ?*c_api.godot_method_bind = null;
var mbind_set_frames: ?*c_api.godot_method_bind = null;
var mbind_set_oneshot: ?*c_api.godot_method_bind = null;
var mbind_set_pause: ?*c_api.godot_method_bind = null;
var mbind_animated_texture_constructor: ?fn () ?*c_api.godot_object = null;

pub const AnimatedTexture = struct {
    const Self = @This();
    pub const BaseClass = godot.Texture;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_animated_texture_constructor == null) {
            mbind_animated_texture_constructor = try api.createConstructor("AnimatedTexture");
        }
        return api.createObject(Self, mbind_animated_texture_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getCurrentFrame(self: *const Self) !i32 {
        if (mbind_get_current_frame == null) {
            mbind_get_current_frame = try api.createMethod("AnimatedTexture", "get_current_frame");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_current_frame, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getFps(self: *const Self) !f32 {
        if (mbind_get_fps == null) {
            mbind_get_fps = try api.createMethod("AnimatedTexture", "get_fps");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_fps, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getFrameDelay(self: *const Self, arg_frame: i32) !f32 {
        if (mbind_get_frame_delay == null) {
            mbind_get_frame_delay = try api.createMethod("AnimatedTexture", "get_frame_delay");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_frame),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_frame_delay, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getFrameTexture(self: *const Self, arg_frame: i32) !godot.Texture {
        if (mbind_get_frame_texture == null) {
            mbind_get_frame_texture = try api.createMethod("AnimatedTexture", "get_frame_texture");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_frame),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_frame_texture, base, cargs, result);
        return @ptrCast(*godot.Texture, @alignCast(@alignOf(&godot.Texture), result)).*;
    }

    pub fn getFrames(self: *const Self) !i32 {
        if (mbind_get_frames == null) {
            mbind_get_frames = try api.createMethod("AnimatedTexture", "get_frames");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_frames, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getOneshot(self: *const Self) !bool {
        if (mbind_get_oneshot == null) {
            mbind_get_oneshot = try api.createMethod("AnimatedTexture", "get_oneshot");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_oneshot, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getPause(self: *const Self) !bool {
        if (mbind_get_pause == null) {
            mbind_get_pause = try api.createMethod("AnimatedTexture", "get_pause");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_pause, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setCurrentFrame(self: *const Self, arg_frame: i32) !void {
        if (mbind_set_current_frame == null) {
            mbind_set_current_frame = try api.createMethod("AnimatedTexture", "set_current_frame");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_frame),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_current_frame, base, cargs, result);
    }

    pub fn setFps(self: *const Self, arg_fps: f32) !void {
        if (mbind_set_fps == null) {
            mbind_set_fps = try api.createMethod("AnimatedTexture", "set_fps");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_fps),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_fps, base, cargs, result);
    }

    pub fn setFrameDelay(self: *const Self, arg_frame: i32, arg_delay: f32) !void {
        if (mbind_set_frame_delay == null) {
            mbind_set_frame_delay = try api.createMethod("AnimatedTexture", "set_frame_delay");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_frame),
            @ptrCast(*const anyopaque, *arg_delay),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_frame_delay, base, cargs, result);
    }

    pub fn setFrameTexture(self: *const Self, arg_frame: i32, arg_texture: *const godot.Texture) !void {
        if (mbind_set_frame_texture == null) {
            mbind_set_frame_texture = try api.createMethod("AnimatedTexture", "set_frame_texture");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_frame),
            @ptrCast(*const anyopaque, arg_texture),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_frame_texture, base, cargs, result);
    }

    pub fn setFrames(self: *const Self, arg_frames: i32) !void {
        if (mbind_set_frames == null) {
            mbind_set_frames = try api.createMethod("AnimatedTexture", "set_frames");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_frames),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_frames, base, cargs, result);
    }

    pub fn setOneshot(self: *const Self, arg_oneshot: bool) !void {
        if (mbind_set_oneshot == null) {
            mbind_set_oneshot = try api.createMethod("AnimatedTexture", "set_oneshot");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_oneshot),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_oneshot, base, cargs, result);
    }

    pub fn setPause(self: *const Self, arg_pause: bool) !void {
        if (mbind_set_pause == null) {
            mbind_set_pause = try api.createMethod("AnimatedTexture", "set_pause");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_pause),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_pause, base, cargs, result);
    }
};