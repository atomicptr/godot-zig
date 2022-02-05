// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const ARVRInterface = @import("arvrinterface.zig").ARVRInterface;

// method bindings
var mbind_get_bounds_geometry: ?*c_api.godot_method_bind = null;
var mbind_get_controller: ?*c_api.godot_method_bind = null;
var mbind_get_optional_features: ?*c_api.godot_method_bind = null;
var mbind_get_reference_space_type: ?*c_api.godot_method_bind = null;
var mbind_get_requested_reference_space_types: ?*c_api.godot_method_bind = null;
var mbind_get_required_features: ?*c_api.godot_method_bind = null;
var mbind_get_session_mode: ?*c_api.godot_method_bind = null;
var mbind_get_visibility_state: ?*c_api.godot_method_bind = null;
var mbind_is_session_supported: ?*c_api.godot_method_bind = null;
var mbind_set_optional_features: ?*c_api.godot_method_bind = null;
var mbind_set_requested_reference_space_types: ?*c_api.godot_method_bind = null;
var mbind_set_required_features: ?*c_api.godot_method_bind = null;
var mbind_set_session_mode: ?*c_api.godot_method_bind = null;
var mbind_web_xrinterface_constructor: ?fn () ?*c_api.godot_object = null;

pub const WebXRInterface = struct {
    const Self = @This();
    const BaseClass = ARVRInterface;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_web_xrinterface_constructor == null) {
            mbind_web_xrinterface_constructor = try api.createConstructor("WebXRInterface");
        }
        return api.createObject(Self, mbind_web_xrinterface_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getBoundsGeometry(self: *const Self) !godot.PoolVector3Array {
        if (mbind_get_bounds_geometry == null) {
            mbind_get_bounds_geometry = try api.createMethod("WebXRInterface", "get_bounds_geometry");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_bounds_geometry, base, cargs, result);
        return @ptrCast(*godot.PoolVector3Array, @alignCast(@alignOf(&godot.PoolVector3Array), result)).*;
    }

    pub fn getController(self: *const Self, arg_controller_id: i32) !godot.ARVRPositionalTracker {
        if (mbind_get_controller == null) {
            mbind_get_controller = try api.createMethod("WebXRInterface", "get_controller");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_controller_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_controller, base, cargs, result);
        return @ptrCast(*godot.ARVRPositionalTracker, @alignCast(@alignOf(&godot.ARVRPositionalTracker), result)).*;
    }

    pub fn getOptionalFeatures(self: *const Self) !godot.String {
        if (mbind_get_optional_features == null) {
            mbind_get_optional_features = try api.createMethod("WebXRInterface", "get_optional_features");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_optional_features, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getReferenceSpaceType(self: *const Self) !godot.String {
        if (mbind_get_reference_space_type == null) {
            mbind_get_reference_space_type = try api.createMethod("WebXRInterface", "get_reference_space_type");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_reference_space_type, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getRequestedReferenceSpaceTypes(self: *const Self) !godot.String {
        if (mbind_get_requested_reference_space_types == null) {
            mbind_get_requested_reference_space_types = try api.createMethod("WebXRInterface", "get_requested_reference_space_types");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_requested_reference_space_types, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getRequiredFeatures(self: *const Self) !godot.String {
        if (mbind_get_required_features == null) {
            mbind_get_required_features = try api.createMethod("WebXRInterface", "get_required_features");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_required_features, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getSessionMode(self: *const Self) !godot.String {
        if (mbind_get_session_mode == null) {
            mbind_get_session_mode = try api.createMethod("WebXRInterface", "get_session_mode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_session_mode, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getVisibilityState(self: *const Self) !godot.String {
        if (mbind_get_visibility_state == null) {
            mbind_get_visibility_state = try api.createMethod("WebXRInterface", "get_visibility_state");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_visibility_state, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn isSessionSupported(self: *const Self, arg_session_mode: *const godot.String) !void {
        if (mbind_is_session_supported == null) {
            mbind_is_session_supported = try api.createMethod("WebXRInterface", "is_session_supported");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_session_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_session_supported, base, cargs, result);
    }

    pub fn setOptionalFeatures(self: *const Self, arg_optional_features: *const godot.String) !void {
        if (mbind_set_optional_features == null) {
            mbind_set_optional_features = try api.createMethod("WebXRInterface", "set_optional_features");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_optional_features),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_optional_features, base, cargs, result);
    }

    pub fn setRequestedReferenceSpaceTypes(self: *const Self, arg_requested_reference_space_types: *const godot.String) !void {
        if (mbind_set_requested_reference_space_types == null) {
            mbind_set_requested_reference_space_types = try api.createMethod("WebXRInterface", "set_requested_reference_space_types");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_requested_reference_space_types),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_requested_reference_space_types, base, cargs, result);
    }

    pub fn setRequiredFeatures(self: *const Self, arg_required_features: *const godot.String) !void {
        if (mbind_set_required_features == null) {
            mbind_set_required_features = try api.createMethod("WebXRInterface", "set_required_features");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_required_features),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_required_features, base, cargs, result);
    }

    pub fn setSessionMode(self: *const Self, arg_session_mode: *const godot.String) !void {
        if (mbind_set_session_mode == null) {
            mbind_set_session_mode = try api.createMethod("WebXRInterface", "set_session_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_session_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_session_mode, base, cargs, result);
    }
};