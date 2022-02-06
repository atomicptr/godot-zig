// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_volume_db: ?*c_api.godot_method_bind = null;
var mbind_set_volume_db: ?*c_api.godot_method_bind = null;
var mbind_audio_effect_amplify_constructor: ?fn () ?*c_api.godot_object = null;

pub const AudioEffectAmplify = struct {
    const Self = @This();
    pub const BaseClass = godot.AudioEffect;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_audio_effect_amplify_constructor == null) {
            mbind_audio_effect_amplify_constructor = try api.createConstructor("AudioEffectAmplify");
        }
        return api.createObject(Self, mbind_audio_effect_amplify_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getVolumeDb(self: *const Self) !f32 {
        if (mbind_get_volume_db == null) {
            mbind_get_volume_db = try api.createMethod("AudioEffectAmplify", "get_volume_db");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_volume_db, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn setVolumeDb(self: *const Self, arg_volume: f32) !void {
        if (mbind_set_volume_db == null) {
            mbind_set_volume_db = try api.createMethod("AudioEffectAmplify", "set_volume_db");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_volume),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_volume_db, base, cargs, result);
    }
};