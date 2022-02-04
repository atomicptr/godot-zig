// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Resource = @import("resource.zig").Resource;

// method bindings
var mbind_get_config_file: ?*c_api.godot_method_bind = null;
var mbind_get_current_dependencies: ?*c_api.godot_method_bind = null;
var mbind_get_current_library_path: ?*c_api.godot_method_bind = null;
var mbind_get_symbol_prefix: ?*c_api.godot_method_bind = null;
var mbind_is_reloadable: ?*c_api.godot_method_bind = null;
var mbind_is_singleton: ?*c_api.godot_method_bind = null;
var mbind_set_config_file: ?*c_api.godot_method_bind = null;
var mbind_set_load_once: ?*c_api.godot_method_bind = null;
var mbind_set_reloadable: ?*c_api.godot_method_bind = null;
var mbind_set_singleton: ?*c_api.godot_method_bind = null;
var mbind_set_symbol_prefix: ?*c_api.godot_method_bind = null;
var mbind_should_load_once: ?*c_api.godot_method_bind = null;
var mbind_gdnative_library_constructor: ?fn () ?*c_api.godot_object = null;

pub const GDNativeLibrary = struct {
    const Self = @This();
    const BaseClass = Resource;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_gdnative_library_constructor == null) {
            mbind_gdnative_library_constructor = try api.createConstructor("GDNativeLibrary");
        }
        return api.createObject(Self, mbind_gdnative_library_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getConfigFile(self: *const Self) !godot.ConfigFile {
        if (mbind_get_config_file == null) {
            mbind_get_config_file = try api.createMethod("GDNativeLibrary", "get_config_file");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_config_file, base, cargs, result);
        return @ptrCast(*godot.ConfigFile, @alignCast(@alignOf(&godot.ConfigFile), result)).*;
    }

    pub fn getCurrentDependencies(self: *const Self) !godot.PoolStringArray {
        if (mbind_get_current_dependencies == null) {
            mbind_get_current_dependencies = try api.createMethod("GDNativeLibrary", "get_current_dependencies");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_current_dependencies, base, cargs, result);
        return @ptrCast(*godot.PoolStringArray, @alignCast(@alignOf(&godot.PoolStringArray), result)).*;
    }

    pub fn getCurrentLibraryPath(self: *const Self) !godot.String {
        if (mbind_get_current_library_path == null) {
            mbind_get_current_library_path = try api.createMethod("GDNativeLibrary", "get_current_library_path");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_current_library_path, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getSymbolPrefix(self: *const Self) !godot.String {
        if (mbind_get_symbol_prefix == null) {
            mbind_get_symbol_prefix = try api.createMethod("GDNativeLibrary", "get_symbol_prefix");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_symbol_prefix, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn isReloadable(self: *const Self) !bool {
        if (mbind_is_reloadable == null) {
            mbind_is_reloadable = try api.createMethod("GDNativeLibrary", "is_reloadable");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_reloadable, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isSingleton(self: *const Self) !bool {
        if (mbind_is_singleton == null) {
            mbind_is_singleton = try api.createMethod("GDNativeLibrary", "is_singleton");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_singleton, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setConfigFile(self: *const Self, arg_config_file: *const godot.ConfigFile) !void {
        if (mbind_set_config_file == null) {
            mbind_set_config_file = try api.createMethod("GDNativeLibrary", "set_config_file");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_config_file),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_config_file, base, cargs, result);
    }

    pub fn setLoadOnce(self: *const Self, arg_load_once: bool) !void {
        if (mbind_set_load_once == null) {
            mbind_set_load_once = try api.createMethod("GDNativeLibrary", "set_load_once");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_load_once),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_load_once, base, cargs, result);
    }

    pub fn setReloadable(self: *const Self, arg_reloadable: bool) !void {
        if (mbind_set_reloadable == null) {
            mbind_set_reloadable = try api.createMethod("GDNativeLibrary", "set_reloadable");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_reloadable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_reloadable, base, cargs, result);
    }

    pub fn setSingleton(self: *const Self, arg_singleton: bool) !void {
        if (mbind_set_singleton == null) {
            mbind_set_singleton = try api.createMethod("GDNativeLibrary", "set_singleton");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_singleton),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_singleton, base, cargs, result);
    }

    pub fn setSymbolPrefix(self: *const Self, arg_symbol_prefix: *const godot.String) !void {
        if (mbind_set_symbol_prefix == null) {
            mbind_set_symbol_prefix = try api.createMethod("GDNativeLibrary", "set_symbol_prefix");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_symbol_prefix),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_symbol_prefix, base, cargs, result);
    }

    pub fn shouldLoadOnce(self: *const Self) !bool {
        if (mbind_should_load_once == null) {
            mbind_should_load_once = try api.createMethod("GDNativeLibrary", "should_load_once");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_should_load_once, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }
};