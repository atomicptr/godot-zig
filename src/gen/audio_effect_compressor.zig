// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_attack_us: ?*c_api.godot_method_bind = null;
var mbind_get_gain: ?*c_api.godot_method_bind = null;
var mbind_get_mix: ?*c_api.godot_method_bind = null;
var mbind_get_ratio: ?*c_api.godot_method_bind = null;
var mbind_get_release_ms: ?*c_api.godot_method_bind = null;
var mbind_get_sidechain: ?*c_api.godot_method_bind = null;
var mbind_get_threshold: ?*c_api.godot_method_bind = null;
var mbind_set_attack_us: ?*c_api.godot_method_bind = null;
var mbind_set_gain: ?*c_api.godot_method_bind = null;
var mbind_set_mix: ?*c_api.godot_method_bind = null;
var mbind_set_ratio: ?*c_api.godot_method_bind = null;
var mbind_set_release_ms: ?*c_api.godot_method_bind = null;
var mbind_set_sidechain: ?*c_api.godot_method_bind = null;
var mbind_set_threshold: ?*c_api.godot_method_bind = null;
var mbind_audio_effect_compressor_constructor: ?fn () ?*c_api.godot_object = null;

pub const AudioEffectCompressor = struct {
    const Self = @This();
    pub const BaseClass = godot.AudioEffect;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_audio_effect_compressor_constructor == null) {
            mbind_audio_effect_compressor_constructor = try api.createConstructor("AudioEffectCompressor");
        }
        return api.createObject(Self, mbind_audio_effect_compressor_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getAttackUs(self: *const Self) !f32 {
        if (mbind_get_attack_us == null) {
            mbind_get_attack_us = try api.createMethod("AudioEffectCompressor", "get_attack_us");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_attack_us, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getGain(self: *const Self) !f32 {
        if (mbind_get_gain == null) {
            mbind_get_gain = try api.createMethod("AudioEffectCompressor", "get_gain");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_gain, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getMix(self: *const Self) !f32 {
        if (mbind_get_mix == null) {
            mbind_get_mix = try api.createMethod("AudioEffectCompressor", "get_mix");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_mix, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getRatio(self: *const Self) !f32 {
        if (mbind_get_ratio == null) {
            mbind_get_ratio = try api.createMethod("AudioEffectCompressor", "get_ratio");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_ratio, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getReleaseMs(self: *const Self) !f32 {
        if (mbind_get_release_ms == null) {
            mbind_get_release_ms = try api.createMethod("AudioEffectCompressor", "get_release_ms");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_release_ms, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getSidechain(self: *const Self) !godot.String {
        if (mbind_get_sidechain == null) {
            mbind_get_sidechain = try api.createMethod("AudioEffectCompressor", "get_sidechain");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_sidechain, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getThreshold(self: *const Self) !f32 {
        if (mbind_get_threshold == null) {
            mbind_get_threshold = try api.createMethod("AudioEffectCompressor", "get_threshold");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_threshold, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn setAttackUs(self: *const Self, arg_attack_us: f32) !void {
        if (mbind_set_attack_us == null) {
            mbind_set_attack_us = try api.createMethod("AudioEffectCompressor", "set_attack_us");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_attack_us),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_attack_us, base, cargs, result);
    }

    pub fn setGain(self: *const Self, arg_gain: f32) !void {
        if (mbind_set_gain == null) {
            mbind_set_gain = try api.createMethod("AudioEffectCompressor", "set_gain");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_gain),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_gain, base, cargs, result);
    }

    pub fn setMix(self: *const Self, arg_mix: f32) !void {
        if (mbind_set_mix == null) {
            mbind_set_mix = try api.createMethod("AudioEffectCompressor", "set_mix");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mix),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_mix, base, cargs, result);
    }

    pub fn setRatio(self: *const Self, arg_ratio: f32) !void {
        if (mbind_set_ratio == null) {
            mbind_set_ratio = try api.createMethod("AudioEffectCompressor", "set_ratio");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_ratio),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_ratio, base, cargs, result);
    }

    pub fn setReleaseMs(self: *const Self, arg_release_ms: f32) !void {
        if (mbind_set_release_ms == null) {
            mbind_set_release_ms = try api.createMethod("AudioEffectCompressor", "set_release_ms");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_release_ms),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_release_ms, base, cargs, result);
    }

    pub fn setSidechain(self: *const Self, arg_sidechain: *const godot.String) !void {
        if (mbind_set_sidechain == null) {
            mbind_set_sidechain = try api.createMethod("AudioEffectCompressor", "set_sidechain");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_sidechain),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_sidechain, base, cargs, result);
    }

    pub fn setThreshold(self: *const Self, arg_threshold: f32) !void {
        if (mbind_set_threshold == null) {
            mbind_set_threshold = try api.createMethod("AudioEffectCompressor", "set_threshold");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_threshold),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_threshold, base, cargs, result);
    }
};