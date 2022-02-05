// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const AudioEffect = @import("audio_effect.zig").AudioEffect;

// method bindings
var mbind_get_dry: ?*c_api.godot_method_bind = null;
var mbind_get_voice_count: ?*c_api.godot_method_bind = null;
var mbind_get_voice_cutoff_hz: ?*c_api.godot_method_bind = null;
var mbind_get_voice_delay_ms: ?*c_api.godot_method_bind = null;
var mbind_get_voice_depth_ms: ?*c_api.godot_method_bind = null;
var mbind_get_voice_level_db: ?*c_api.godot_method_bind = null;
var mbind_get_voice_pan: ?*c_api.godot_method_bind = null;
var mbind_get_voice_rate_hz: ?*c_api.godot_method_bind = null;
var mbind_get_wet: ?*c_api.godot_method_bind = null;
var mbind_set_dry: ?*c_api.godot_method_bind = null;
var mbind_set_voice_count: ?*c_api.godot_method_bind = null;
var mbind_set_voice_cutoff_hz: ?*c_api.godot_method_bind = null;
var mbind_set_voice_delay_ms: ?*c_api.godot_method_bind = null;
var mbind_set_voice_depth_ms: ?*c_api.godot_method_bind = null;
var mbind_set_voice_level_db: ?*c_api.godot_method_bind = null;
var mbind_set_voice_pan: ?*c_api.godot_method_bind = null;
var mbind_set_voice_rate_hz: ?*c_api.godot_method_bind = null;
var mbind_set_wet: ?*c_api.godot_method_bind = null;
var mbind_audio_effect_chorus_constructor: ?fn () ?*c_api.godot_object = null;

pub const AudioEffectChorus = struct {
    const Self = @This();
    const BaseClass = AudioEffect;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_audio_effect_chorus_constructor == null) {
            mbind_audio_effect_chorus_constructor = try api.createConstructor("AudioEffectChorus");
        }
        return api.createObject(Self, mbind_audio_effect_chorus_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getDry(self: *const Self) !f32 {
        if (mbind_get_dry == null) {
            mbind_get_dry = try api.createMethod("AudioEffectChorus", "get_dry");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_dry, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getVoiceCount(self: *const Self) !i32 {
        if (mbind_get_voice_count == null) {
            mbind_get_voice_count = try api.createMethod("AudioEffectChorus", "get_voice_count");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_voice_count, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getVoiceCutoffHz(self: *const Self, arg_voice_idx: i32) !f32 {
        if (mbind_get_voice_cutoff_hz == null) {
            mbind_get_voice_cutoff_hz = try api.createMethod("AudioEffectChorus", "get_voice_cutoff_hz");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_voice_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_voice_cutoff_hz, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getVoiceDelayMs(self: *const Self, arg_voice_idx: i32) !f32 {
        if (mbind_get_voice_delay_ms == null) {
            mbind_get_voice_delay_ms = try api.createMethod("AudioEffectChorus", "get_voice_delay_ms");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_voice_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_voice_delay_ms, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getVoiceDepthMs(self: *const Self, arg_voice_idx: i32) !f32 {
        if (mbind_get_voice_depth_ms == null) {
            mbind_get_voice_depth_ms = try api.createMethod("AudioEffectChorus", "get_voice_depth_ms");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_voice_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_voice_depth_ms, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getVoiceLevelDb(self: *const Self, arg_voice_idx: i32) !f32 {
        if (mbind_get_voice_level_db == null) {
            mbind_get_voice_level_db = try api.createMethod("AudioEffectChorus", "get_voice_level_db");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_voice_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_voice_level_db, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getVoicePan(self: *const Self, arg_voice_idx: i32) !f32 {
        if (mbind_get_voice_pan == null) {
            mbind_get_voice_pan = try api.createMethod("AudioEffectChorus", "get_voice_pan");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_voice_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_voice_pan, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getVoiceRateHz(self: *const Self, arg_voice_idx: i32) !f32 {
        if (mbind_get_voice_rate_hz == null) {
            mbind_get_voice_rate_hz = try api.createMethod("AudioEffectChorus", "get_voice_rate_hz");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_voice_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_voice_rate_hz, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getWet(self: *const Self) !f32 {
        if (mbind_get_wet == null) {
            mbind_get_wet = try api.createMethod("AudioEffectChorus", "get_wet");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_wet, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn setDry(self: *const Self, arg_amount: f32) !void {
        if (mbind_set_dry == null) {
            mbind_set_dry = try api.createMethod("AudioEffectChorus", "set_dry");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_amount),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_dry, base, cargs, result);
    }

    pub fn setVoiceCount(self: *const Self, arg_voices: i32) !void {
        if (mbind_set_voice_count == null) {
            mbind_set_voice_count = try api.createMethod("AudioEffectChorus", "set_voice_count");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_voices),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_voice_count, base, cargs, result);
    }

    pub fn setVoiceCutoffHz(self: *const Self, arg_voice_idx: i32, arg_cutoff_hz: f32) !void {
        if (mbind_set_voice_cutoff_hz == null) {
            mbind_set_voice_cutoff_hz = try api.createMethod("AudioEffectChorus", "set_voice_cutoff_hz");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_voice_idx),
            @ptrCast(*const anyopaque, *arg_cutoff_hz),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_voice_cutoff_hz, base, cargs, result);
    }

    pub fn setVoiceDelayMs(self: *const Self, arg_voice_idx: i32, arg_delay_ms: f32) !void {
        if (mbind_set_voice_delay_ms == null) {
            mbind_set_voice_delay_ms = try api.createMethod("AudioEffectChorus", "set_voice_delay_ms");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_voice_idx),
            @ptrCast(*const anyopaque, *arg_delay_ms),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_voice_delay_ms, base, cargs, result);
    }

    pub fn setVoiceDepthMs(self: *const Self, arg_voice_idx: i32, arg_depth_ms: f32) !void {
        if (mbind_set_voice_depth_ms == null) {
            mbind_set_voice_depth_ms = try api.createMethod("AudioEffectChorus", "set_voice_depth_ms");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_voice_idx),
            @ptrCast(*const anyopaque, *arg_depth_ms),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_voice_depth_ms, base, cargs, result);
    }

    pub fn setVoiceLevelDb(self: *const Self, arg_voice_idx: i32, arg_level_db: f32) !void {
        if (mbind_set_voice_level_db == null) {
            mbind_set_voice_level_db = try api.createMethod("AudioEffectChorus", "set_voice_level_db");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_voice_idx),
            @ptrCast(*const anyopaque, *arg_level_db),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_voice_level_db, base, cargs, result);
    }

    pub fn setVoicePan(self: *const Self, arg_voice_idx: i32, arg_pan: f32) !void {
        if (mbind_set_voice_pan == null) {
            mbind_set_voice_pan = try api.createMethod("AudioEffectChorus", "set_voice_pan");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_voice_idx),
            @ptrCast(*const anyopaque, *arg_pan),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_voice_pan, base, cargs, result);
    }

    pub fn setVoiceRateHz(self: *const Self, arg_voice_idx: i32, arg_rate_hz: f32) !void {
        if (mbind_set_voice_rate_hz == null) {
            mbind_set_voice_rate_hz = try api.createMethod("AudioEffectChorus", "set_voice_rate_hz");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_voice_idx),
            @ptrCast(*const anyopaque, *arg_rate_hz),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_voice_rate_hz, base, cargs, result);
    }

    pub fn setWet(self: *const Self, arg_amount: f32) !void {
        if (mbind_set_wet == null) {
            mbind_set_wet = try api.createMethod("AudioEffectChorus", "set_wet");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_amount),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_wet, base, cargs, result);
    }
};