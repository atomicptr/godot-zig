// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const NetworkedMultiplayerPeer = @import("networked_multiplayer_peer.zig").NetworkedMultiplayerPeer;

// method bindings
var mbind_close_connection: ?*c_api.godot_method_bind = null;
var mbind_create_client: ?*c_api.godot_method_bind = null;
var mbind_create_server: ?*c_api.godot_method_bind = null;
var mbind_disconnect_peer: ?*c_api.godot_method_bind = null;
var mbind_get_channel_count: ?*c_api.godot_method_bind = null;
var mbind_get_compression_mode: ?*c_api.godot_method_bind = null;
var mbind_get_dtls_hostname: ?*c_api.godot_method_bind = null;
var mbind_get_last_packet_channel: ?*c_api.godot_method_bind = null;
var mbind_get_packet_channel: ?*c_api.godot_method_bind = null;
var mbind_get_peer_address: ?*c_api.godot_method_bind = null;
var mbind_get_peer_port: ?*c_api.godot_method_bind = null;
var mbind_get_transfer_channel: ?*c_api.godot_method_bind = null;
var mbind_is_always_ordered: ?*c_api.godot_method_bind = null;
var mbind_is_dtls_enabled: ?*c_api.godot_method_bind = null;
var mbind_is_dtls_verify_enabled: ?*c_api.godot_method_bind = null;
var mbind_is_server_relay_enabled: ?*c_api.godot_method_bind = null;
var mbind_set_always_ordered: ?*c_api.godot_method_bind = null;
var mbind_set_bind_ip: ?*c_api.godot_method_bind = null;
var mbind_set_channel_count: ?*c_api.godot_method_bind = null;
var mbind_set_compression_mode: ?*c_api.godot_method_bind = null;
var mbind_set_dtls_certificate: ?*c_api.godot_method_bind = null;
var mbind_set_dtls_enabled: ?*c_api.godot_method_bind = null;
var mbind_set_dtls_hostname: ?*c_api.godot_method_bind = null;
var mbind_set_dtls_key: ?*c_api.godot_method_bind = null;
var mbind_set_dtls_verify_enabled: ?*c_api.godot_method_bind = null;
var mbind_set_peer_timeout: ?*c_api.godot_method_bind = null;
var mbind_set_server_relay_enabled: ?*c_api.godot_method_bind = null;
var mbind_set_transfer_channel: ?*c_api.godot_method_bind = null;
var mbind_networked_multiplayer_enet_constructor: ?fn () ?*c_api.godot_object = null;

pub const NetworkedMultiplayerENet = struct {
    const Self = @This();
    const BaseClass = NetworkedMultiplayerPeer;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_networked_multiplayer_enet_constructor == null) {
            mbind_networked_multiplayer_enet_constructor = try api.createConstructor("NetworkedMultiplayerENet");
        }
        return api.createObject(Self, mbind_networked_multiplayer_enet_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn closeConnection(self: *const Self, arg_wait_usec: i32) !void {
        if (mbind_close_connection == null) {
            mbind_close_connection = try api.createMethod("NetworkedMultiplayerENet", "close_connection");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_wait_usec),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_close_connection, base, cargs, result);
    }

    pub fn createClient(self: *const Self, arg_address: *const godot.String, arg_port: i32, arg_in_bandwidth: i32, arg_out_bandwidth: i32, arg_client_port: i32) !i32 {
        if (mbind_create_client == null) {
            mbind_create_client = try api.createMethod("NetworkedMultiplayerENet", "create_client");
        }

        var result: ?*anyopaque = null;
        var args: [5]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_address),
            @ptrCast(*const anyopaque, *arg_port),
            @ptrCast(*const anyopaque, *arg_in_bandwidth),
            @ptrCast(*const anyopaque, *arg_out_bandwidth),
            @ptrCast(*const anyopaque, *arg_client_port),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_create_client, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn createServer(self: *const Self, arg_port: i32, arg_max_clients: i32, arg_in_bandwidth: i32, arg_out_bandwidth: i32) !i32 {
        if (mbind_create_server == null) {
            mbind_create_server = try api.createMethod("NetworkedMultiplayerENet", "create_server");
        }

        var result: ?*anyopaque = null;
        var args: [4]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_port),
            @ptrCast(*const anyopaque, *arg_max_clients),
            @ptrCast(*const anyopaque, *arg_in_bandwidth),
            @ptrCast(*const anyopaque, *arg_out_bandwidth),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_create_server, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn disconnectPeer(self: *const Self, arg_id: i32, arg_now: bool) !void {
        if (mbind_disconnect_peer == null) {
            mbind_disconnect_peer = try api.createMethod("NetworkedMultiplayerENet", "disconnect_peer");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_id),
            @ptrCast(*const anyopaque, *arg_now),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_disconnect_peer, base, cargs, result);
    }

    pub fn getChannelCount(self: *const Self) !i32 {
        if (mbind_get_channel_count == null) {
            mbind_get_channel_count = try api.createMethod("NetworkedMultiplayerENet", "get_channel_count");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_channel_count, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getCompressionMode(self: *const Self) !i32 {
        if (mbind_get_compression_mode == null) {
            mbind_get_compression_mode = try api.createMethod("NetworkedMultiplayerENet", "get_compression_mode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_compression_mode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getDtlsHostname(self: *const Self) !godot.String {
        if (mbind_get_dtls_hostname == null) {
            mbind_get_dtls_hostname = try api.createMethod("NetworkedMultiplayerENet", "get_dtls_hostname");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_dtls_hostname, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getLastPacketChannel(self: *const Self) !i32 {
        if (mbind_get_last_packet_channel == null) {
            mbind_get_last_packet_channel = try api.createMethod("NetworkedMultiplayerENet", "get_last_packet_channel");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_last_packet_channel, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getPacketChannel(self: *const Self) !i32 {
        if (mbind_get_packet_channel == null) {
            mbind_get_packet_channel = try api.createMethod("NetworkedMultiplayerENet", "get_packet_channel");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_packet_channel, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getPeerAddress(self: *const Self, arg_id: i32) !godot.String {
        if (mbind_get_peer_address == null) {
            mbind_get_peer_address = try api.createMethod("NetworkedMultiplayerENet", "get_peer_address");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_peer_address, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getPeerPort(self: *const Self, arg_id: i32) !i32 {
        if (mbind_get_peer_port == null) {
            mbind_get_peer_port = try api.createMethod("NetworkedMultiplayerENet", "get_peer_port");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_peer_port, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getTransferChannel(self: *const Self) !i32 {
        if (mbind_get_transfer_channel == null) {
            mbind_get_transfer_channel = try api.createMethod("NetworkedMultiplayerENet", "get_transfer_channel");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_transfer_channel, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn isAlwaysOrdered(self: *const Self) !bool {
        if (mbind_is_always_ordered == null) {
            mbind_is_always_ordered = try api.createMethod("NetworkedMultiplayerENet", "is_always_ordered");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_always_ordered, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isDtlsEnabled(self: *const Self) !bool {
        if (mbind_is_dtls_enabled == null) {
            mbind_is_dtls_enabled = try api.createMethod("NetworkedMultiplayerENet", "is_dtls_enabled");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_dtls_enabled, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isDtlsVerifyEnabled(self: *const Self) !bool {
        if (mbind_is_dtls_verify_enabled == null) {
            mbind_is_dtls_verify_enabled = try api.createMethod("NetworkedMultiplayerENet", "is_dtls_verify_enabled");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_dtls_verify_enabled, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isServerRelayEnabled(self: *const Self) !bool {
        if (mbind_is_server_relay_enabled == null) {
            mbind_is_server_relay_enabled = try api.createMethod("NetworkedMultiplayerENet", "is_server_relay_enabled");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_server_relay_enabled, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setAlwaysOrdered(self: *const Self, arg_ordered: bool) !void {
        if (mbind_set_always_ordered == null) {
            mbind_set_always_ordered = try api.createMethod("NetworkedMultiplayerENet", "set_always_ordered");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_ordered),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_always_ordered, base, cargs, result);
    }

    pub fn setBindIp(self: *const Self, arg_ip: *const godot.String) !void {
        if (mbind_set_bind_ip == null) {
            mbind_set_bind_ip = try api.createMethod("NetworkedMultiplayerENet", "set_bind_ip");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_ip),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_bind_ip, base, cargs, result);
    }

    pub fn setChannelCount(self: *const Self, arg_channels: i32) !void {
        if (mbind_set_channel_count == null) {
            mbind_set_channel_count = try api.createMethod("NetworkedMultiplayerENet", "set_channel_count");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_channels),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_channel_count, base, cargs, result);
    }

    pub fn setCompressionMode(self: *const Self, arg_mode: i32) !void {
        if (mbind_set_compression_mode == null) {
            mbind_set_compression_mode = try api.createMethod("NetworkedMultiplayerENet", "set_compression_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_compression_mode, base, cargs, result);
    }

    pub fn setDtlsCertificate(self: *const Self, arg_certificate: *const godot.X509Certificate) !void {
        if (mbind_set_dtls_certificate == null) {
            mbind_set_dtls_certificate = try api.createMethod("NetworkedMultiplayerENet", "set_dtls_certificate");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_certificate),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_dtls_certificate, base, cargs, result);
    }

    pub fn setDtlsEnabled(self: *const Self, arg_enabled: bool) !void {
        if (mbind_set_dtls_enabled == null) {
            mbind_set_dtls_enabled = try api.createMethod("NetworkedMultiplayerENet", "set_dtls_enabled");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enabled),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_dtls_enabled, base, cargs, result);
    }

    pub fn setDtlsHostname(self: *const Self, arg_hostname: *const godot.String) !void {
        if (mbind_set_dtls_hostname == null) {
            mbind_set_dtls_hostname = try api.createMethod("NetworkedMultiplayerENet", "set_dtls_hostname");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_hostname),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_dtls_hostname, base, cargs, result);
    }

    pub fn setDtlsKey(self: *const Self, arg_key: *const godot.CryptoKey) !void {
        if (mbind_set_dtls_key == null) {
            mbind_set_dtls_key = try api.createMethod("NetworkedMultiplayerENet", "set_dtls_key");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_key),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_dtls_key, base, cargs, result);
    }

    pub fn setDtlsVerifyEnabled(self: *const Self, arg_enabled: bool) !void {
        if (mbind_set_dtls_verify_enabled == null) {
            mbind_set_dtls_verify_enabled = try api.createMethod("NetworkedMultiplayerENet", "set_dtls_verify_enabled");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enabled),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_dtls_verify_enabled, base, cargs, result);
    }

    pub fn setPeerTimeout(self: *const Self, arg_id: i32, arg_timeout_limit: i32, arg_timeout_min: i32, arg_timeout_max: i32) !void {
        if (mbind_set_peer_timeout == null) {
            mbind_set_peer_timeout = try api.createMethod("NetworkedMultiplayerENet", "set_peer_timeout");
        }

        var result: ?*anyopaque = null;
        var args: [4]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_id),
            @ptrCast(*const anyopaque, *arg_timeout_limit),
            @ptrCast(*const anyopaque, *arg_timeout_min),
            @ptrCast(*const anyopaque, *arg_timeout_max),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_peer_timeout, base, cargs, result);
    }

    pub fn setServerRelayEnabled(self: *const Self, arg_enabled: bool) !void {
        if (mbind_set_server_relay_enabled == null) {
            mbind_set_server_relay_enabled = try api.createMethod("NetworkedMultiplayerENet", "set_server_relay_enabled");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enabled),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_server_relay_enabled, base, cargs, result);
    }

    pub fn setTransferChannel(self: *const Self, arg_channel: i32) !void {
        if (mbind_set_transfer_channel == null) {
            mbind_set_transfer_channel = try api.createMethod("NetworkedMultiplayerENet", "set_transfer_channel");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_channel),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_transfer_channel, base, cargs, result);
    }
};