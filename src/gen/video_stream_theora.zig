// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const VideoStream = @import("video_stream.zig").VideoStream;

// method bindings
var mbind_get_file: ?*c_api.godot_method_bind = null;
var mbind_set_file: ?*c_api.godot_method_bind = null;
var mbind_video_stream_theora_constructor: ?fn () ?*c_api.godot_object = null;

pub const VideoStreamTheora = struct {
    const Self = @This();
    const BaseClass = VideoStream;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_video_stream_theora_constructor == null) {
            mbind_video_stream_theora_constructor = try api.createConstructor("VideoStreamTheora");
        }
        return api.createObject(Self, mbind_video_stream_theora_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getFile(self: *const Self) !godot.String {
        if (mbind_get_file == null) {
            mbind_get_file = try api.createMethod("VideoStreamTheora", "get_file");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_file, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn setFile(self: *const Self, arg_file: *const godot.String) !void {
        if (mbind_set_file == null) {
            mbind_set_file = try api.createMethod("VideoStreamTheora", "set_file");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_file),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_file, base, cargs, result);
    }
};