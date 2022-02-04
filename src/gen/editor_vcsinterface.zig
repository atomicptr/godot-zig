// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Object = @import("object.zig").Object;

// method bindings
var mbind_commit: ?*c_api.godot_method_bind = null;
var mbind_get_file_diff: ?*c_api.godot_method_bind = null;
var mbind_get_modified_files_data: ?*c_api.godot_method_bind = null;
var mbind_get_project_name: ?*c_api.godot_method_bind = null;
var mbind_get_vcs_name: ?*c_api.godot_method_bind = null;
var mbind_initialize: ?*c_api.godot_method_bind = null;
var mbind_is_addon_ready: ?*c_api.godot_method_bind = null;
var mbind_is_vcs_initialized: ?*c_api.godot_method_bind = null;
var mbind_shut_down: ?*c_api.godot_method_bind = null;
var mbind_stage_file: ?*c_api.godot_method_bind = null;
var mbind_unstage_file: ?*c_api.godot_method_bind = null;
var mbind_editor_vcsinterface_constructor: ?fn () ?*c_api.godot_object = null;

pub const EditorVCSInterface = struct {
    const Self = @This();
    const BaseClass = Object;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_editor_vcsinterface_constructor == null) {
            mbind_editor_vcsinterface_constructor = try api.createConstructor("EditorVCSInterface");
        }
        return api.createObject(Self, mbind_editor_vcsinterface_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn commit(self: *const Self, arg_msg: *const godot.String) !void {
        if (mbind_commit == null) {
            mbind_commit = try api.createMethod("EditorVCSInterface", "commit");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_msg),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_commit, base, cargs, result);
    }

    pub fn getFileDiff(self: *const Self, arg_file_path: *const godot.String) !godot.Array {
        if (mbind_get_file_diff == null) {
            mbind_get_file_diff = try api.createMethod("EditorVCSInterface", "get_file_diff");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_file_path),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_file_diff, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getModifiedFilesData(self: *const Self) !godot.Dictionary {
        if (mbind_get_modified_files_data == null) {
            mbind_get_modified_files_data = try api.createMethod("EditorVCSInterface", "get_modified_files_data");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_modified_files_data, base, cargs, result);
        return @ptrCast(*godot.Dictionary, @alignCast(@alignOf(&godot.Dictionary), result)).*;
    }

    pub fn getProjectName(self: *const Self) !godot.String {
        if (mbind_get_project_name == null) {
            mbind_get_project_name = try api.createMethod("EditorVCSInterface", "get_project_name");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_project_name, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getVcsName(self: *const Self) !godot.String {
        if (mbind_get_vcs_name == null) {
            mbind_get_vcs_name = try api.createMethod("EditorVCSInterface", "get_vcs_name");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_vcs_name, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn initialize(self: *const Self, arg_project_root_path: *const godot.String) !bool {
        if (mbind_initialize == null) {
            mbind_initialize = try api.createMethod("EditorVCSInterface", "initialize");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_project_root_path),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_initialize, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isAddonReady(self: *const Self) !bool {
        if (mbind_is_addon_ready == null) {
            mbind_is_addon_ready = try api.createMethod("EditorVCSInterface", "is_addon_ready");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_addon_ready, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isVcsInitialized(self: *const Self) !bool {
        if (mbind_is_vcs_initialized == null) {
            mbind_is_vcs_initialized = try api.createMethod("EditorVCSInterface", "is_vcs_initialized");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_vcs_initialized, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn shutDown(self: *const Self) !bool {
        if (mbind_shut_down == null) {
            mbind_shut_down = try api.createMethod("EditorVCSInterface", "shut_down");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_shut_down, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn stageFile(self: *const Self, arg_file_path: *const godot.String) !void {
        if (mbind_stage_file == null) {
            mbind_stage_file = try api.createMethod("EditorVCSInterface", "stage_file");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_file_path),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_stage_file, base, cargs, result);
    }

    pub fn unstageFile(self: *const Self, arg_file_path: *const godot.String) !void {
        if (mbind_unstage_file == null) {
            mbind_unstage_file = try api.createMethod("EditorVCSInterface", "unstage_file");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_file_path),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_unstage_file, base, cargs, result);
    }
};