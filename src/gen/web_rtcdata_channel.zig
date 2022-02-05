// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const PacketPeer = @import("packet_peer.zig").PacketPeer;

// method bindings
var mbind_close: ?*c_api.godot_method_bind = null;
var mbind_get_buffered_amount: ?*c_api.godot_method_bind = null;
var mbind_get_id: ?*c_api.godot_method_bind = null;
var mbind_get_label: ?*c_api.godot_method_bind = null;
var mbind_get_max_packet_life_time: ?*c_api.godot_method_bind = null;
var mbind_get_max_retransmits: ?*c_api.godot_method_bind = null;
var mbind_get_protocol: ?*c_api.godot_method_bind = null;
var mbind_get_ready_state: ?*c_api.godot_method_bind = null;
var mbind_get_write_mode: ?*c_api.godot_method_bind = null;
var mbind_is_negotiated: ?*c_api.godot_method_bind = null;
var mbind_is_ordered: ?*c_api.godot_method_bind = null;
var mbind_poll: ?*c_api.godot_method_bind = null;
var mbind_set_write_mode: ?*c_api.godot_method_bind = null;
var mbind_was_string_packet: ?*c_api.godot_method_bind = null;
var mbind_web_rtcdata_channel_constructor: ?fn () ?*c_api.godot_object = null;

pub const WebRTCDataChannel = struct {
    const Self = @This();
    const BaseClass = PacketPeer;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_web_rtcdata_channel_constructor == null) {
            mbind_web_rtcdata_channel_constructor = try api.createConstructor("WebRTCDataChannel");
        }
        return api.createObject(Self, mbind_web_rtcdata_channel_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn close(self: *const Self) !void {
        if (mbind_close == null) {
            mbind_close = try api.createMethod("WebRTCDataChannel", "close");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_close, base, cargs, result);
    }

    pub fn getBufferedAmount(self: *const Self) !i32 {
        if (mbind_get_buffered_amount == null) {
            mbind_get_buffered_amount = try api.createMethod("WebRTCDataChannel", "get_buffered_amount");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_buffered_amount, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getId(self: *const Self) !i32 {
        if (mbind_get_id == null) {
            mbind_get_id = try api.createMethod("WebRTCDataChannel", "get_id");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_id, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getLabel(self: *const Self) !godot.String {
        if (mbind_get_label == null) {
            mbind_get_label = try api.createMethod("WebRTCDataChannel", "get_label");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_label, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getMaxPacketLifeTime(self: *const Self) !i32 {
        if (mbind_get_max_packet_life_time == null) {
            mbind_get_max_packet_life_time = try api.createMethod("WebRTCDataChannel", "get_max_packet_life_time");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_max_packet_life_time, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getMaxRetransmits(self: *const Self) !i32 {
        if (mbind_get_max_retransmits == null) {
            mbind_get_max_retransmits = try api.createMethod("WebRTCDataChannel", "get_max_retransmits");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_max_retransmits, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getProtocol(self: *const Self) !godot.String {
        if (mbind_get_protocol == null) {
            mbind_get_protocol = try api.createMethod("WebRTCDataChannel", "get_protocol");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_protocol, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getReadyState(self: *const Self) !i32 {
        if (mbind_get_ready_state == null) {
            mbind_get_ready_state = try api.createMethod("WebRTCDataChannel", "get_ready_state");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_ready_state, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getWriteMode(self: *const Self) !i32 {
        if (mbind_get_write_mode == null) {
            mbind_get_write_mode = try api.createMethod("WebRTCDataChannel", "get_write_mode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_write_mode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn isNegotiated(self: *const Self) !bool {
        if (mbind_is_negotiated == null) {
            mbind_is_negotiated = try api.createMethod("WebRTCDataChannel", "is_negotiated");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_negotiated, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isOrdered(self: *const Self) !bool {
        if (mbind_is_ordered == null) {
            mbind_is_ordered = try api.createMethod("WebRTCDataChannel", "is_ordered");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_ordered, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn poll(self: *const Self) !i32 {
        if (mbind_poll == null) {
            mbind_poll = try api.createMethod("WebRTCDataChannel", "poll");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_poll, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn setWriteMode(self: *const Self, arg_write_mode: i32) !void {
        if (mbind_set_write_mode == null) {
            mbind_set_write_mode = try api.createMethod("WebRTCDataChannel", "set_write_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_write_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_write_mode, base, cargs, result);
    }

    pub fn wasStringPacket(self: *const Self) !bool {
        if (mbind_was_string_packet == null) {
            mbind_was_string_packet = try api.createMethod("WebRTCDataChannel", "was_string_packet");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_was_string_packet, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }
};