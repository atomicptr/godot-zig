// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const StreamPeer = @import("stream_peer.zig").StreamPeer;

var mbind_stream_peer_gdnative_constructor: ?fn () ?*c_api.godot_object = null;

pub const StreamPeerGDNative = struct {
    const Self = @This();
    const BaseClass = StreamPeer;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_stream_peer_gdnative_constructor == null) {
            mbind_stream_peer_gdnative_constructor = try api.createConstructor("StreamPeerGDNative");
        }
        return api.createObject(Self, mbind_stream_peer_gdnative_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }
};