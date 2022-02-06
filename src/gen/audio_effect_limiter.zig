// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_ceiling_db: ?*c_api.godot_method_bind = null;
var mbind_get_soft_clip_db: ?*c_api.godot_method_bind = null;
var mbind_get_soft_clip_ratio: ?*c_api.godot_method_bind = null;
var mbind_get_threshold_db: ?*c_api.godot_method_bind = null;
var mbind_set_ceiling_db: ?*c_api.godot_method_bind = null;
var mbind_set_soft_clip_db: ?*c_api.godot_method_bind = null;
var mbind_set_soft_clip_ratio: ?*c_api.godot_method_bind = null;
var mbind_set_threshold_db: ?*c_api.godot_method_bind = null;
var mbind_audio_effect_limiter_constructor: ?fn () ?*c_api.godot_object = null;

pub const AudioEffectLimiter = struct {
    const Self = @This();
    pub const BaseClass = godot.AudioEffect;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_audio_effect_limiter_constructor == null) {
            mbind_audio_effect_limiter_constructor = try api.createConstructor("AudioEffectLimiter");
        }
        return api.createObject(Self, mbind_audio_effect_limiter_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getCeilingDb(self: *const Self) !f32 {
        if (mbind_get_ceiling_db == null) {
            mbind_get_ceiling_db = try api.createMethod("AudioEffectLimiter", "get_ceiling_db");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_ceiling_db, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getSoftClipDb(self: *const Self) !f32 {
        if (mbind_get_soft_clip_db == null) {
            mbind_get_soft_clip_db = try api.createMethod("AudioEffectLimiter", "get_soft_clip_db");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_soft_clip_db, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getSoftClipRatio(self: *const Self) !f32 {
        if (mbind_get_soft_clip_ratio == null) {
            mbind_get_soft_clip_ratio = try api.createMethod("AudioEffectLimiter", "get_soft_clip_ratio");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_soft_clip_ratio, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getThresholdDb(self: *const Self) !f32 {
        if (mbind_get_threshold_db == null) {
            mbind_get_threshold_db = try api.createMethod("AudioEffectLimiter", "get_threshold_db");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_threshold_db, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn setCeilingDb(self: *const Self, arg_ceiling: f32) !void {
        if (mbind_set_ceiling_db == null) {
            mbind_set_ceiling_db = try api.createMethod("AudioEffectLimiter", "set_ceiling_db");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_ceiling),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_ceiling_db, base, cargs, result);
    }

    pub fn setSoftClipDb(self: *const Self, arg_soft_clip: f32) !void {
        if (mbind_set_soft_clip_db == null) {
            mbind_set_soft_clip_db = try api.createMethod("AudioEffectLimiter", "set_soft_clip_db");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_soft_clip),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_soft_clip_db, base, cargs, result);
    }

    pub fn setSoftClipRatio(self: *const Self, arg_soft_clip: f32) !void {
        if (mbind_set_soft_clip_ratio == null) {
            mbind_set_soft_clip_ratio = try api.createMethod("AudioEffectLimiter", "set_soft_clip_ratio");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_soft_clip),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_soft_clip_ratio, base, cargs, result);
    }

    pub fn setThresholdDb(self: *const Self, arg_threshold: f32) !void {
        if (mbind_set_threshold_db == null) {
            mbind_set_threshold_db = try api.createMethod("AudioEffectLimiter", "set_threshold_db");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_threshold),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_threshold_db, base, cargs, result);
    }
};