// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_add_peer: ?*c_api.godot_method_bind = null;
var mbind_close: ?*c_api.godot_method_bind = null;
var mbind_get_peer: ?*c_api.godot_method_bind = null;
var mbind_get_peers: ?*c_api.godot_method_bind = null;
var mbind_has_peer: ?*c_api.godot_method_bind = null;
var mbind_initialize: ?*c_api.godot_method_bind = null;
var mbind_remove_peer: ?*c_api.godot_method_bind = null;
var mbind_web_rtcmultiplayer_constructor: ?fn () ?*c_api.godot_object = null;

pub const WebRTCMultiplayer = struct {
    const Self = @This();
    pub const BaseClass = godot.NetworkedMultiplayerPeer;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_web_rtcmultiplayer_constructor == null) {
            mbind_web_rtcmultiplayer_constructor = try api.createConstructor("WebRTCMultiplayer");
        }
        return api.createObject(Self, mbind_web_rtcmultiplayer_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn addPeer(self: *const Self, arg_peer: *const godot.WebRTCPeerConnection, arg_peer_id: i32, arg_unreliable_lifetime: i32) !i32 {
        if (mbind_add_peer == null) {
            mbind_add_peer = try api.createMethod("WebRTCMultiplayer", "add_peer");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_peer),
            @ptrCast(*const anyopaque, *arg_peer_id),
            @ptrCast(*const anyopaque, *arg_unreliable_lifetime),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_peer, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn close(self: *const Self) !void {
        if (mbind_close == null) {
            mbind_close = try api.createMethod("WebRTCMultiplayer", "close");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_close, base, cargs, result);
    }

    pub fn getPeer(self: *const Self, arg_peer_id: i32) !godot.Dictionary {
        if (mbind_get_peer == null) {
            mbind_get_peer = try api.createMethod("WebRTCMultiplayer", "get_peer");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_peer_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_peer, base, cargs, result);
        return @ptrCast(*godot.Dictionary, @alignCast(@alignOf(&godot.Dictionary), result)).*;
    }

    pub fn getPeers(self: *const Self) !godot.Dictionary {
        if (mbind_get_peers == null) {
            mbind_get_peers = try api.createMethod("WebRTCMultiplayer", "get_peers");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_peers, base, cargs, result);
        return @ptrCast(*godot.Dictionary, @alignCast(@alignOf(&godot.Dictionary), result)).*;
    }

    pub fn hasPeer(self: *const Self, arg_peer_id: i32) !bool {
        if (mbind_has_peer == null) {
            mbind_has_peer = try api.createMethod("WebRTCMultiplayer", "has_peer");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_peer_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_has_peer, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn initialize(self: *const Self, arg_peer_id: i32, arg_server_compatibility: bool) !i32 {
        if (mbind_initialize == null) {
            mbind_initialize = try api.createMethod("WebRTCMultiplayer", "initialize");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_peer_id),
            @ptrCast(*const anyopaque, *arg_server_compatibility),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_initialize, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn removePeer(self: *const Self, arg_peer_id: i32) !void {
        if (mbind_remove_peer == null) {
            mbind_remove_peer = try api.createMethod("WebRTCMultiplayer", "remove_peer");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_peer_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_remove_peer, base, cargs, result);
    }
};