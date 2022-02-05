// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Object = @import("object.zig").Object;

// method bindings
var mbind_add_property_info: ?*c_api.godot_method_bind = null;
var mbind_clear: ?*c_api.godot_method_bind = null;
var mbind_get_order: ?*c_api.godot_method_bind = null;
var mbind_get_setting: ?*c_api.godot_method_bind = null;
var mbind_globalize_path: ?*c_api.godot_method_bind = null;
var mbind_has_setting: ?*c_api.godot_method_bind = null;
var mbind_load_resource_pack: ?*c_api.godot_method_bind = null;
var mbind_localize_path: ?*c_api.godot_method_bind = null;
var mbind_property_can_revert: ?*c_api.godot_method_bind = null;
var mbind_property_get_revert: ?*c_api.godot_method_bind = null;
var mbind_save: ?*c_api.godot_method_bind = null;
var mbind_save_custom: ?*c_api.godot_method_bind = null;
var mbind_set_initial_value: ?*c_api.godot_method_bind = null;
var mbind_set_order: ?*c_api.godot_method_bind = null;
var mbind_set_setting: ?*c_api.godot_method_bind = null;
var mbind_project_settings_constructor: ?fn () ?*c_api.godot_object = null;

pub const ProjectSettings = struct {
    const Self = @This();
    const BaseClass = Object;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_project_settings_constructor == null) {
            mbind_project_settings_constructor = try api.createConstructor("ProjectSettings");
        }
        return api.createObject(Self, mbind_project_settings_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn addPropertyInfo(self: *const Self, arg_hint: *const godot.Dictionary) !void {
        if (mbind_add_property_info == null) {
            mbind_add_property_info = try api.createMethod("ProjectSettings", "add_property_info");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_hint),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_property_info, base, cargs, result);
    }

    pub fn clear(self: *const Self, arg_name: *const godot.String) !void {
        if (mbind_clear == null) {
            mbind_clear = try api.createMethod("ProjectSettings", "clear");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_clear, base, cargs, result);
    }

    pub fn getOrder(self: *const Self, arg_name: *const godot.String) !i32 {
        if (mbind_get_order == null) {
            mbind_get_order = try api.createMethod("ProjectSettings", "get_order");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_order, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getSetting(self: *const Self, arg_name: *const godot.String) !godot.Variant {
        if (mbind_get_setting == null) {
            mbind_get_setting = try api.createMethod("ProjectSettings", "get_setting");
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

    pub fn globalizePath(self: *const Self, arg_path: *const godot.String) !godot.String {
        if (mbind_globalize_path == null) {
            mbind_globalize_path = try api.createMethod("ProjectSettings", "globalize_path");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_path),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_globalize_path, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn hasSetting(self: *const Self, arg_name: *const godot.String) !bool {
        if (mbind_has_setting == null) {
            mbind_has_setting = try api.createMethod("ProjectSettings", "has_setting");
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

    pub fn loadResourcePack(self: *const Self, arg_pack: *const godot.String, arg_replace_files: bool, arg_offset: i32) !bool {
        if (mbind_load_resource_pack == null) {
            mbind_load_resource_pack = try api.createMethod("ProjectSettings", "load_resource_pack");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_pack),
            @ptrCast(*const anyopaque, *arg_replace_files),
            @ptrCast(*const anyopaque, *arg_offset),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_load_resource_pack, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn localizePath(self: *const Self, arg_path: *const godot.String) !godot.String {
        if (mbind_localize_path == null) {
            mbind_localize_path = try api.createMethod("ProjectSettings", "localize_path");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_path),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_localize_path, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn propertyCanRevert(self: *const Self, arg_name: *const godot.String) !bool {
        if (mbind_property_can_revert == null) {
            mbind_property_can_revert = try api.createMethod("ProjectSettings", "property_can_revert");
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
            mbind_property_get_revert = try api.createMethod("ProjectSettings", "property_get_revert");
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

    pub fn save(self: *const Self) !i32 {
        if (mbind_save == null) {
            mbind_save = try api.createMethod("ProjectSettings", "save");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_save, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn saveCustom(self: *const Self, arg_file: *const godot.String) !i32 {
        if (mbind_save_custom == null) {
            mbind_save_custom = try api.createMethod("ProjectSettings", "save_custom");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_file),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_save_custom, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn setInitialValue(self: *const Self, arg_name: *const godot.String, arg_value: *const godot.Variant) !void {
        if (mbind_set_initial_value == null) {
            mbind_set_initial_value = try api.createMethod("ProjectSettings", "set_initial_value");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
            @ptrCast(*const anyopaque, arg_value),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_initial_value, base, cargs, result);
    }

    pub fn setOrder(self: *const Self, arg_name: *const godot.String, arg_position: i32) !void {
        if (mbind_set_order == null) {
            mbind_set_order = try api.createMethod("ProjectSettings", "set_order");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
            @ptrCast(*const anyopaque, *arg_position),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_order, base, cargs, result);
    }

    pub fn setSetting(self: *const Self, arg_name: *const godot.String, arg_value: *const godot.Variant) !void {
        if (mbind_set_setting == null) {
            mbind_set_setting = try api.createMethod("ProjectSettings", "set_setting");
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