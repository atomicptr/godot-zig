// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Reference = @import("reference.zig").Reference;

// method bindings
var mbind_add_port_mapping: ?*c_api.godot_method_bind = null;
var mbind_delete_port_mapping: ?*c_api.godot_method_bind = null;
var mbind_get_description_url: ?*c_api.godot_method_bind = null;
var mbind_get_igd_control_url: ?*c_api.godot_method_bind = null;
var mbind_get_igd_our_addr: ?*c_api.godot_method_bind = null;
var mbind_get_igd_service_type: ?*c_api.godot_method_bind = null;
var mbind_get_igd_status: ?*c_api.godot_method_bind = null;
var mbind_get_service_type: ?*c_api.godot_method_bind = null;
var mbind_is_valid_gateway: ?*c_api.godot_method_bind = null;
var mbind_query_external_address: ?*c_api.godot_method_bind = null;
var mbind_set_description_url: ?*c_api.godot_method_bind = null;
var mbind_set_igd_control_url: ?*c_api.godot_method_bind = null;
var mbind_set_igd_our_addr: ?*c_api.godot_method_bind = null;
var mbind_set_igd_service_type: ?*c_api.godot_method_bind = null;
var mbind_set_igd_status: ?*c_api.godot_method_bind = null;
var mbind_set_service_type: ?*c_api.godot_method_bind = null;
var mbind_upnpdevice_constructor: ?fn () ?*c_api.godot_object = null;

pub const UPNPDevice = struct {
    const Self = @This();
    const BaseClass = Reference;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_upnpdevice_constructor == null) {
            mbind_upnpdevice_constructor = try api.createConstructor("UPNPDevice");
        }
        return api.createObject(Self, mbind_upnpdevice_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn addPortMapping(self: *const Self, arg_port: i32, arg_port_internal: i32, arg_desc: *const godot.String, arg_proto: *const godot.String, arg_duration: i32) !i32 {
        if (mbind_add_port_mapping == null) {
            mbind_add_port_mapping = try api.createMethod("UPNPDevice", "add_port_mapping");
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

    pub fn deletePortMapping(self: *const Self, arg_port: i32, arg_proto: *const godot.String) !i32 {
        if (mbind_delete_port_mapping == null) {
            mbind_delete_port_mapping = try api.createMethod("UPNPDevice", "delete_port_mapping");
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

    pub fn getDescriptionUrl(self: *const Self) !godot.String {
        if (mbind_get_description_url == null) {
            mbind_get_description_url = try api.createMethod("UPNPDevice", "get_description_url");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_description_url, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getIgdControlUrl(self: *const Self) !godot.String {
        if (mbind_get_igd_control_url == null) {
            mbind_get_igd_control_url = try api.createMethod("UPNPDevice", "get_igd_control_url");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_igd_control_url, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getIgdOurAddr(self: *const Self) !godot.String {
        if (mbind_get_igd_our_addr == null) {
            mbind_get_igd_our_addr = try api.createMethod("UPNPDevice", "get_igd_our_addr");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_igd_our_addr, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getIgdServiceType(self: *const Self) !godot.String {
        if (mbind_get_igd_service_type == null) {
            mbind_get_igd_service_type = try api.createMethod("UPNPDevice", "get_igd_service_type");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_igd_service_type, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getIgdStatus(self: *const Self) !i32 {
        if (mbind_get_igd_status == null) {
            mbind_get_igd_status = try api.createMethod("UPNPDevice", "get_igd_status");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_igd_status, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getServiceType(self: *const Self) !godot.String {
        if (mbind_get_service_type == null) {
            mbind_get_service_type = try api.createMethod("UPNPDevice", "get_service_type");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_service_type, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn isValidGateway(self: *const Self) !bool {
        if (mbind_is_valid_gateway == null) {
            mbind_is_valid_gateway = try api.createMethod("UPNPDevice", "is_valid_gateway");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_valid_gateway, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn queryExternalAddress(self: *const Self) !godot.String {
        if (mbind_query_external_address == null) {
            mbind_query_external_address = try api.createMethod("UPNPDevice", "query_external_address");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_query_external_address, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn setDescriptionUrl(self: *const Self, arg_url: *const godot.String) !void {
        if (mbind_set_description_url == null) {
            mbind_set_description_url = try api.createMethod("UPNPDevice", "set_description_url");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_url),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_description_url, base, cargs, result);
    }

    pub fn setIgdControlUrl(self: *const Self, arg_url: *const godot.String) !void {
        if (mbind_set_igd_control_url == null) {
            mbind_set_igd_control_url = try api.createMethod("UPNPDevice", "set_igd_control_url");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_url),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_igd_control_url, base, cargs, result);
    }

    pub fn setIgdOurAddr(self: *const Self, arg_addr: *const godot.String) !void {
        if (mbind_set_igd_our_addr == null) {
            mbind_set_igd_our_addr = try api.createMethod("UPNPDevice", "set_igd_our_addr");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_addr),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_igd_our_addr, base, cargs, result);
    }

    pub fn setIgdServiceType(self: *const Self, arg_type: *const godot.String) !void {
        if (mbind_set_igd_service_type == null) {
            mbind_set_igd_service_type = try api.createMethod("UPNPDevice", "set_igd_service_type");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_type),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_igd_service_type, base, cargs, result);
    }

    pub fn setIgdStatus(self: *const Self, arg_status: i32) !void {
        if (mbind_set_igd_status == null) {
            mbind_set_igd_status = try api.createMethod("UPNPDevice", "set_igd_status");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_status),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_igd_status, base, cargs, result);
    }

    pub fn setServiceType(self: *const Self, arg_type: *const godot.String) !void {
        if (mbind_set_service_type == null) {
            mbind_set_service_type = try api.createMethod("UPNPDevice", "set_service_type");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_type),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_service_type, base, cargs, result);
    }
};