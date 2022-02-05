// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Object = @import("object.zig").Object;

// method bindings
var mbind_clear_cache: ?*c_api.godot_method_bind = null;
var mbind_erase_resolve_item: ?*c_api.godot_method_bind = null;
var mbind_get_local_addresses: ?*c_api.godot_method_bind = null;
var mbind_get_local_interfaces: ?*c_api.godot_method_bind = null;
var mbind_get_resolve_item_address: ?*c_api.godot_method_bind = null;
var mbind_get_resolve_item_addresses: ?*c_api.godot_method_bind = null;
var mbind_get_resolve_item_status: ?*c_api.godot_method_bind = null;
var mbind_resolve_hostname: ?*c_api.godot_method_bind = null;
var mbind_resolve_hostname_addresses: ?*c_api.godot_method_bind = null;
var mbind_resolve_hostname_queue_item: ?*c_api.godot_method_bind = null;
var mbind_ip_constructor: ?fn () ?*c_api.godot_object = null;

pub const IP = struct {
    const Self = @This();
    const BaseClass = Object;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_ip_constructor == null) {
            mbind_ip_constructor = try api.createConstructor("IP");
        }
        return api.createObject(Self, mbind_ip_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn clearCache(self: *const Self, arg_hostname: *const godot.String) !void {
        if (mbind_clear_cache == null) {
            mbind_clear_cache = try api.createMethod("IP", "clear_cache");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_hostname),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_clear_cache, base, cargs, result);
    }

    pub fn eraseResolveItem(self: *const Self, arg_id: i32) !void {
        if (mbind_erase_resolve_item == null) {
            mbind_erase_resolve_item = try api.createMethod("IP", "erase_resolve_item");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_erase_resolve_item, base, cargs, result);
    }

    pub fn getLocalAddresses(self: *const Self) !godot.Array {
        if (mbind_get_local_addresses == null) {
            mbind_get_local_addresses = try api.createMethod("IP", "get_local_addresses");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_local_addresses, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getLocalInterfaces(self: *const Self) !godot.Array {
        if (mbind_get_local_interfaces == null) {
            mbind_get_local_interfaces = try api.createMethod("IP", "get_local_interfaces");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_local_interfaces, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getResolveItemAddress(self: *const Self, arg_id: i32) !godot.String {
        if (mbind_get_resolve_item_address == null) {
            mbind_get_resolve_item_address = try api.createMethod("IP", "get_resolve_item_address");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_resolve_item_address, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getResolveItemAddresses(self: *const Self, arg_id: i32) !godot.Array {
        if (mbind_get_resolve_item_addresses == null) {
            mbind_get_resolve_item_addresses = try api.createMethod("IP", "get_resolve_item_addresses");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_resolve_item_addresses, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getResolveItemStatus(self: *const Self, arg_id: i32) !i32 {
        if (mbind_get_resolve_item_status == null) {
            mbind_get_resolve_item_status = try api.createMethod("IP", "get_resolve_item_status");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_resolve_item_status, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn resolveHostname(self: *const Self, arg_host: *const godot.String, arg_ip_type: i32) !godot.String {
        if (mbind_resolve_hostname == null) {
            mbind_resolve_hostname = try api.createMethod("IP", "resolve_hostname");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_host),
            @ptrCast(*const anyopaque, *arg_ip_type),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_resolve_hostname, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn resolveHostnameAddresses(self: *const Self, arg_host: *const godot.String, arg_ip_type: i32) !godot.Array {
        if (mbind_resolve_hostname_addresses == null) {
            mbind_resolve_hostname_addresses = try api.createMethod("IP", "resolve_hostname_addresses");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_host),
            @ptrCast(*const anyopaque, *arg_ip_type),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_resolve_hostname_addresses, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn resolveHostnameQueueItem(self: *const Self, arg_host: *const godot.String, arg_ip_type: i32) !i32 {
        if (mbind_resolve_hostname_queue_item == null) {
            mbind_resolve_hostname_queue_item = try api.createMethod("IP", "resolve_hostname_queue_item");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_host),
            @ptrCast(*const anyopaque, *arg_ip_type),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_resolve_hostname_queue_item, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }
};