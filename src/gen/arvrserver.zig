// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Object = @import("object.zig").Object;

// method bindings
var mbind_add_interface: ?*c_api.godot_method_bind = null;
var mbind_add_tracker: ?*c_api.godot_method_bind = null;
var mbind_center_on_hmd: ?*c_api.godot_method_bind = null;
var mbind_clear_primary_interface_if: ?*c_api.godot_method_bind = null;
var mbind_find_interface: ?*c_api.godot_method_bind = null;
var mbind_get_hmd_transform: ?*c_api.godot_method_bind = null;
var mbind_get_interface: ?*c_api.godot_method_bind = null;
var mbind_get_interface_count: ?*c_api.godot_method_bind = null;
var mbind_get_interfaces: ?*c_api.godot_method_bind = null;
var mbind_get_last_commit_usec: ?*c_api.godot_method_bind = null;
var mbind_get_last_frame_usec: ?*c_api.godot_method_bind = null;
var mbind_get_last_process_usec: ?*c_api.godot_method_bind = null;
var mbind_get_primary_interface: ?*c_api.godot_method_bind = null;
var mbind_get_reference_frame: ?*c_api.godot_method_bind = null;
var mbind_get_tracker: ?*c_api.godot_method_bind = null;
var mbind_get_tracker_count: ?*c_api.godot_method_bind = null;
var mbind_get_world_scale: ?*c_api.godot_method_bind = null;
var mbind_remove_interface: ?*c_api.godot_method_bind = null;
var mbind_remove_tracker: ?*c_api.godot_method_bind = null;
var mbind_set_primary_interface: ?*c_api.godot_method_bind = null;
var mbind_set_world_scale: ?*c_api.godot_method_bind = null;
var mbind_arvrserver_constructor: ?fn () ?*c_api.godot_object = null;

pub const ARVRServer = struct {
    const Self = @This();
    const BaseClass = Object;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_arvrserver_constructor == null) {
            mbind_arvrserver_constructor = try api.createConstructor("ARVRServer");
        }
        return api.createObject(Self, mbind_arvrserver_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn addInterface(self: *const Self, arg_interface: *const godot.ARVRInterface) !void {
        if (mbind_add_interface == null) {
            mbind_add_interface = try api.createMethod("ARVRServer", "add_interface");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_interface),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_interface, base, cargs, result);
    }

    pub fn addTracker(self: *const Self, arg_tracker: *const godot.ARVRPositionalTracker) !void {
        if (mbind_add_tracker == null) {
            mbind_add_tracker = try api.createMethod("ARVRServer", "add_tracker");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_tracker),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_tracker, base, cargs, result);
    }

    pub fn centerOnHmd(self: *const Self, arg_rotation_mode: i32, arg_keep_height: bool) !void {
        if (mbind_center_on_hmd == null) {
            mbind_center_on_hmd = try api.createMethod("ARVRServer", "center_on_hmd");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_rotation_mode),
            @ptrCast(*const anyopaque, *arg_keep_height),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_center_on_hmd, base, cargs, result);
    }

    pub fn clearPrimaryInterfaceIf(self: *const Self, arg_interface: *const godot.ARVRInterface) !void {
        if (mbind_clear_primary_interface_if == null) {
            mbind_clear_primary_interface_if = try api.createMethod("ARVRServer", "clear_primary_interface_if");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_interface),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_clear_primary_interface_if, base, cargs, result);
    }

    pub fn findInterface(self: *const Self, arg_name: *const godot.String) !godot.ARVRInterface {
        if (mbind_find_interface == null) {
            mbind_find_interface = try api.createMethod("ARVRServer", "find_interface");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_find_interface, base, cargs, result);
        return @ptrCast(*godot.ARVRInterface, @alignCast(@alignOf(&godot.ARVRInterface), result)).*;
    }

    pub fn getHmdTransform(self: *const Self) !godot.Transform {
        if (mbind_get_hmd_transform == null) {
            mbind_get_hmd_transform = try api.createMethod("ARVRServer", "get_hmd_transform");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_hmd_transform, base, cargs, result);
        return @ptrCast(*godot.Transform, @alignCast(@alignOf(&godot.Transform), result)).*;
    }

    pub fn getInterface(self: *const Self, arg_idx: i32) !godot.ARVRInterface {
        if (mbind_get_interface == null) {
            mbind_get_interface = try api.createMethod("ARVRServer", "get_interface");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_interface, base, cargs, result);
        return @ptrCast(*godot.ARVRInterface, @alignCast(@alignOf(&godot.ARVRInterface), result)).*;
    }

    pub fn getInterfaceCount(self: *const Self) !i32 {
        if (mbind_get_interface_count == null) {
            mbind_get_interface_count = try api.createMethod("ARVRServer", "get_interface_count");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_interface_count, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getInterfaces(self: *const Self) !godot.Array {
        if (mbind_get_interfaces == null) {
            mbind_get_interfaces = try api.createMethod("ARVRServer", "get_interfaces");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_interfaces, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getLastCommitUsec(self: *const Self) !i32 {
        if (mbind_get_last_commit_usec == null) {
            mbind_get_last_commit_usec = try api.createMethod("ARVRServer", "get_last_commit_usec");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_last_commit_usec, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getLastFrameUsec(self: *const Self) !i32 {
        if (mbind_get_last_frame_usec == null) {
            mbind_get_last_frame_usec = try api.createMethod("ARVRServer", "get_last_frame_usec");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_last_frame_usec, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getLastProcessUsec(self: *const Self) !i32 {
        if (mbind_get_last_process_usec == null) {
            mbind_get_last_process_usec = try api.createMethod("ARVRServer", "get_last_process_usec");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_last_process_usec, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getPrimaryInterface(self: *const Self) !godot.ARVRInterface {
        if (mbind_get_primary_interface == null) {
            mbind_get_primary_interface = try api.createMethod("ARVRServer", "get_primary_interface");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_primary_interface, base, cargs, result);
        return @ptrCast(*godot.ARVRInterface, @alignCast(@alignOf(&godot.ARVRInterface), result)).*;
    }

    pub fn getReferenceFrame(self: *const Self) !godot.Transform {
        if (mbind_get_reference_frame == null) {
            mbind_get_reference_frame = try api.createMethod("ARVRServer", "get_reference_frame");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_reference_frame, base, cargs, result);
        return @ptrCast(*godot.Transform, @alignCast(@alignOf(&godot.Transform), result)).*;
    }

    pub fn getTracker(self: *const Self, arg_idx: i32) !godot.ARVRPositionalTracker {
        if (mbind_get_tracker == null) {
            mbind_get_tracker = try api.createMethod("ARVRServer", "get_tracker");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_tracker, base, cargs, result);
        return @ptrCast(*godot.ARVRPositionalTracker, @alignCast(@alignOf(&godot.ARVRPositionalTracker), result)).*;
    }

    pub fn getTrackerCount(self: *const Self) !i32 {
        if (mbind_get_tracker_count == null) {
            mbind_get_tracker_count = try api.createMethod("ARVRServer", "get_tracker_count");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_tracker_count, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getWorldScale(self: *const Self) !f32 {
        if (mbind_get_world_scale == null) {
            mbind_get_world_scale = try api.createMethod("ARVRServer", "get_world_scale");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_world_scale, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn removeInterface(self: *const Self, arg_interface: *const godot.ARVRInterface) !void {
        if (mbind_remove_interface == null) {
            mbind_remove_interface = try api.createMethod("ARVRServer", "remove_interface");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_interface),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_remove_interface, base, cargs, result);
    }

    pub fn removeTracker(self: *const Self, arg_tracker: *const godot.ARVRPositionalTracker) !void {
        if (mbind_remove_tracker == null) {
            mbind_remove_tracker = try api.createMethod("ARVRServer", "remove_tracker");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_tracker),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_remove_tracker, base, cargs, result);
    }

    pub fn setPrimaryInterface(self: *const Self, arg_interface: *const godot.ARVRInterface) !void {
        if (mbind_set_primary_interface == null) {
            mbind_set_primary_interface = try api.createMethod("ARVRServer", "set_primary_interface");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_interface),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_primary_interface, base, cargs, result);
    }

    pub fn setWorldScale(self: *const Self, arg_arg0: f32) !void {
        if (mbind_set_world_scale == null) {
            mbind_set_world_scale = try api.createMethod("ARVRServer", "set_world_scale");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_arg0),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_world_scale, base, cargs, result);
    }
};