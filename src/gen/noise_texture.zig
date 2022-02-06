// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_bump_strength: ?*c_api.godot_method_bind = null;
var mbind_get_noise: ?*c_api.godot_method_bind = null;
var mbind_get_noise_offset: ?*c_api.godot_method_bind = null;
var mbind_get_seamless: ?*c_api.godot_method_bind = null;
var mbind_is_normalmap: ?*c_api.godot_method_bind = null;
var mbind_set_as_normalmap: ?*c_api.godot_method_bind = null;
var mbind_set_bump_strength: ?*c_api.godot_method_bind = null;
var mbind_set_height: ?*c_api.godot_method_bind = null;
var mbind_set_noise: ?*c_api.godot_method_bind = null;
var mbind_set_noise_offset: ?*c_api.godot_method_bind = null;
var mbind_set_seamless: ?*c_api.godot_method_bind = null;
var mbind_set_width: ?*c_api.godot_method_bind = null;
var mbind_noise_texture_constructor: ?fn () ?*c_api.godot_object = null;

pub const NoiseTexture = struct {
    const Self = @This();
    pub const BaseClass = godot.Texture;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_noise_texture_constructor == null) {
            mbind_noise_texture_constructor = try api.createConstructor("NoiseTexture");
        }
        return api.createObject(Self, mbind_noise_texture_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getBumpStrength(self: *const Self) !f32 {
        if (mbind_get_bump_strength == null) {
            mbind_get_bump_strength = try api.createMethod("NoiseTexture", "get_bump_strength");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_bump_strength, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getNoise(self: *const Self) !godot.OpenSimplexNoise {
        if (mbind_get_noise == null) {
            mbind_get_noise = try api.createMethod("NoiseTexture", "get_noise");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_noise, base, cargs, result);
        return @ptrCast(*godot.OpenSimplexNoise, @alignCast(@alignOf(&godot.OpenSimplexNoise), result)).*;
    }

    pub fn getNoiseOffset(self: *const Self) !godot.Vector2 {
        if (mbind_get_noise_offset == null) {
            mbind_get_noise_offset = try api.createMethod("NoiseTexture", "get_noise_offset");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_noise_offset, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getSeamless(self: *const Self) !bool {
        if (mbind_get_seamless == null) {
            mbind_get_seamless = try api.createMethod("NoiseTexture", "get_seamless");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_seamless, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isNormalmap(self: *const Self) !bool {
        if (mbind_is_normalmap == null) {
            mbind_is_normalmap = try api.createMethod("NoiseTexture", "is_normalmap");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_normalmap, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setAsNormalmap(self: *const Self, arg_as_normalmap: bool) !void {
        if (mbind_set_as_normalmap == null) {
            mbind_set_as_normalmap = try api.createMethod("NoiseTexture", "set_as_normalmap");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_as_normalmap),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_as_normalmap, base, cargs, result);
    }

    pub fn setBumpStrength(self: *const Self, arg_bump_strength: f32) !void {
        if (mbind_set_bump_strength == null) {
            mbind_set_bump_strength = try api.createMethod("NoiseTexture", "set_bump_strength");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_bump_strength),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_bump_strength, base, cargs, result);
    }

    pub fn setHeight(self: *const Self, arg_height: i32) !void {
        if (mbind_set_height == null) {
            mbind_set_height = try api.createMethod("NoiseTexture", "set_height");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_height),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_height, base, cargs, result);
    }

    pub fn setNoise(self: *const Self, arg_noise: *const godot.OpenSimplexNoise) !void {
        if (mbind_set_noise == null) {
            mbind_set_noise = try api.createMethod("NoiseTexture", "set_noise");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_noise),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_noise, base, cargs, result);
    }

    pub fn setNoiseOffset(self: *const Self, arg_noise_offset: *const godot.Vector2) !void {
        if (mbind_set_noise_offset == null) {
            mbind_set_noise_offset = try api.createMethod("NoiseTexture", "set_noise_offset");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_noise_offset),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_noise_offset, base, cargs, result);
    }

    pub fn setSeamless(self: *const Self, arg_seamless: bool) !void {
        if (mbind_set_seamless == null) {
            mbind_set_seamless = try api.createMethod("NoiseTexture", "set_seamless");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_seamless),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_seamless, base, cargs, result);
    }

    pub fn setWidth(self: *const Self, arg_width: i32) !void {
        if (mbind_set_width == null) {
            mbind_set_width = try api.createMethod("NoiseTexture", "set_width");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_width),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_width, base, cargs, result);
    }
};