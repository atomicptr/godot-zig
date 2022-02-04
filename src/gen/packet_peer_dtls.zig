// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const PacketPeer = @import("packet_peer.zig").PacketPeer;

// method bindings
var mbind_connect_to_peer: ?*c_api.godot_method_bind = null;
var mbind_disconnect_from_peer: ?*c_api.godot_method_bind = null;
var mbind_get_status: ?*c_api.godot_method_bind = null;
var mbind_poll: ?*c_api.godot_method_bind = null;
var mbind_packet_peer_dtls_constructor: ?fn () ?*c_api.godot_object = null;

pub const PacketPeerDTLS = struct {
    const Self = @This();
    const BaseClass = PacketPeer;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_packet_peer_dtls_constructor == null) {
            mbind_packet_peer_dtls_constructor = try api.createConstructor("PacketPeerDTLS");
        }
        return api.createObject(Self, mbind_packet_peer_dtls_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn connectToPeer(self: *const Self, arg_packet_peer: *const godot.PacketPeerUDP, arg_validate_certs: bool, arg_for_hostname: *const godot.String, arg_valid_certificate: *const godot.X509Certificate) !i32 {
        if (mbind_connect_to_peer == null) {
            mbind_connect_to_peer = try api.createMethod("PacketPeerDTLS", "connect_to_peer");
        }

        var result: ?*anyopaque = null;
        var args: [4]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_packet_peer),
            @ptrCast(*const anyopaque, *arg_validate_certs),
            @ptrCast(*const anyopaque, arg_for_hostname),
            @ptrCast(*const anyopaque, arg_valid_certificate),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_connect_to_peer, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn disconnectFromPeer(self: *const Self) !void {
        if (mbind_disconnect_from_peer == null) {
            mbind_disconnect_from_peer = try api.createMethod("PacketPeerDTLS", "disconnect_from_peer");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_disconnect_from_peer, base, cargs, result);
    }

    pub fn getStatus(self: *const Self) !i32 {
        if (mbind_get_status == null) {
            mbind_get_status = try api.createMethod("PacketPeerDTLS", "get_status");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_status, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn poll(self: *const Self) !void {
        if (mbind_poll == null) {
            mbind_poll = try api.createMethod("PacketPeerDTLS", "poll");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_poll, base, cargs, result);
    }
};