// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const WebSocketMultiplayerPeer = @import("web_socket_multiplayer_peer.zig").WebSocketMultiplayerPeer;

// method bindings
var mbind_connect_to_url: ?*c_api.godot_method_bind = null;
var mbind_disconnect_from_host: ?*c_api.godot_method_bind = null;
var mbind_get_connected_host: ?*c_api.godot_method_bind = null;
var mbind_get_connected_port: ?*c_api.godot_method_bind = null;
var mbind_get_trusted_ssl_certificate: ?*c_api.godot_method_bind = null;
var mbind_is_verify_ssl_enabled: ?*c_api.godot_method_bind = null;
var mbind_set_trusted_ssl_certificate: ?*c_api.godot_method_bind = null;
var mbind_set_verify_ssl_enabled: ?*c_api.godot_method_bind = null;
var mbind_web_socket_client_constructor: ?fn () ?*c_api.godot_object = null;

pub const WebSocketClient = struct {
    const Self = @This();
    const BaseClass = WebSocketMultiplayerPeer;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_web_socket_client_constructor == null) {
            mbind_web_socket_client_constructor = try api.createConstructor("WebSocketClient");
        }
        return api.createObject(Self, mbind_web_socket_client_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn connectToUrl(self: *const Self, arg_url: *const godot.String, arg_protocols: *const godot.PoolStringArray, arg_gd_mp_api: bool, arg_custom_headers: *const godot.PoolStringArray) !i32 {
        if (mbind_connect_to_url == null) {
            mbind_connect_to_url = try api.createMethod("WebSocketClient", "connect_to_url");
        }

        var result: ?*anyopaque = null;
        var args: [4]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_url),
            @ptrCast(*const anyopaque, arg_protocols),
            @ptrCast(*const anyopaque, *arg_gd_mp_api),
            @ptrCast(*const anyopaque, arg_custom_headers),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_connect_to_url, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn disconnectFromHost(self: *const Self, arg_code: i32, arg_reason: *const godot.String) !void {
        if (mbind_disconnect_from_host == null) {
            mbind_disconnect_from_host = try api.createMethod("WebSocketClient", "disconnect_from_host");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_code),
            @ptrCast(*const anyopaque, arg_reason),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_disconnect_from_host, base, cargs, result);
    }

    pub fn getConnectedHost(self: *const Self) !godot.String {
        if (mbind_get_connected_host == null) {
            mbind_get_connected_host = try api.createMethod("WebSocketClient", "get_connected_host");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_connected_host, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getConnectedPort(self: *const Self) !i32 {
        if (mbind_get_connected_port == null) {
            mbind_get_connected_port = try api.createMethod("WebSocketClient", "get_connected_port");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_connected_port, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getTrustedSslCertificate(self: *const Self) !godot.X509Certificate {
        if (mbind_get_trusted_ssl_certificate == null) {
            mbind_get_trusted_ssl_certificate = try api.createMethod("WebSocketClient", "get_trusted_ssl_certificate");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_trusted_ssl_certificate, base, cargs, result);
        return @ptrCast(*godot.X509Certificate, @alignCast(@alignOf(&godot.X509Certificate), result)).*;
    }

    pub fn isVerifySslEnabled(self: *const Self) !bool {
        if (mbind_is_verify_ssl_enabled == null) {
            mbind_is_verify_ssl_enabled = try api.createMethod("WebSocketClient", "is_verify_ssl_enabled");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_verify_ssl_enabled, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setTrustedSslCertificate(self: *const Self, arg_arg0: *const godot.X509Certificate) !void {
        if (mbind_set_trusted_ssl_certificate == null) {
            mbind_set_trusted_ssl_certificate = try api.createMethod("WebSocketClient", "set_trusted_ssl_certificate");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_arg0),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_trusted_ssl_certificate, base, cargs, result);
    }

    pub fn setVerifySslEnabled(self: *const Self, arg_enabled: bool) !void {
        if (mbind_set_verify_ssl_enabled == null) {
            mbind_set_verify_ssl_enabled = try api.createMethod("WebSocketClient", "set_verify_ssl_enabled");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enabled),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_verify_ssl_enabled, base, cargs, result);
    }
};