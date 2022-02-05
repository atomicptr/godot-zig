// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Resource = @import("resource.zig").Resource;

// method bindings
var mbind_add_property_info: ?*c_api.godot_method_bind = null;
var mbind_erase: ?*c_api.godot_method_bind = null;
var mbind_get_favorites: ?*c_api.godot_method_bind = null;
var mbind_get_project_metadata: ?*c_api.godot_method_bind = null;
var mbind_get_project_settings_dir: ?*c_api.godot_method_bind = null;
var mbind_get_recent_dirs: ?*c_api.godot_method_bind = null;
var mbind_get_setting: ?*c_api.godot_method_bind = null;
var mbind_get_settings_dir: ?*c_api.godot_method_bind = null;
var mbind_has_setting: ?*c_api.godot_method_bind = null;
var mbind_property_can_revert: ?*c_api.godot_method_bind = null;
var mbind_property_get_revert: ?*c_api.godot_method_bind = null;
var mbind_set_favorites: ?*c_api.godot_method_bind = null;
var mbind_set_initial_value: ?*c_api.godot_method_bind = null;
var mbind_set_project_metadata: ?*c_api.godot_method_bind = null;
var mbind_set_recent_dirs: ?*c_api.godot_method_bind = null;
var mbind_set_setting: ?*c_api.godot_method_bind = null;
var mbind_editor_settings_constructor: ?fn () ?*c_api.godot_object = null;

pub const EditorSettings = struct {
    const Self = @This();
    const BaseClass = Resource;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_editor_settings_constructor == null) {
            mbind_editor_settings_constructor = try api.createConstructor("EditorSettings");
        }
        return api.createObject(Self, mbind_editor_settings_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn addPropertyInfo(self: *const Self, arg_info: *const godot.Dictionary) !void {
        if (mbind_add_property_info == null) {
            mbind_add_property_info = try api.createMethod("EditorSettings", "add_property_info");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_info),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_property_info, base, cargs, result);
    }

    pub fn erase(self: *const Self, arg_property: *const godot.String) !void {
        if (mbind_erase == null) {
            mbind_erase = try api.createMethod("EditorSettings", "erase");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_property),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_erase, base, cargs, result);
    }

    pub fn getFavorites(self: *const Self) !godot.PoolStringArray {
        if (mbind_get_favorites == null) {
            mbind_get_favorites = try api.createMethod("EditorSettings", "get_favorites");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_favorites, base, cargs, result);
        return @ptrCast(*godot.PoolStringArray, @alignCast(@alignOf(&godot.PoolStringArray), result)).*;
    }

    pub fn getProjectMetadata(self: *const Self, arg_section: *const godot.String, arg_key: *const godot.String, arg_default: *const godot.Variant) !godot.Variant {
        if (mbind_get_project_metadata == null) {
            mbind_get_project_metadata = try api.createMethod("EditorSettings", "get_project_metadata");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_section),
            @ptrCast(*const anyopaque, arg_key),
            @ptrCast(*const anyopaque, arg_default),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_project_metadata, base, cargs, result);
        return @ptrCast(*godot.Variant, @alignCast(@alignOf(&godot.Variant), result)).*;
    }

    pub fn getProjectSettingsDir(self: *const Self) !godot.String {
        if (mbind_get_project_settings_dir == null) {
            mbind_get_project_settings_dir = try api.createMethod("EditorSettings", "get_project_settings_dir");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_project_settings_dir, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getRecentDirs(self: *const Self) !godot.PoolStringArray {
        if (mbind_get_recent_dirs == null) {
            mbind_get_recent_dirs = try api.createMethod("EditorSettings", "get_recent_dirs");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_recent_dirs, base, cargs, result);
        return @ptrCast(*godot.PoolStringArray, @alignCast(@alignOf(&godot.PoolStringArray), result)).*;
    }

    pub fn getSetting(self: *const Self, arg_name: *const godot.String) !godot.Variant {
        if (mbind_get_setting == null) {
            mbind_get_setting = try api.createMethod("EditorSettings", "get_setting");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_setting, base, cargs, result);
        return @ptrCast(*godot.Variant, @alignCast(@alignOf(&godot.Variant), result)).*;
    }

    pub fn getSettingsDir(self: *const Self) !godot.String {
        if (mbind_get_settings_dir == null) {
            mbind_get_settings_dir = try api.createMethod("EditorSettings", "get_settings_dir");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_settings_dir, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn hasSetting(self: *const Self, arg_name: *const godot.String) !bool {
        if (mbind_has_setting == null) {
            mbind_has_setting = try api.createMethod("EditorSettings", "has_setting");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_has_setting, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn propertyCanRevert(self: *const Self, arg_name: *const godot.String) !bool {
        if (mbind_property_can_revert == null) {
            mbind_property_can_revert = try api.createMethod("EditorSettings", "property_can_revert");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_property_can_revert, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn propertyGetRevert(self: *const Self, arg_name: *const godot.String) !godot.Variant {
        if (mbind_property_get_revert == null) {
            mbind_property_get_revert = try api.createMethod("EditorSettings", "property_get_revert");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_property_get_revert, base, cargs, result);
        return @ptrCast(*godot.Variant, @alignCast(@alignOf(&godot.Variant), result)).*;
    }

    pub fn setFavorites(self: *const Self, arg_dirs: *const godot.PoolStringArray) !void {
        if (mbind_set_favorites == null) {
            mbind_set_favorites = try api.createMethod("EditorSettings", "set_favorites");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_dirs),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_favorites, base, cargs, result);
    }

    pub fn setInitialValue(self: *const Self, arg_name: *const godot.String, arg_value: *const godot.Variant, arg_update_current: bool) !void {
        if (mbind_set_initial_value == null) {
            mbind_set_initial_value = try api.createMethod("EditorSettings", "set_initial_value");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
            @ptrCast(*const anyopaque, arg_value),
            @ptrCast(*const anyopaque, *arg_update_current),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_initial_value, base, cargs, result);
    }

    pub fn setProjectMetadata(self: *const Self, arg_section: *const godot.String, arg_key: *const godot.String, arg_data: *const godot.Variant) !void {
        if (mbind_set_project_metadata == null) {
            mbind_set_project_metadata = try api.createMethod("EditorSettings", "set_project_metadata");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_section),
            @ptrCast(*const anyopaque, arg_key),
            @ptrCast(*const anyopaque, arg_data),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_project_metadata, base, cargs, result);
    }

    pub fn setRecentDirs(self: *const Self, arg_dirs: *const godot.PoolStringArray) !void {
        if (mbind_set_recent_dirs == null) {
            mbind_set_recent_dirs = try api.createMethod("EditorSettings", "set_recent_dirs");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_dirs),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_recent_dirs, base, cargs, result);
    }

    pub fn setSetting(self: *const Self, arg_name: *const godot.String, arg_value: *const godot.Variant) !void {
        if (mbind_set_setting == null) {
            mbind_set_setting = try api.createMethod("EditorSettings", "set_setting");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
            @ptrCast(*const anyopaque, arg_value),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_setting, base, cargs, result);
    }
};