// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Object = @import("object.zig").Object;

// method bindings
var mbind_exists: ?*c_api.godot_method_bind = null;
var mbind_get_dependencies: ?*c_api.godot_method_bind = null;
var mbind_get_recognized_extensions_for_type: ?*c_api.godot_method_bind = null;
var mbind_has: ?*c_api.godot_method_bind = null;
var mbind_has_cached: ?*c_api.godot_method_bind = null;
var mbind_load: ?*c_api.godot_method_bind = null;
var mbind_load_interactive: ?*c_api.godot_method_bind = null;
var mbind_set_abort_on_missing_resources: ?*c_api.godot_method_bind = null;
var mbind__resource_loader_constructor: ?fn () ?*c_api.godot_object = null;

pub const _ResourceLoader = struct {
    const Self = @This();
    const BaseClass = Object;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind__resource_loader_constructor == null) {
            mbind__resource_loader_constructor = try api.createConstructor("_ResourceLoader");
        }
        return api.createObject(Self, mbind__resource_loader_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn exists(self: *const Self, arg_path: *const godot.String, arg_type_hint: *const godot.String) !bool {
        if (mbind_exists == null) {
            mbind_exists = try api.createMethod("_ResourceLoader", "exists");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_path),
            @ptrCast(*const anyopaque, arg_type_hint),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_exists, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getDependencies(self: *const Self, arg_path: *const godot.String) !godot.PoolStringArray {
        if (mbind_get_dependencies == null) {
            mbind_get_dependencies = try api.createMethod("_ResourceLoader", "get_dependencies");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_path),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_dependencies, base, cargs, result);
        return @ptrCast(*godot.PoolStringArray, @alignCast(@alignOf(&godot.PoolStringArray), result)).*;
    }

    pub fn getRecognizedExtensionsForType(self: *const Self, arg_type: *const godot.String) !godot.PoolStringArray {
        if (mbind_get_recognized_extensions_for_type == null) {
            mbind_get_recognized_extensions_for_type = try api.createMethod("_ResourceLoader", "get_recognized_extensions_for_type");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_type),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_recognized_extensions_for_type, base, cargs, result);
        return @ptrCast(*godot.PoolStringArray, @alignCast(@alignOf(&godot.PoolStringArray), result)).*;
    }

    pub fn has(self: *const Self, arg_path: *const godot.String) !bool {
        if (mbind_has == null) {
            mbind_has = try api.createMethod("_ResourceLoader", "has");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_path),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_has, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn hasCached(self: *const Self, arg_path: *const godot.String) !bool {
        if (mbind_has_cached == null) {
            mbind_has_cached = try api.createMethod("_ResourceLoader", "has_cached");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_path),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_has_cached, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn load(self: *const Self, arg_path: *const godot.String, arg_type_hint: *const godot.String, arg_no_cache: bool) !godot.Resource {
        if (mbind_load == null) {
            mbind_load = try api.createMethod("_ResourceLoader", "load");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_path),
            @ptrCast(*const anyopaque, arg_type_hint),
            @ptrCast(*const anyopaque, *arg_no_cache),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_load, base, cargs, result);
        return @ptrCast(*godot.Resource, @alignCast(@alignOf(&godot.Resource), result)).*;
    }

    pub fn loadInteractive(self: *const Self, arg_path: *const godot.String, arg_type_hint: *const godot.String) !godot.ResourceInteractiveLoader {
        if (mbind_load_interactive == null) {
            mbind_load_interactive = try api.createMethod("_ResourceLoader", "load_interactive");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_path),
            @ptrCast(*const anyopaque, arg_type_hint),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_load_interactive, base, cargs, result);
        return @ptrCast(*godot.ResourceInteractiveLoader, @alignCast(@alignOf(&godot.ResourceInteractiveLoader), result)).*;
    }

    pub fn setAbortOnMissingResources(self: *const Self, arg_abort: bool) !void {
        if (mbind_set_abort_on_missing_resources == null) {
            mbind_set_abort_on_missing_resources = try api.createMethod("_ResourceLoader", "set_abort_on_missing_resources");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_abort),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_abort_on_missing_resources, base, cargs, result);
    }
};