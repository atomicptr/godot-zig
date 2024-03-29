// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_add_filter: ?*c_api.godot_method_bind = null;
var mbind_clear_filters: ?*c_api.godot_method_bind = null;
var mbind_get_access: ?*c_api.godot_method_bind = null;
var mbind_get_current_dir: ?*c_api.godot_method_bind = null;
var mbind_get_current_file: ?*c_api.godot_method_bind = null;
var mbind_get_current_path: ?*c_api.godot_method_bind = null;
var mbind_get_display_mode: ?*c_api.godot_method_bind = null;
var mbind_get_mode: ?*c_api.godot_method_bind = null;
var mbind_get_vbox: ?*c_api.godot_method_bind = null;
var mbind_invalidate: ?*c_api.godot_method_bind = null;
var mbind_is_overwrite_warning_disabled: ?*c_api.godot_method_bind = null;
var mbind_is_showing_hidden_files: ?*c_api.godot_method_bind = null;
var mbind_set_access: ?*c_api.godot_method_bind = null;
var mbind_set_current_dir: ?*c_api.godot_method_bind = null;
var mbind_set_current_file: ?*c_api.godot_method_bind = null;
var mbind_set_current_path: ?*c_api.godot_method_bind = null;
var mbind_set_disable_overwrite_warning: ?*c_api.godot_method_bind = null;
var mbind_set_display_mode: ?*c_api.godot_method_bind = null;
var mbind_set_mode: ?*c_api.godot_method_bind = null;
var mbind_set_show_hidden_files: ?*c_api.godot_method_bind = null;
var mbind_editor_file_dialog_constructor: ?fn () ?*c_api.godot_object = null;

pub const EditorFileDialog = struct {
    const Self = @This();
    pub const BaseClass = godot.ConfirmationDialog;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_editor_file_dialog_constructor == null) {
            mbind_editor_file_dialog_constructor = try api.createConstructor("EditorFileDialog");
        }
        return api.createObject(Self, mbind_editor_file_dialog_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn addFilter(self: *const Self, arg_filter: *const godot.String) !void {
        if (mbind_add_filter == null) {
            mbind_add_filter = try api.createMethod("EditorFileDialog", "add_filter");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_filter),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_filter, base, cargs, result);
    }

    pub fn clearFilters(self: *const Self) !void {
        if (mbind_clear_filters == null) {
            mbind_clear_filters = try api.createMethod("EditorFileDialog", "clear_filters");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_clear_filters, base, cargs, result);
    }

    pub fn getAccess(self: *const Self) !i32 {
        if (mbind_get_access == null) {
            mbind_get_access = try api.createMethod("EditorFileDialog", "get_access");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_access, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getCurrentDir(self: *const Self) !godot.String {
        if (mbind_get_current_dir == null) {
            mbind_get_current_dir = try api.createMethod("EditorFileDialog", "get_current_dir");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_current_dir, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getCurrentFile(self: *const Self) !godot.String {
        if (mbind_get_current_file == null) {
            mbind_get_current_file = try api.createMethod("EditorFileDialog", "get_current_file");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_current_file, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getCurrentPath(self: *const Self) !godot.String {
        if (mbind_get_current_path == null) {
            mbind_get_current_path = try api.createMethod("EditorFileDialog", "get_current_path");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_current_path, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getDisplayMode(self: *const Self) !i32 {
        if (mbind_get_display_mode == null) {
            mbind_get_display_mode = try api.createMethod("EditorFileDialog", "get_display_mode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_display_mode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getMode(self: *const Self) !i32 {
        if (mbind_get_mode == null) {
            mbind_get_mode = try api.createMethod("EditorFileDialog", "get_mode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_mode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getVbox(self: *const Self) !godot.VBoxContainer {
        if (mbind_get_vbox == null) {
            mbind_get_vbox = try api.createMethod("EditorFileDialog", "get_vbox");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_vbox, base, cargs, result);
        return @ptrCast(*godot.VBoxContainer, @alignCast(@alignOf(&godot.VBoxContainer), result)).*;
    }

    pub fn invalidate(self: *const Self) !void {
        if (mbind_invalidate == null) {
            mbind_invalidate = try api.createMethod("EditorFileDialog", "invalidate");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_invalidate, base, cargs, result);
    }

    pub fn isOverwriteWarningDisabled(self: *const Self) !bool {
        if (mbind_is_overwrite_warning_disabled == null) {
            mbind_is_overwrite_warning_disabled = try api.createMethod("EditorFileDialog", "is_overwrite_warning_disabled");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_overwrite_warning_disabled, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isShowingHiddenFiles(self: *const Self) !bool {
        if (mbind_is_showing_hidden_files == null) {
            mbind_is_showing_hidden_files = try api.createMethod("EditorFileDialog", "is_showing_hidden_files");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_showing_hidden_files, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setAccess(self: *const Self, arg_access: i32) !void {
        if (mbind_set_access == null) {
            mbind_set_access = try api.createMethod("EditorFileDialog", "set_access");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_access),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_access, base, cargs, result);
    }

    pub fn setCurrentDir(self: *const Self, arg_dir: *const godot.String) !void {
        if (mbind_set_current_dir == null) {
            mbind_set_current_dir = try api.createMethod("EditorFileDialog", "set_current_dir");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_dir),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_current_dir, base, cargs, result);
    }

    pub fn setCurrentFile(self: *const Self, arg_file: *const godot.String) !void {
        if (mbind_set_current_file == null) {
            mbind_set_current_file = try api.createMethod("EditorFileDialog", "set_current_file");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_file),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_current_file, base, cargs, result);
    }

    pub fn setCurrentPath(self: *const Self, arg_path: *const godot.String) !void {
        if (mbind_set_current_path == null) {
            mbind_set_current_path = try api.createMethod("EditorFileDialog", "set_current_path");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_path),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_current_path, base, cargs, result);
    }

    pub fn setDisableOverwriteWarning(self: *const Self, arg_disable: bool) !void {
        if (mbind_set_disable_overwrite_warning == null) {
            mbind_set_disable_overwrite_warning = try api.createMethod("EditorFileDialog", "set_disable_overwrite_warning");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_disable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_disable_overwrite_warning, base, cargs, result);
    }

    pub fn setDisplayMode(self: *const Self, arg_mode: i32) !void {
        if (mbind_set_display_mode == null) {
            mbind_set_display_mode = try api.createMethod("EditorFileDialog", "set_display_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_display_mode, base, cargs, result);
    }

    pub fn setMode(self: *const Self, arg_mode: i32) !void {
        if (mbind_set_mode == null) {
            mbind_set_mode = try api.createMethod("EditorFileDialog", "set_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_mode, base, cargs, result);
    }

    pub fn setShowHiddenFiles(self: *const Self, arg_show: bool) !void {
        if (mbind_set_show_hidden_files == null) {
            mbind_set_show_hidden_files = try api.createMethod("EditorFileDialog", "set_show_hidden_files");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_show),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_show_hidden_files, base, cargs, result);
    }
};