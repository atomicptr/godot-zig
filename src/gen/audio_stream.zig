// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_length: ?*c_api.godot_method_bind = null;
var mbind_audio_stream_constructor: ?fn () ?*c_api.godot_object = null;

pub const AudioStream = struct {
    const Self = @This();
    pub const BaseClass = godot.Resource;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_audio_stream_constructor == null) {
            mbind_audio_stream_constructor = try api.createConstructor("AudioStream");
        }
        return api.createObject(Self, mbind_audio_stream_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getLength(self: *const Self) !f32 {
        if (mbind_get_length == null) {
            mbind_get_length = try api.createMethod("AudioStream", "get_length");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_length, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }
};