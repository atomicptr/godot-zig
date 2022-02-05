// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const WebRTCPeerConnection = @import("web_rtcpeer_connection.zig").WebRTCPeerConnection;

var mbind_web_rtcpeer_connection_gdnative_constructor: ?fn () ?*c_api.godot_object = null;

pub const WebRTCPeerConnectionGDNative = struct {
    const Self = @This();
    const BaseClass = WebRTCPeerConnection;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_web_rtcpeer_connection_gdnative_constructor == null) {
            mbind_web_rtcpeer_connection_gdnative_constructor = try api.createConstructor("WebRTCPeerConnectionGDNative");
        }
        return api.createObject(Self, mbind_web_rtcpeer_connection_gdnative_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }
};