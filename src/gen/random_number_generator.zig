// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_seed: ?*c_api.godot_method_bind = null;
var mbind_get_state: ?*c_api.godot_method_bind = null;
var mbind_randf: ?*c_api.godot_method_bind = null;
var mbind_randf_range: ?*c_api.godot_method_bind = null;
var mbind_randfn: ?*c_api.godot_method_bind = null;
var mbind_randi: ?*c_api.godot_method_bind = null;
var mbind_randi_range: ?*c_api.godot_method_bind = null;
var mbind_randomize: ?*c_api.godot_method_bind = null;
var mbind_set_seed: ?*c_api.godot_method_bind = null;
var mbind_set_state: ?*c_api.godot_method_bind = null;
var mbind_random_number_generator_constructor: ?fn () ?*c_api.godot_object = null;

pub const RandomNumberGenerator = struct {
    const Self = @This();
    pub const BaseClass = godot.Reference;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_random_number_generator_constructor == null) {
            mbind_random_number_generator_constructor = try api.createConstructor("RandomNumberGenerator");
        }
        return api.createObject(Self, mbind_random_number_generator_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getSeed(self: *const Self) !i32 {
        if (mbind_get_seed == null) {
            mbind_get_seed = try api.createMethod("RandomNumberGenerator", "get_seed");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_seed, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getState(self: *const Self) !i32 {
        if (mbind_get_state == null) {
            mbind_get_state = try api.createMethod("RandomNumberGenerator", "get_state");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_state, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn randf(self: *const Self) !f32 {
        if (mbind_randf == null) {
            mbind_randf = try api.createMethod("RandomNumberGenerator", "randf");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_randf, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn randfRange(self: *const Self, arg_from: f32, arg_to: f32) !f32 {
        if (mbind_randf_range == null) {
            mbind_randf_range = try api.createMethod("RandomNumberGenerator", "randf_range");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_from),
            @ptrCast(*const anyopaque, *arg_to),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_randf_range, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn randfn(self: *const Self, arg_mean: f32, arg_deviation: f32) !f32 {
        if (mbind_randfn == null) {
            mbind_randfn = try api.createMethod("RandomNumberGenerator", "randfn");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mean),
            @ptrCast(*const anyopaque, *arg_deviation),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_randfn, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn randi(self: *const Self) !i32 {
        if (mbind_randi == null) {
            mbind_randi = try api.createMethod("RandomNumberGenerator", "randi");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_randi, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn randiRange(self: *const Self, arg_from: i32, arg_to: i32) !i32 {
        if (mbind_randi_range == null) {
            mbind_randi_range = try api.createMethod("RandomNumberGenerator", "randi_range");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_from),
            @ptrCast(*const anyopaque, *arg_to),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_randi_range, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn randomize(self: *const Self) !void {
        if (mbind_randomize == null) {
            mbind_randomize = try api.createMethod("RandomNumberGenerator", "randomize");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_randomize, base, cargs, result);
    }

    pub fn setSeed(self: *const Self, arg_seed: i32) !void {
        if (mbind_set_seed == null) {
            mbind_set_seed = try api.createMethod("RandomNumberGenerator", "set_seed");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_seed),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_seed, base, cargs, result);
    }

    pub fn setState(self: *const Self, arg_state: i32) !void {
        if (mbind_set_state == null) {
            mbind_set_state = try api.createMethod("RandomNumberGenerator", "set_state");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_state),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_state, base, cargs, result);
    }
};