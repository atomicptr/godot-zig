// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const ConfirmationDialog = @import("confirmation_dialog.zig").ConfirmationDialog;

// method bindings
var mbind_add_filter: ?*c_api.godot_method_bind = null;
var mbind_clear_filters: ?*c_api.godot_method_bind = null;
var mbind_deselect_items: ?*c_api.godot_method_bind = null;
var mbind_get_access: ?*c_api.godot_method_bind = null;
var mbind_get_current_dir: ?*c_api.godot_method_bind = null;
var mbind_get_current_file: ?*c_api.godot_method_bind = null;
var mbind_get_current_path: ?*c_api.godot_method_bind = null;
var mbind_get_filters: ?*c_api.godot_method_bind = null;
var mbind_get_line_edit: ?*c_api.godot_method_bind = null;
var mbind_get_mode: ?*c_api.godot_method_bind = null;
var mbind_get_vbox: ?*c_api.godot_method_bind = null;
var mbind_invalidate: ?*c_api.godot_method_bind = null;
var mbind_is_mode_overriding_title: ?*c_api.godot_method_bind = null;
var mbind_is_showing_hidden_files: ?*c_api.godot_method_bind = null;
var mbind_set_access: ?*c_api.godot_method_bind = null;
var mbind_set_current_dir: ?*c_api.godot_method_bind = null;
var mbind_set_current_file: ?*c_api.godot_method_bind = null;
var mbind_set_current_path: ?*c_api.godot_method_bind = null;
var mbind_set_filters: ?*c_api.godot_method_bind = null;
var mbind_set_mode: ?*c_api.godot_method_bind = null;
var mbind_set_mode_overrides_title: ?*c_api.godot_method_bind = null;
var mbind_set_show_hidden_files: ?*c_api.godot_method_bind = null;
var mbind_file_dialog_constructor: ?fn () ?*c_api.godot_object = null;

pub const FileDialog = struct {
    const Self = @This();
    const BaseClass = ConfirmationDialog;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_file_dialog_constructor == null) {
            mbind_file_dialog_constructor = try api.createConstructor("FileDialog");
        }
        return api.createObject(Self, mbind_file_dialog_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn addFilter(self: *const Self, arg_filter: *const godot.String) !void {
        if (mbind_add_filter == null) {
            mbind_add_filter = try api.createMethod("FileDialog", "add_filter");
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
            mbind_clear_filters = try api.createMethod("FileDialog", "clear_filters");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_clear_filters, base, cargs, result);
    }

    pub fn deselectItems(self: *const Self) !void {
        if (mbind_deselect_items == null) {
            mbind_deselect_items = try api.createMethod("FileDialog", "deselect_items");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_deselect_items, base, cargs, result);
    }

    pub fn getAccess(self: *const Self) !i32 {
        if (mbind_get_access == null) {
            mbind_get_access = try api.createMethod("FileDialog", "get_access");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_access, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getCurrentDir(self: *const Self) !godot.String {
        if (mbind_get_current_dir == null) {
            mbind_get_current_dir = try api.createMethod("FileDialog", "get_current_dir");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_current_dir, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getCurrentFile(self: *const Self) !godot.String {
        if (mbind_get_current_file == null) {
            mbind_get_current_file = try api.createMethod("FileDialog", "get_current_file");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_current_file, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getCurrentPath(self: *const Self) !godot.String {
        if (mbind_get_current_path == null) {
            mbind_get_current_path = try api.createMethod("FileDialog", "get_current_path");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_current_path, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getFilters(self: *const Self) !godot.PoolStringArray {
        if (mbind_get_filters == null) {
            mbind_get_filters = try api.createMethod("FileDialog", "get_filters");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_filters, base, cargs, result);
        return @ptrCast(*godot.PoolStringArray, @alignCast(@alignOf(&godot.PoolStringArray), result)).*;
    }

    pub fn getLineEdit(self: *const Self) !godot.LineEdit {
        if (mbind_get_line_edit == null) {
            mbind_get_line_edit = try api.createMethod("FileDialog", "get_line_edit");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_line_edit, base, cargs, result);
        return @ptrCast(*godot.LineEdit, @alignCast(@alignOf(&godot.LineEdit), result)).*;
    }

    pub fn getMode(self: *const Self) !i32 {
        if (mbind_get_mode == null) {
            mbind_get_mode = try api.createMethod("FileDialog", "get_mode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_mode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getVbox(self: *const Self) !godot.VBoxContainer {
        if (mbind_get_vbox == null) {
            mbind_get_vbox = try api.createMethod("FileDialog", "get_vbox");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_vbox, base, cargs, result);
        return @ptrCast(*godot.VBoxContainer, @alignCast(@alignOf(&godot.VBoxContainer), result)).*;
    }

    pub fn invalidate(self: *const Self) !void {
        if (mbind_invalidate == null) {
            mbind_invalidate = try api.createMethod("FileDialog", "invalidate");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_invalidate, base, cargs, result);
    }

    pub fn isModeOverridingTitle(self: *const Self) !bool {
        if (mbind_is_mode_overriding_title == null) {
            mbind_is_mode_overriding_title = try api.createMethod("FileDialog", "is_mode_overriding_title");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_mode_overriding_title, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isShowingHiddenFiles(self: *const Self) !bool {
        if (mbind_is_showing_hidden_files == null) {
            mbind_is_showing_hidden_files = try api.createMethod("FileDialog", "is_showing_hidden_files");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_showing_hidden_files, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setAccess(self: *const Self, arg_access: i32) !void {
        if (mbind_set_access == null) {
            mbind_set_access = try api.createMethod("FileDialog", "set_access");
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
            mbind_set_current_dir = try api.createMethod("FileDialog", "set_current_dir");
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
            mbind_set_current_file = try api.createMethod("FileDialog", "set_current_file");
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
            mbind_set_current_path = try api.createMethod("FileDialog", "set_current_path");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_path),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_current_path, base, cargs, result);
    }

    pub fn setFilters(self: *const Self, arg_filters: *const godot.PoolStringArray) !void {
        if (mbind_set_filters == null) {
            mbind_set_filters = try api.createMethod("FileDialog", "set_filters");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_filters),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_filters, base, cargs, result);
    }

    pub fn setMode(self: *const Self, arg_mode: i32) !void {
        if (mbind_set_mode == null) {
            mbind_set_mode = try api.createMethod("FileDialog", "set_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_mode, base, cargs, result);
    }

    pub fn setModeOverridesTitle(self: *const Self, arg_override: bool) !void {
        if (mbind_set_mode_overrides_title == null) {
            mbind_set_mode_overrides_title = try api.createMethod("FileDialog", "set_mode_overrides_title");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_override),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_mode_overrides_title, base, cargs, result);
    }

    pub fn setShowHiddenFiles(self: *const Self, arg_show: bool) !void {
        if (mbind_set_show_hidden_files == null) {
            mbind_set_show_hidden_files = try api.createMethod("FileDialog", "set_show_hidden_files");
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