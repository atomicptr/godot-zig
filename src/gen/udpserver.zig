// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_max_pending_connections: ?*c_api.godot_method_bind = null;
var mbind_is_connection_available: ?*c_api.godot_method_bind = null;
var mbind_is_listening: ?*c_api.godot_method_bind = null;
var mbind_listen: ?*c_api.godot_method_bind = null;
var mbind_poll: ?*c_api.godot_method_bind = null;
var mbind_set_max_pending_connections: ?*c_api.godot_method_bind = null;
var mbind_stop: ?*c_api.godot_method_bind = null;
var mbind_take_connection: ?*c_api.godot_method_bind = null;
var mbind_udpserver_constructor: ?fn () ?*c_api.godot_object = null;

pub const UDPServer = struct {
    const Self = @This();
    pub const BaseClass = godot.Reference;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_udpserver_constructor == null) {
            mbind_udpserver_constructor = try api.createConstructor("UDPServer");
        }
        return api.createObject(Self, mbind_udpserver_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getMaxPendingConnections(self: *const Self) !i32 {
        if (mbind_get_max_pending_connections == null) {
            mbind_get_max_pending_connections = try api.createMethod("UDPServer", "get_max_pending_connections");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_max_pending_connections, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn isConnectionAvailable(self: *const Self) !bool {
        if (mbind_is_connection_available == null) {
            mbind_is_connection_available = try api.createMethod("UDPServer", "is_connection_available");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_connection_available, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isListening(self: *const Self) !bool {
        if (mbind_is_listening == null) {
            mbind_is_listening = try api.createMethod("UDPServer", "is_listening");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_listening, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn listen(self: *const Self, arg_port: i32, arg_bind_address: *const godot.String) !i32 {
        if (mbind_listen == null) {
            mbind_listen = try api.createMethod("UDPServer", "listen");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_port),
            @ptrCast(*const anyopaque, arg_bind_address),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_listen, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn poll(self: *const Self) !i32 {
        if (mbind_poll == null) {
            mbind_poll = try api.createMethod("UDPServer", "poll");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_poll, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn setMaxPendingConnections(self: *const Self, arg_max_pending_connections: i32) !void {
        if (mbind_set_max_pending_connections == null) {
            mbind_set_max_pending_connections = try api.createMethod("UDPServer", "set_max_pending_connections");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_max_pending_connections),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_max_pending_connections, base, cargs, result);
    }

    pub fn stop(self: *const Self) !void {
        if (mbind_stop == null) {
            mbind_stop = try api.createMethod("UDPServer", "stop");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_stop, base, cargs, result);
    }

    pub fn takeConnection(self: *const Self) !godot.PacketPeerUDP {
        if (mbind_take_connection == null) {
            mbind_take_connection = try api.createMethod("UDPServer", "take_connection");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_take_connection, base, cargs, result);
        return @ptrCast(*godot.PacketPeerUDP, @alignCast(@alignOf(&godot.PacketPeerUDP), result)).*;
    }
};