// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const AudioEffectEQ = @import("audio_effect_eq.zig").AudioEffectEQ;

var mbind_audio_effect_eq21_constructor: ?fn () ?*c_api.godot_object = null;

pub const AudioEffectEQ21 = struct {
    const Self = @This();
    const BaseClass = AudioEffectEQ;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_audio_effect_eq21_constructor == null) {
            mbind_audio_effect_eq21_constructor = try api.createConstructor("AudioEffectEQ21");
        }
        return api.createObject(Self, mbind_audio_effect_eq21_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }
};