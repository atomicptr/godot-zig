// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_audio_track: ?*c_api.godot_method_bind = null;
var mbind_get_buffering_msec: ?*c_api.godot_method_bind = null;
var mbind_get_bus: ?*c_api.godot_method_bind = null;
var mbind_get_stream: ?*c_api.godot_method_bind = null;
var mbind_get_stream_name: ?*c_api.godot_method_bind = null;
var mbind_get_stream_position: ?*c_api.godot_method_bind = null;
var mbind_get_video_texture: ?*c_api.godot_method_bind = null;
var mbind_get_volume: ?*c_api.godot_method_bind = null;
var mbind_get_volume_db: ?*c_api.godot_method_bind = null;
var mbind_has_autoplay: ?*c_api.godot_method_bind = null;
var mbind_has_expand: ?*c_api.godot_method_bind = null;
var mbind_is_paused: ?*c_api.godot_method_bind = null;
var mbind_is_playing: ?*c_api.godot_method_bind = null;
var mbind_play: ?*c_api.godot_method_bind = null;
var mbind_set_audio_track: ?*c_api.godot_method_bind = null;
var mbind_set_autoplay: ?*c_api.godot_method_bind = null;
var mbind_set_buffering_msec: ?*c_api.godot_method_bind = null;
var mbind_set_bus: ?*c_api.godot_method_bind = null;
var mbind_set_expand: ?*c_api.godot_method_bind = null;
var mbind_set_paused: ?*c_api.godot_method_bind = null;
var mbind_set_stream: ?*c_api.godot_method_bind = null;
var mbind_set_stream_position: ?*c_api.godot_method_bind = null;
var mbind_set_volume: ?*c_api.godot_method_bind = null;
var mbind_set_volume_db: ?*c_api.godot_method_bind = null;
var mbind_stop: ?*c_api.godot_method_bind = null;
var mbind_video_player_constructor: ?fn () ?*c_api.godot_object = null;

pub const VideoPlayer = struct {
    const Self = @This();
    pub const BaseClass = godot.Control;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_video_player_constructor == null) {
            mbind_video_player_constructor = try api.createConstructor("VideoPlayer");
        }
        return api.createObject(Self, mbind_video_player_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getAudioTrack(self: *const Self) !i32 {
        if (mbind_get_audio_track == null) {
            mbind_get_audio_track = try api.createMethod("VideoPlayer", "get_audio_track");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_audio_track, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getBufferingMsec(self: *const Self) !i32 {
        if (mbind_get_buffering_msec == null) {
            mbind_get_buffering_msec = try api.createMethod("VideoPlayer", "get_buffering_msec");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_buffering_msec, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getBus(self: *const Self) !godot.String {
        if (mbind_get_bus == null) {
            mbind_get_bus = try api.createMethod("VideoPlayer", "get_bus");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_bus, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getStream(self: *const Self) !godot.VideoStream {
        if (mbind_get_stream == null) {
            mbind_get_stream = try api.createMethod("VideoPlayer", "get_stream");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_stream, base, cargs, result);
        return @ptrCast(*godot.VideoStream, @alignCast(@alignOf(&godot.VideoStream), result)).*;
    }

    pub fn getStreamName(self: *const Self) !godot.String {
        if (mbind_get_stream_name == null) {
            mbind_get_stream_name = try api.createMethod("VideoPlayer", "get_stream_name");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_stream_name, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getStreamPosition(self: *const Self) !f32 {
        if (mbind_get_stream_position == null) {
            mbind_get_stream_position = try api.createMethod("VideoPlayer", "get_stream_position");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_stream_position, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getVideoTexture(self: *const Self) !godot.Texture {
        if (mbind_get_video_texture == null) {
            mbind_get_video_texture = try api.createMethod("VideoPlayer", "get_video_texture");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_video_texture, base, cargs, result);
        return @ptrCast(*godot.Texture, @alignCast(@alignOf(&godot.Texture), result)).*;
    }

    pub fn getVolume(self: *const Self) !f32 {
        if (mbind_get_volume == null) {
            mbind_get_volume = try api.createMethod("VideoPlayer", "get_volume");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_volume, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getVolumeDb(self: *const Self) !f32 {
        if (mbind_get_volume_db == null) {
            mbind_get_volume_db = try api.createMethod("VideoPlayer", "get_volume_db");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_volume_db, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn hasAutoplay(self: *const Self) !bool {
        if (mbind_has_autoplay == null) {
            mbind_has_autoplay = try api.createMethod("VideoPlayer", "has_autoplay");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_has_autoplay, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn hasExpand(self: *const Self) !bool {
        if (mbind_has_expand == null) {
            mbind_has_expand = try api.createMethod("VideoPlayer", "has_expand");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_has_expand, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isPaused(self: *const Self) !bool {
        if (mbind_is_paused == null) {
            mbind_is_paused = try api.createMethod("VideoPlayer", "is_paused");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_paused, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isPlaying(self: *const Self) !bool {
        if (mbind_is_playing == null) {
            mbind_is_playing = try api.createMethod("VideoPlayer", "is_playing");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_playing, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn play(self: *const Self) !void {
        if (mbind_play == null) {
            mbind_play = try api.createMethod("VideoPlayer", "play");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_play, base, cargs, result);
    }

    pub fn setAudioTrack(self: *const Self, arg_track: i32) !void {
        if (mbind_set_audio_track == null) {
            mbind_set_audio_track = try api.createMethod("VideoPlayer", "set_audio_track");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_track),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_audio_track, base, cargs, result);
    }

    pub fn setAutoplay(self: *const Self, arg_enabled: bool) !void {
        if (mbind_set_autoplay == null) {
            mbind_set_autoplay = try api.createMethod("VideoPlayer", "set_autoplay");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enabled),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_autoplay, base, cargs, result);
    }

    pub fn setBufferingMsec(self: *const Self, arg_msec: i32) !void {
        if (mbind_set_buffering_msec == null) {
            mbind_set_buffering_msec = try api.createMethod("VideoPlayer", "set_buffering_msec");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_msec),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_buffering_msec, base, cargs, result);
    }

    pub fn setBus(self: *const Self, arg_bus: *const godot.String) !void {
        if (mbind_set_bus == null) {
            mbind_set_bus = try api.createMethod("VideoPlayer", "set_bus");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_bus),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_bus, base, cargs, result);
    }

    pub fn setExpand(self: *const Self, arg_enable: bool) !void {
        if (mbind_set_expand == null) {
            mbind_set_expand = try api.createMethod("VideoPlayer", "set_expand");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_expand, base, cargs, result);
    }

    pub fn setPaused(self: *const Self, arg_paused: bool) !void {
        if (mbind_set_paused == null) {
            mbind_set_paused = try api.createMethod("VideoPlayer", "set_paused");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_paused),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_paused, base, cargs, result);
    }

    pub fn setStream(self: *const Self, arg_stream: *const godot.VideoStream) !void {
        if (mbind_set_stream == null) {
            mbind_set_stream = try api.createMethod("VideoPlayer", "set_stream");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_stream),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_stream, base, cargs, result);
    }

    pub fn setStreamPosition(self: *const Self, arg_position: f32) !void {
        if (mbind_set_stream_position == null) {
            mbind_set_stream_position = try api.createMethod("VideoPlayer", "set_stream_position");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_position),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_stream_position, base, cargs, result);
    }

    pub fn setVolume(self: *const Self, arg_volume: f32) !void {
        if (mbind_set_volume == null) {
            mbind_set_volume = try api.createMethod("VideoPlayer", "set_volume");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_volume),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_volume, base, cargs, result);
    }

    pub fn setVolumeDb(self: *const Self, arg_db: f32) !void {
        if (mbind_set_volume_db == null) {
            mbind_set_volume_db = try api.createMethod("VideoPlayer", "set_volume_db");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_db),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_volume_db, base, cargs, result);
    }

    pub fn stop(self: *const Self) !void {
        if (mbind_stop == null) {
            mbind_stop = try api.createMethod("VideoPlayer", "stop");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_stop, base, cargs, result);
    }
};