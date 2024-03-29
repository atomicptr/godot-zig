// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_add_device: ?*c_api.godot_method_bind = null;
var mbind_add_port_mapping: ?*c_api.godot_method_bind = null;
var mbind_clear_devices: ?*c_api.godot_method_bind = null;
var mbind_delete_port_mapping: ?*c_api.godot_method_bind = null;
var mbind_discover: ?*c_api.godot_method_bind = null;
var mbind_get_device: ?*c_api.godot_method_bind = null;
var mbind_get_device_count: ?*c_api.godot_method_bind = null;
var mbind_get_discover_local_port: ?*c_api.godot_method_bind = null;
var mbind_get_discover_multicast_if: ?*c_api.godot_method_bind = null;
var mbind_get_gateway: ?*c_api.godot_method_bind = null;
var mbind_is_discover_ipv6: ?*c_api.godot_method_bind = null;
var mbind_query_external_address: ?*c_api.godot_method_bind = null;
var mbind_remove_device: ?*c_api.godot_method_bind = null;
var mbind_set_device: ?*c_api.godot_method_bind = null;
var mbind_set_discover_ipv6: ?*c_api.godot_method_bind = null;
var mbind_set_discover_local_port: ?*c_api.godot_method_bind = null;
var mbind_set_discover_multicast_if: ?*c_api.godot_method_bind = null;
var mbind_upnp_constructor: ?fn () ?*c_api.godot_object = null;

pub const UPNP = struct {
    const Self = @This();
    pub const BaseClass = godot.Reference;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_upnp_constructor == null) {
            mbind_upnp_constructor = try api.createConstructor("UPNP");
        }
        return api.createObject(Self, mbind_upnp_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn addDevice(self: *const Self, arg_device: *const godot.UPNPDevice) !void {
        if (mbind_add_device == null) {
            mbind_add_device = try api.createMethod("UPNP", "add_device");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_device),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_device, base, cargs, result);
    }

    pub fn addPortMapping(self: *const Self, arg_port: i32, arg_port_internal: i32, arg_desc: *const godot.String, arg_proto: *const godot.String, arg_duration: i32) !i32 {
        if (mbind_add_port_mapping == null) {
            mbind_add_port_mapping = try api.createMethod("UPNP", "add_port_mapping");
        }

        var result: ?*anyopaque = null;
        var args: [5]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_port),
            @ptrCast(*const anyopaque, *arg_port_internal),
            @ptrCast(*const anyopaque, arg_desc),
            @ptrCast(*const anyopaque, arg_proto),
            @ptrCast(*const anyopaque, *arg_duration),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_port_mapping, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn clearDevices(self: *const Self) !void {
        if (mbind_clear_devices == null) {
            mbind_clear_devices = try api.createMethod("UPNP", "clear_devices");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_clear_devices, base, cargs, result);
    }

    pub fn deletePortMapping(self: *const Self, arg_port: i32, arg_proto: *const godot.String) !i32 {
        if (mbind_delete_port_mapping == null) {
            mbind_delete_port_mapping = try api.createMethod("UPNP", "delete_port_mapping");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_port),
            @ptrCast(*const anyopaque, arg_proto),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_delete_port_mapping, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn discover(self: *const Self, arg_timeout: i32, arg_ttl: i32, arg_device_filter: *const godot.String) !i32 {
        if (mbind_discover == null) {
            mbind_discover = try api.createMethod("UPNP", "discover");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_timeout),
            @ptrCast(*const anyopaque, *arg_ttl),
            @ptrCast(*const anyopaque, arg_device_filter),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_discover, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getDevice(self: *const Self, arg_index: i32) !godot.UPNPDevice {
        if (mbind_get_device == null) {
            mbind_get_device = try api.createMethod("UPNP", "get_device");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_index),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_device, base, cargs, result);
        return @ptrCast(*godot.UPNPDevice, @alignCast(@alignOf(&godot.UPNPDevice), result)).*;
    }

    pub fn getDeviceCount(self: *const Self) !i32 {
        if (mbind_get_device_count == null) {
            mbind_get_device_count = try api.createMethod("UPNP", "get_device_count");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_device_count, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getDiscoverLocalPort(self: *const Self) !i32 {
        if (mbind_get_discover_local_port == null) {
            mbind_get_discover_local_port = try api.createMethod("UPNP", "get_discover_local_port");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_discover_local_port, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getDiscoverMulticastIf(self: *const Self) !godot.String {
        if (mbind_get_discover_multicast_if == null) {
            mbind_get_discover_multicast_if = try api.createMethod("UPNP", "get_discover_multicast_if");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_discover_multicast_if, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getGateway(self: *const Self) !godot.UPNPDevice {
        if (mbind_get_gateway == null) {
            mbind_get_gateway = try api.createMethod("UPNP", "get_gateway");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_gateway, base, cargs, result);
        return @ptrCast(*godot.UPNPDevice, @alignCast(@alignOf(&godot.UPNPDevice), result)).*;
    }

    pub fn isDiscoverIpv6(self: *const Self) !bool {
        if (mbind_is_discover_ipv6 == null) {
            mbind_is_discover_ipv6 = try api.createMethod("UPNP", "is_discover_ipv6");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_discover_ipv6, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn queryExternalAddress(self: *const Self) !godot.String {
        if (mbind_query_external_address == null) {
            mbind_query_external_address = try api.createMethod("UPNP", "query_external_address");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_query_external_address, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn removeDevice(self: *const Self, arg_index: i32) !void {
        if (mbind_remove_device == null) {
            mbind_remove_device = try api.createMethod("UPNP", "remove_device");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_index),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_remove_device, base, cargs, result);
    }

    pub fn setDevice(self: *const Self, arg_index: i32, arg_device: *const godot.UPNPDevice) !void {
        if (mbind_set_device == null) {
            mbind_set_device = try api.createMethod("UPNP", "set_device");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_index),
            @ptrCast(*const anyopaque, arg_device),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_device, base, cargs, result);
    }

    pub fn setDiscoverIpv6(self: *const Self, arg_ipv6: bool) !void {
        if (mbind_set_discover_ipv6 == null) {
            mbind_set_discover_ipv6 = try api.createMethod("UPNP", "set_discover_ipv6");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_ipv6),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_discover_ipv6, base, cargs, result);
    }

    pub fn setDiscoverLocalPort(self: *const Self, arg_port: i32) !void {
        if (mbind_set_discover_local_port == null) {
            mbind_set_discover_local_port = try api.createMethod("UPNP", "set_discover_local_port");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_port),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_discover_local_port, base, cargs, result);
    }

    pub fn setDiscoverMulticastIf(self: *const Self, arg_m_if: *const godot.String) !void {
        if (mbind_set_discover_multicast_if == null) {
            mbind_set_discover_multicast_if = try api.createMethod("UPNP", "set_discover_multicast_if");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_m_if),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_discover_multicast_if, base, cargs, result);
    }
};