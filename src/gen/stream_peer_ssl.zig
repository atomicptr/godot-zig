// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const StreamPeer = @import("stream_peer.zig").StreamPeer;

// method bindings
var mbind_accept_stream: ?*c_api.godot_method_bind = null;
var mbind_connect_to_stream: ?*c_api.godot_method_bind = null;
var mbind_disconnect_from_stream: ?*c_api.godot_method_bind = null;
var mbind_get_status: ?*c_api.godot_method_bind = null;
var mbind_is_blocking_handshake_enabled: ?*c_api.godot_method_bind = null;
var mbind_poll: ?*c_api.godot_method_bind = null;
var mbind_set_blocking_handshake_enabled: ?*c_api.godot_method_bind = null;
var mbind_stream_peer_ssl_constructor: ?fn () ?*c_api.godot_object = null;

pub const StreamPeerSSL = struct {
    const Self = @This();
    const BaseClass = StreamPeer;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_stream_peer_ssl_constructor == null) {
            mbind_stream_peer_ssl_constructor = try api.createConstructor("StreamPeerSSL");
        }
        return api.createObject(Self, mbind_stream_peer_ssl_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn acceptStream(self: *const Self, arg_stream: *const godot.StreamPeer, arg_private_key: *const godot.CryptoKey, arg_certificate: *const godot.X509Certificate, arg_chain: *const godot.X509Certificate) !i32 {
        if (mbind_accept_stream == null) {
            mbind_accept_stream = try api.createMethod("StreamPeerSSL", "accept_stream");
        }

        var result: ?*anyopaque = null;
        var args: [4]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_stream),
            @ptrCast(*const anyopaque, arg_private_key),
            @ptrCast(*const anyopaque, arg_certificate),
            @ptrCast(*const anyopaque, arg_chain),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_accept_stream, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn connectToStream(self: *const Self, arg_stream: *const godot.StreamPeer, arg_validate_certs: bool, arg_for_hostname: *const godot.String, arg_valid_certificate: *const godot.X509Certificate) !i32 {
        if (mbind_connect_to_stream == null) {
            mbind_connect_to_stream = try api.createMethod("StreamPeerSSL", "connect_to_stream");
        }

        var result: ?*anyopaque = null;
        var args: [4]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_stream),
            @ptrCast(*const anyopaque, *arg_validate_certs),
            @ptrCast(*const anyopaque, arg_for_hostname),
            @ptrCast(*const anyopaque, arg_valid_certificate),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_connect_to_stream, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn disconnectFromStream(self: *const Self) !void {
        if (mbind_disconnect_from_stream == null) {
            mbind_disconnect_from_stream = try api.createMethod("StreamPeerSSL", "disconnect_from_stream");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_disconnect_from_stream, base, cargs, result);
    }

    pub fn getStatus(self: *const Self) !i32 {
        if (mbind_get_status == null) {
            mbind_get_status = try api.createMethod("StreamPeerSSL", "get_status");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_status, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn isBlockingHandshakeEnabled(self: *const Self) !bool {
        if (mbind_is_blocking_handshake_enabled == null) {
            mbind_is_blocking_handshake_enabled = try api.createMethod("StreamPeerSSL", "is_blocking_handshake_enabled");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_blocking_handshake_enabled, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn poll(self: *const Self) !void {
        if (mbind_poll == null) {
            mbind_poll = try api.createMethod("StreamPeerSSL", "poll");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_poll, base, cargs, result);
    }

    pub fn setBlockingHandshakeEnabled(self: *const Self, arg_enabled: bool) !void {
        if (mbind_set_blocking_handshake_enabled == null) {
            mbind_set_blocking_handshake_enabled = try api.createMethod("StreamPeerSSL", "set_blocking_handshake_enabled");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enabled),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_blocking_handshake_enabled, base, cargs, result);
    }
};