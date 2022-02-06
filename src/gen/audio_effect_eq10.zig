// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

var mbind_audio_effect_eq10_constructor: ?fn () ?*c_api.godot_object = null;

pub const AudioEffectEQ10 = struct {
    const Self = @This();
    pub const BaseClass = godot.AudioEffectEQ;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_audio_effect_eq10_constructor == null) {
            mbind_audio_effect_eq10_constructor = try api.createConstructor("AudioEffectEQ10");
        }
        return api.createObject(Self, mbind_audio_effect_eq10_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }
};