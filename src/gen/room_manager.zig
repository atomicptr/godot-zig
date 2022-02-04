// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Spatial = @import("spatial.zig").Spatial;

// method bindings
var mbind_get_debug_sprawl: ?*c_api.godot_method_bind = null;
var mbind_get_default_portal_margin: ?*c_api.godot_method_bind = null;
var mbind_get_gameplay_monitor_enabled: ?*c_api.godot_method_bind = null;
var mbind_get_merge_meshes: ?*c_api.godot_method_bind = null;
var mbind_get_overlap_warning_threshold: ?*c_api.godot_method_bind = null;
var mbind_get_portal_depth_limit: ?*c_api.godot_method_bind = null;
var mbind_get_preview_camera_path: ?*c_api.godot_method_bind = null;
var mbind_get_pvs_mode: ?*c_api.godot_method_bind = null;
var mbind_get_roaming_expansion_margin: ?*c_api.godot_method_bind = null;
var mbind_get_room_simplify: ?*c_api.godot_method_bind = null;
var mbind_get_roomlist_path: ?*c_api.godot_method_bind = null;
var mbind_get_show_margins: ?*c_api.godot_method_bind = null;
var mbind_get_use_secondary_pvs: ?*c_api.godot_method_bind = null;
var mbind_rooms_clear: ?*c_api.godot_method_bind = null;
var mbind_rooms_convert: ?*c_api.godot_method_bind = null;
var mbind_rooms_get_active: ?*c_api.godot_method_bind = null;
var mbind_rooms_set_active: ?*c_api.godot_method_bind = null;
var mbind_set_debug_sprawl: ?*c_api.godot_method_bind = null;
var mbind_set_default_portal_margin: ?*c_api.godot_method_bind = null;
var mbind_set_gameplay_monitor_enabled: ?*c_api.godot_method_bind = null;
var mbind_set_merge_meshes: ?*c_api.godot_method_bind = null;
var mbind_set_overlap_warning_threshold: ?*c_api.godot_method_bind = null;
var mbind_set_portal_depth_limit: ?*c_api.godot_method_bind = null;
var mbind_set_preview_camera_path: ?*c_api.godot_method_bind = null;
var mbind_set_pvs_mode: ?*c_api.godot_method_bind = null;
var mbind_set_roaming_expansion_margin: ?*c_api.godot_method_bind = null;
var mbind_set_room_simplify: ?*c_api.godot_method_bind = null;
var mbind_set_roomlist_path: ?*c_api.godot_method_bind = null;
var mbind_set_show_margins: ?*c_api.godot_method_bind = null;
var mbind_set_use_secondary_pvs: ?*c_api.godot_method_bind = null;
var mbind_room_manager_constructor: ?fn () ?*c_api.godot_object = null;

pub const RoomManager = struct {
    const Self = @This();
    const BaseClass = Spatial;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_room_manager_constructor == null) {
            mbind_room_manager_constructor = try api.createConstructor("RoomManager");
        }
        return api.createObject(Self, mbind_room_manager_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getDebugSprawl(self: *const Self) !bool {
        if (mbind_get_debug_sprawl == null) {
            mbind_get_debug_sprawl = try api.createMethod("RoomManager", "get_debug_sprawl");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_debug_sprawl, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getDefaultPortalMargin(self: *const Self) !f32 {
        if (mbind_get_default_portal_margin == null) {
            mbind_get_default_portal_margin = try api.createMethod("RoomManager", "get_default_portal_margin");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_default_portal_margin, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getGameplayMonitorEnabled(self: *const Self) !bool {
        if (mbind_get_gameplay_monitor_enabled == null) {
            mbind_get_gameplay_monitor_enabled = try api.createMethod("RoomManager", "get_gameplay_monitor_enabled");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_gameplay_monitor_enabled, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getMergeMeshes(self: *const Self) !bool {
        if (mbind_get_merge_meshes == null) {
            mbind_get_merge_meshes = try api.createMethod("RoomManager", "get_merge_meshes");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_merge_meshes, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getOverlapWarningThreshold(self: *const Self) !i32 {
        if (mbind_get_overlap_warning_threshold == null) {
            mbind_get_overlap_warning_threshold = try api.createMethod("RoomManager", "get_overlap_warning_threshold");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_overlap_warning_threshold, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getPortalDepthLimit(self: *const Self) !i32 {
        if (mbind_get_portal_depth_limit == null) {
            mbind_get_portal_depth_limit = try api.createMethod("RoomManager", "get_portal_depth_limit");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_portal_depth_limit, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getPreviewCameraPath(self: *const Self) !godot.NodePath {
        if (mbind_get_preview_camera_path == null) {
            mbind_get_preview_camera_path = try api.createMethod("RoomManager", "get_preview_camera_path");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_preview_camera_path, base, cargs, result);
        return @ptrCast(*godot.NodePath, @alignCast(@alignOf(&godot.NodePath), result)).*;
    }

    pub fn getPvsMode(self: *const Self) !i32 {
        if (mbind_get_pvs_mode == null) {
            mbind_get_pvs_mode = try api.createMethod("RoomManager", "get_pvs_mode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_pvs_mode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getRoamingExpansionMargin(self: *const Self) !f32 {
        if (mbind_get_roaming_expansion_margin == null) {
            mbind_get_roaming_expansion_margin = try api.createMethod("RoomManager", "get_roaming_expansion_margin");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_roaming_expansion_margin, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getRoomSimplify(self: *const Self) !f32 {
        if (mbind_get_room_simplify == null) {
            mbind_get_room_simplify = try api.createMethod("RoomManager", "get_room_simplify");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_room_simplify, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getRoomlistPath(self: *const Self) !godot.NodePath {
        if (mbind_get_roomlist_path == null) {
            mbind_get_roomlist_path = try api.createMethod("RoomManager", "get_roomlist_path");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_roomlist_path, base, cargs, result);
        return @ptrCast(*godot.NodePath, @alignCast(@alignOf(&godot.NodePath), result)).*;
    }

    pub fn getShowMargins(self: *const Self) !bool {
        if (mbind_get_show_margins == null) {
            mbind_get_show_margins = try api.createMethod("RoomManager", "get_show_margins");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_show_margins, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getUseSecondaryPvs(self: *const Self) !bool {
        if (mbind_get_use_secondary_pvs == null) {
            mbind_get_use_secondary_pvs = try api.createMethod("RoomManager", "get_use_secondary_pvs");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_use_secondary_pvs, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn roomsClear(self: *const Self) !void {
        if (mbind_rooms_clear == null) {
            mbind_rooms_clear = try api.createMethod("RoomManager", "rooms_clear");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_rooms_clear, base, cargs, result);
    }

    pub fn roomsConvert(self: *const Self) !void {
        if (mbind_rooms_convert == null) {
            mbind_rooms_convert = try api.createMethod("RoomManager", "rooms_convert");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_rooms_convert, base, cargs, result);
    }

    pub fn roomsGetActive(self: *const Self) !bool {
        if (mbind_rooms_get_active == null) {
            mbind_rooms_get_active = try api.createMethod("RoomManager", "rooms_get_active");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_rooms_get_active, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn roomsSetActive(self: *const Self, arg_active: bool) !void {
        if (mbind_rooms_set_active == null) {
            mbind_rooms_set_active = try api.createMethod("RoomManager", "rooms_set_active");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_active),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_rooms_set_active, base, cargs, result);
    }

    pub fn setDebugSprawl(self: *const Self, arg_debug_sprawl: bool) !void {
        if (mbind_set_debug_sprawl == null) {
            mbind_set_debug_sprawl = try api.createMethod("RoomManager", "set_debug_sprawl");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_debug_sprawl),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_debug_sprawl, base, cargs, result);
    }

    pub fn setDefaultPortalMargin(self: *const Self, arg_default_portal_margin: f32) !void {
        if (mbind_set_default_portal_margin == null) {
            mbind_set_default_portal_margin = try api.createMethod("RoomManager", "set_default_portal_margin");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_default_portal_margin),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_default_portal_margin, base, cargs, result);
    }

    pub fn setGameplayMonitorEnabled(self: *const Self, arg_gameplay_monitor: bool) !void {
        if (mbind_set_gameplay_monitor_enabled == null) {
            mbind_set_gameplay_monitor_enabled = try api.createMethod("RoomManager", "set_gameplay_monitor_enabled");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_gameplay_monitor),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_gameplay_monitor_enabled, base, cargs, result);
    }

    pub fn setMergeMeshes(self: *const Self, arg_merge_meshes: bool) !void {
        if (mbind_set_merge_meshes == null) {
            mbind_set_merge_meshes = try api.createMethod("RoomManager", "set_merge_meshes");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_merge_meshes),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_merge_meshes, base, cargs, result);
    }

    pub fn setOverlapWarningThreshold(self: *const Self, arg_overlap_warning_threshold: i32) !void {
        if (mbind_set_overlap_warning_threshold == null) {
            mbind_set_overlap_warning_threshold = try api.createMethod("RoomManager", "set_overlap_warning_threshold");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_overlap_warning_threshold),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_overlap_warning_threshold, base, cargs, result);
    }

    pub fn setPortalDepthLimit(self: *const Self, arg_portal_depth_limit: i32) !void {
        if (mbind_set_portal_depth_limit == null) {
            mbind_set_portal_depth_limit = try api.createMethod("RoomManager", "set_portal_depth_limit");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_portal_depth_limit),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_portal_depth_limit, base, cargs, result);
    }

    pub fn setPreviewCameraPath(self: *const Self, arg_preview_camera: *const godot.NodePath) !void {
        if (mbind_set_preview_camera_path == null) {
            mbind_set_preview_camera_path = try api.createMethod("RoomManager", "set_preview_camera_path");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_preview_camera),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_preview_camera_path, base, cargs, result);
    }

    pub fn setPvsMode(self: *const Self, arg_pvs_mode: i32) !void {
        if (mbind_set_pvs_mode == null) {
            mbind_set_pvs_mode = try api.createMethod("RoomManager", "set_pvs_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_pvs_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_pvs_mode, base, cargs, result);
    }

    pub fn setRoamingExpansionMargin(self: *const Self, arg_roaming_expansion_margin: f32) !void {
        if (mbind_set_roaming_expansion_margin == null) {
            mbind_set_roaming_expansion_margin = try api.createMethod("RoomManager", "set_roaming_expansion_margin");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_roaming_expansion_margin),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_roaming_expansion_margin, base, cargs, result);
    }

    pub fn setRoomSimplify(self: *const Self, arg_room_simplify: f32) !void {
        if (mbind_set_room_simplify == null) {
            mbind_set_room_simplify = try api.createMethod("RoomManager", "set_room_simplify");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_room_simplify),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_room_simplify, base, cargs, result);
    }

    pub fn setRoomlistPath(self: *const Self, arg_p_path: *const godot.NodePath) !void {
        if (mbind_set_roomlist_path == null) {
            mbind_set_roomlist_path = try api.createMethod("RoomManager", "set_roomlist_path");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_p_path),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_roomlist_path, base, cargs, result);
    }

    pub fn setShowMargins(self: *const Self, arg_show_margins: bool) !void {
        if (mbind_set_show_margins == null) {
            mbind_set_show_margins = try api.createMethod("RoomManager", "set_show_margins");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_show_margins),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_show_margins, base, cargs, result);
    }

    pub fn setUseSecondaryPvs(self: *const Self, arg_use_secondary_pvs: bool) !void {
        if (mbind_set_use_secondary_pvs == null) {
            mbind_set_use_secondary_pvs = try api.createMethod("RoomManager", "set_use_secondary_pvs");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_use_secondary_pvs),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_use_secondary_pvs, base, cargs, result);
    }
};