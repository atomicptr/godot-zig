// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_image: ?*c_api.godot_method_bind = null;
var mbind_get_lacunarity: ?*c_api.godot_method_bind = null;
var mbind_get_noise_1d: ?*c_api.godot_method_bind = null;
var mbind_get_noise_2d: ?*c_api.godot_method_bind = null;
var mbind_get_noise_2dv: ?*c_api.godot_method_bind = null;
var mbind_get_noise_3d: ?*c_api.godot_method_bind = null;
var mbind_get_noise_3dv: ?*c_api.godot_method_bind = null;
var mbind_get_noise_4d: ?*c_api.godot_method_bind = null;
var mbind_get_octaves: ?*c_api.godot_method_bind = null;
var mbind_get_period: ?*c_api.godot_method_bind = null;
var mbind_get_persistence: ?*c_api.godot_method_bind = null;
var mbind_get_seamless_image: ?*c_api.godot_method_bind = null;
var mbind_get_seed: ?*c_api.godot_method_bind = null;
var mbind_set_lacunarity: ?*c_api.godot_method_bind = null;
var mbind_set_octaves: ?*c_api.godot_method_bind = null;
var mbind_set_period: ?*c_api.godot_method_bind = null;
var mbind_set_persistence: ?*c_api.godot_method_bind = null;
var mbind_set_seed: ?*c_api.godot_method_bind = null;
var mbind_open_simplex_noise_constructor: ?fn () ?*c_api.godot_object = null;

pub const OpenSimplexNoise = struct {
    const Self = @This();
    pub const BaseClass = godot.Resource;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_open_simplex_noise_constructor == null) {
            mbind_open_simplex_noise_constructor = try api.createConstructor("OpenSimplexNoise");
        }
        return api.createObject(Self, mbind_open_simplex_noise_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getImage(self: *const Self, arg_width: i32, arg_height: i32, arg_noise_offset: *const godot.Vector2) !godot.Image {
        if (mbind_get_image == null) {
            mbind_get_image = try api.createMethod("OpenSimplexNoise", "get_image");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_width),
            @ptrCast(*const anyopaque, *arg_height),
            @ptrCast(*const anyopaque, arg_noise_offset),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_image, base, cargs, result);
        return @ptrCast(*godot.Image, @alignCast(@alignOf(&godot.Image), result)).*;
    }

    pub fn getLacunarity(self: *const Self) !f32 {
        if (mbind_get_lacunarity == null) {
            mbind_get_lacunarity = try api.createMethod("OpenSimplexNoise", "get_lacunarity");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_lacunarity, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getNoise1d(self: *const Self, arg_x: f32) !f32 {
        if (mbind_get_noise_1d == null) {
            mbind_get_noise_1d = try api.createMethod("OpenSimplexNoise", "get_noise_1d");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_x),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_noise_1d, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getNoise2d(self: *const Self, arg_x: f32, arg_y: f32) !f32 {
        if (mbind_get_noise_2d == null) {
            mbind_get_noise_2d = try api.createMethod("OpenSimplexNoise", "get_noise_2d");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_x),
            @ptrCast(*const anyopaque, *arg_y),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_noise_2d, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getNoise2dv(self: *const Self, arg_pos: *const godot.Vector2) !f32 {
        if (mbind_get_noise_2dv == null) {
            mbind_get_noise_2dv = try api.createMethod("OpenSimplexNoise", "get_noise_2dv");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_pos),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_noise_2dv, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getNoise3d(self: *const Self, arg_x: f32, arg_y: f32, arg_z: f32) !f32 {
        if (mbind_get_noise_3d == null) {
            mbind_get_noise_3d = try api.createMethod("OpenSimplexNoise", "get_noise_3d");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_x),
            @ptrCast(*const anyopaque, *arg_y),
            @ptrCast(*const anyopaque, *arg_z),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_noise_3d, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getNoise3dv(self: *const Self, arg_pos: *const godot.Vector3) !f32 {
        if (mbind_get_noise_3dv == null) {
            mbind_get_noise_3dv = try api.createMethod("OpenSimplexNoise", "get_noise_3dv");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_pos),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_noise_3dv, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getNoise4d(self: *const Self, arg_x: f32, arg_y: f32, arg_z: f32, arg_w: f32) !f32 {
        if (mbind_get_noise_4d == null) {
            mbind_get_noise_4d = try api.createMethod("OpenSimplexNoise", "get_noise_4d");
        }

        var result: ?*anyopaque = null;
        var args: [4]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_x),
            @ptrCast(*const anyopaque, *arg_y),
            @ptrCast(*const anyopaque, *arg_z),
            @ptrCast(*const anyopaque, *arg_w),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_noise_4d, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getOctaves(self: *const Self) !i32 {
        if (mbind_get_octaves == null) {
            mbind_get_octaves = try api.createMethod("OpenSimplexNoise", "get_octaves");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_octaves, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getPeriod(self: *const Self) !f32 {
        if (mbind_get_period == null) {
            mbind_get_period = try api.createMethod("OpenSimplexNoise", "get_period");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_period, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getPersistence(self: *const Self) !f32 {
        if (mbind_get_persistence == null) {
            mbind_get_persistence = try api.createMethod("OpenSimplexNoise", "get_persistence");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_persistence, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getSeamlessImage(self: *const Self, arg_size: i32) !godot.Image {
        if (mbind_get_seamless_image == null) {
            mbind_get_seamless_image = try api.createMethod("OpenSimplexNoise", "get_seamless_image");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_size),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_seamless_image, base, cargs, result);
        return @ptrCast(*godot.Image, @alignCast(@alignOf(&godot.Image), result)).*;
    }

    pub fn getSeed(self: *const Self) !i32 {
        if (mbind_get_seed == null) {
            mbind_get_seed = try api.createMethod("OpenSimplexNoise", "get_seed");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_seed, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn setLacunarity(self: *const Self, arg_lacunarity: f32) !void {
        if (mbind_set_lacunarity == null) {
            mbind_set_lacunarity = try api.createMethod("OpenSimplexNoise", "set_lacunarity");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_lacunarity),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_lacunarity, base, cargs, result);
    }

    pub fn setOctaves(self: *const Self, arg_octave_count: i32) !void {
        if (mbind_set_octaves == null) {
            mbind_set_octaves = try api.createMethod("OpenSimplexNoise", "set_octaves");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_octave_count),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_octaves, base, cargs, result);
    }

    pub fn setPeriod(self: *const Self, arg_period: f32) !void {
        if (mbind_set_period == null) {
            mbind_set_period = try api.createMethod("OpenSimplexNoise", "set_period");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_period),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_period, base, cargs, result);
    }

    pub fn setPersistence(self: *const Self, arg_persistence: f32) !void {
        if (mbind_set_persistence == null) {
            mbind_set_persistence = try api.createMethod("OpenSimplexNoise", "set_persistence");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_persistence),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_persistence, base, cargs, result);
    }

    pub fn setSeed(self: *const Self, arg_seed: i32) !void {
        if (mbind_set_seed == null) {
            mbind_set_seed = try api.createMethod("OpenSimplexNoise", "set_seed");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_seed),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_seed, base, cargs, result);
    }
};