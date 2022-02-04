// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Resource = @import("resource.zig").Resource;

// method bindings
var mbind_get_code: ?*c_api.godot_method_bind = null;
var mbind_get_custom_defines: ?*c_api.godot_method_bind = null;
var mbind_get_default_texture_param: ?*c_api.godot_method_bind = null;
var mbind_get_mode: ?*c_api.godot_method_bind = null;
var mbind_has_param: ?*c_api.godot_method_bind = null;
var mbind_set_code: ?*c_api.godot_method_bind = null;
var mbind_set_custom_defines: ?*c_api.godot_method_bind = null;
var mbind_set_default_texture_param: ?*c_api.godot_method_bind = null;
var mbind_shader_constructor: ?fn () ?*c_api.godot_object = null;

pub const Shader = struct {
    const Self = @This();
    const BaseClass = Resource;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_shader_constructor == null) {
            mbind_shader_constructor = try api.createConstructor("Shader");
        }
        return api.createObject(Self, mbind_shader_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getCode(self: *const Self) !godot.String {
        if (mbind_get_code == null) {
            mbind_get_code = try api.createMethod("Shader", "get_code");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_code, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getCustomDefines(self: *const Self) !godot.String {
        if (mbind_get_custom_defines == null) {
            mbind_get_custom_defines = try api.createMethod("Shader", "get_custom_defines");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_custom_defines, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getDefaultTextureParam(self: *const Self, arg_param: *const godot.String) !godot.Texture {
        if (mbind_get_default_texture_param == null) {
            mbind_get_default_texture_param = try api.createMethod("Shader", "get_default_texture_param");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_param),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_default_texture_param, base, cargs, result);
        return @ptrCast(*godot.Texture, @alignCast(@alignOf(&godot.Texture), result)).*;
    }

    pub fn getMode(self: *const Self) !i32 {
        if (mbind_get_mode == null) {
            mbind_get_mode = try api.createMethod("Shader", "get_mode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_mode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn hasParam(self: *const Self, arg_name: *const godot.String) !bool {
        if (mbind_has_param == null) {
            mbind_has_param = try api.createMethod("Shader", "has_param");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_has_param, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setCode(self: *const Self, arg_code: *const godot.String) !void {
        if (mbind_set_code == null) {
            mbind_set_code = try api.createMethod("Shader", "set_code");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_code),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_code, base, cargs, result);
    }

    pub fn setCustomDefines(self: *const Self, arg_custom_defines: *const godot.String) !void {
        if (mbind_set_custom_defines == null) {
            mbind_set_custom_defines = try api.createMethod("Shader", "set_custom_defines");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_custom_defines),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_custom_defines, base, cargs, result);
    }

    pub fn setDefaultTextureParam(self: *const Self, arg_param: *const godot.String, arg_texture: *const godot.Texture) !void {
        if (mbind_set_default_texture_param == null) {
            mbind_set_default_texture_param = try api.createMethod("Shader", "set_default_texture_param");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_param),
            @ptrCast(*const anyopaque, arg_texture),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_default_texture_param, base, cargs, result);
    }
};