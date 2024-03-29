// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_depth: ?*c_api.godot_method_bind = null;
var mbind_get_feedback: ?*c_api.godot_method_bind = null;
var mbind_get_range_max_hz: ?*c_api.godot_method_bind = null;
var mbind_get_range_min_hz: ?*c_api.godot_method_bind = null;
var mbind_get_rate_hz: ?*c_api.godot_method_bind = null;
var mbind_set_depth: ?*c_api.godot_method_bind = null;
var mbind_set_feedback: ?*c_api.godot_method_bind = null;
var mbind_set_range_max_hz: ?*c_api.godot_method_bind = null;
var mbind_set_range_min_hz: ?*c_api.godot_method_bind = null;
var mbind_set_rate_hz: ?*c_api.godot_method_bind = null;
var mbind_audio_effect_phaser_constructor: ?fn () ?*c_api.godot_object = null;

pub const AudioEffectPhaser = struct {
    const Self = @This();
    pub const BaseClass = godot.AudioEffect;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_audio_effect_phaser_constructor == null) {
            mbind_audio_effect_phaser_constructor = try api.createConstructor("AudioEffectPhaser");
        }
        return api.createObject(Self, mbind_audio_effect_phaser_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getDepth(self: *const Self) !f32 {
        if (mbind_get_depth == null) {
            mbind_get_depth = try api.createMethod("AudioEffectPhaser", "get_depth");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_depth, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getFeedback(self: *const Self) !f32 {
        if (mbind_get_feedback == null) {
            mbind_get_feedback = try api.createMethod("AudioEffectPhaser", "get_feedback");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_feedback, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getRangeMaxHz(self: *const Self) !f32 {
        if (mbind_get_range_max_hz == null) {
            mbind_get_range_max_hz = try api.createMethod("AudioEffectPhaser", "get_range_max_hz");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_range_max_hz, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getRangeMinHz(self: *const Self) !f32 {
        if (mbind_get_range_min_hz == null) {
            mbind_get_range_min_hz = try api.createMethod("AudioEffectPhaser", "get_range_min_hz");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_range_min_hz, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getRateHz(self: *const Self) !f32 {
        if (mbind_get_rate_hz == null) {
            mbind_get_rate_hz = try api.createMethod("AudioEffectPhaser", "get_rate_hz");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_rate_hz, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn setDepth(self: *const Self, arg_depth: f32) !void {
        if (mbind_set_depth == null) {
            mbind_set_depth = try api.createMethod("AudioEffectPhaser", "set_depth");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_depth),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_depth, base, cargs, result);
    }

    pub fn setFeedback(self: *const Self, arg_fbk: f32) !void {
        if (mbind_set_feedback == null) {
            mbind_set_feedback = try api.createMethod("AudioEffectPhaser", "set_feedback");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_fbk),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_feedback, base, cargs, result);
    }

    pub fn setRangeMaxHz(self: *const Self, arg_hz: f32) !void {
        if (mbind_set_range_max_hz == null) {
            mbind_set_range_max_hz = try api.createMethod("AudioEffectPhaser", "set_range_max_hz");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_hz),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_range_max_hz, base, cargs, result);
    }

    pub fn setRangeMinHz(self: *const Self, arg_hz: f32) !void {
        if (mbind_set_range_min_hz == null) {
            mbind_set_range_min_hz = try api.createMethod("AudioEffectPhaser", "set_range_min_hz");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_hz),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_range_min_hz, base, cargs, result);
    }

    pub fn setRateHz(self: *const Self, arg_hz: f32) !void {
        if (mbind_set_rate_hz == null) {
            mbind_set_rate_hz = try api.createMethod("AudioEffectPhaser", "set_rate_hz");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_hz),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_rate_hz, base, cargs, result);
    }
};