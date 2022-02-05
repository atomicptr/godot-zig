// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const AudioStreamPlaybackResampled = @import("audio_stream_playback_resampled.zig").AudioStreamPlaybackResampled;

// method bindings
var mbind_can_push_buffer: ?*c_api.godot_method_bind = null;
var mbind_clear_buffer: ?*c_api.godot_method_bind = null;
var mbind_get_frames_available: ?*c_api.godot_method_bind = null;
var mbind_get_skips: ?*c_api.godot_method_bind = null;
var mbind_push_buffer: ?*c_api.godot_method_bind = null;
var mbind_push_frame: ?*c_api.godot_method_bind = null;
var mbind_audio_stream_generator_playback_constructor: ?fn () ?*c_api.godot_object = null;

pub const AudioStreamGeneratorPlayback = struct {
    const Self = @This();
    const BaseClass = AudioStreamPlaybackResampled;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_audio_stream_generator_playback_constructor == null) {
            mbind_audio_stream_generator_playback_constructor = try api.createConstructor("AudioStreamGeneratorPlayback");
        }
        return api.createObject(Self, mbind_audio_stream_generator_playback_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn canPushBuffer(self: *const Self, arg_amount: i32) !bool {
        if (mbind_can_push_buffer == null) {
            mbind_can_push_buffer = try api.createMethod("AudioStreamGeneratorPlayback", "can_push_buffer");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_amount),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_can_push_buffer, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn clearBuffer(self: *const Self) !void {
        if (mbind_clear_buffer == null) {
            mbind_clear_buffer = try api.createMethod("AudioStreamGeneratorPlayback", "clear_buffer");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_clear_buffer, base, cargs, result);
    }

    pub fn getFramesAvailable(self: *const Self) !i32 {
        if (mbind_get_frames_available == null) {
            mbind_get_frames_available = try api.createMethod("AudioStreamGeneratorPlayback", "get_frames_available");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_frames_available, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getSkips(self: *const Self) !i32 {
        if (mbind_get_skips == null) {
            mbind_get_skips = try api.createMethod("AudioStreamGeneratorPlayback", "get_skips");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_skips, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn pushBuffer(self: *const Self, arg_frames: *const godot.PoolVector2Array) !bool {
        if (mbind_push_buffer == null) {
            mbind_push_buffer = try api.createMethod("AudioStreamGeneratorPlayback", "push_buffer");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_frames),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_push_buffer, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn pushFrame(self: *const Self, arg_frame: *const godot.Vector2) !bool {
        if (mbind_push_frame == null) {
            mbind_push_frame = try api.createMethod("AudioStreamGeneratorPlayback", "push_frame");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_frame),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_push_frame, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }
};