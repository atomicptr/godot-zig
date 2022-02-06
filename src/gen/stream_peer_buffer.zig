// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_clear: ?*c_api.godot_method_bind = null;
var mbind_duplicate: ?*c_api.godot_method_bind = null;
var mbind_get_data_array: ?*c_api.godot_method_bind = null;
var mbind_get_position: ?*c_api.godot_method_bind = null;
var mbind_get_size: ?*c_api.godot_method_bind = null;
var mbind_resize: ?*c_api.godot_method_bind = null;
var mbind_seek: ?*c_api.godot_method_bind = null;
var mbind_set_data_array: ?*c_api.godot_method_bind = null;
var mbind_stream_peer_buffer_constructor: ?fn () ?*c_api.godot_object = null;

pub const StreamPeerBuffer = struct {
    const Self = @This();
    pub const BaseClass = godot.StreamPeer;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_stream_peer_buffer_constructor == null) {
            mbind_stream_peer_buffer_constructor = try api.createConstructor("StreamPeerBuffer");
        }
        return api.createObject(Self, mbind_stream_peer_buffer_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn clear(self: *const Self) !void {
        if (mbind_clear == null) {
            mbind_clear = try api.createMethod("StreamPeerBuffer", "clear");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_clear, base, cargs, result);
    }

    pub fn duplicate(self: *const Self) !godot.StreamPeerBuffer {
        if (mbind_duplicate == null) {
            mbind_duplicate = try api.createMethod("StreamPeerBuffer", "duplicate");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_duplicate, base, cargs, result);
        return @ptrCast(*godot.StreamPeerBuffer, @alignCast(@alignOf(&godot.StreamPeerBuffer), result)).*;
    }

    pub fn getDataArray(self: *const Self) !godot.PoolByteArray {
        if (mbind_get_data_array == null) {
            mbind_get_data_array = try api.createMethod("StreamPeerBuffer", "get_data_array");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_data_array, base, cargs, result);
        return @ptrCast(*godot.PoolByteArray, @alignCast(@alignOf(&godot.PoolByteArray), result)).*;
    }

    pub fn getPosition(self: *const Self) !i32 {
        if (mbind_get_position == null) {
            mbind_get_position = try api.createMethod("StreamPeerBuffer", "get_position");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_position, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getSize(self: *const Self) !i32 {
        if (mbind_get_size == null) {
            mbind_get_size = try api.createMethod("StreamPeerBuffer", "get_size");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_size, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn resize(self: *const Self, arg_size: i32) !void {
        if (mbind_resize == null) {
            mbind_resize = try api.createMethod("StreamPeerBuffer", "resize");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_size),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_resize, base, cargs, result);
    }

    pub fn seek(self: *const Self, arg_position: i32) !void {
        if (mbind_seek == null) {
            mbind_seek = try api.createMethod("StreamPeerBuffer", "seek");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_position),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_seek, base, cargs, result);
    }

    pub fn setDataArray(self: *const Self, arg_data: *const godot.PoolByteArray) !void {
        if (mbind_set_data_array == null) {
            mbind_set_data_array = try api.createMethod("StreamPeerBuffer", "set_data_array");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_data),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_data_array, base, cargs, result);
    }
};