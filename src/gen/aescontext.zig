// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Reference = @import("reference.zig").Reference;

// method bindings
var mbind_finish: ?*c_api.godot_method_bind = null;
var mbind_get_iv_state: ?*c_api.godot_method_bind = null;
var mbind_start: ?*c_api.godot_method_bind = null;
var mbind_update: ?*c_api.godot_method_bind = null;
var mbind_aescontext_constructor: ?fn () ?*c_api.godot_object = null;

pub const AESContext = struct {
    const Self = @This();
    const BaseClass = Reference;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_aescontext_constructor == null) {
            mbind_aescontext_constructor = try api.createConstructor("AESContext");
        }
        return api.createObject(Self, mbind_aescontext_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn finish(self: *const Self) !void {
        if (mbind_finish == null) {
            mbind_finish = try api.createMethod("AESContext", "finish");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_finish, base, cargs, result);
    }

    pub fn getIvState(self: *const Self) !godot.PoolByteArray {
        if (mbind_get_iv_state == null) {
            mbind_get_iv_state = try api.createMethod("AESContext", "get_iv_state");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_iv_state, base, cargs, result);
        return @ptrCast(*godot.PoolByteArray, @alignCast(@alignOf(&godot.PoolByteArray), result)).*;
    }

    pub fn start(self: *const Self, arg_mode: i32, arg_key: *const godot.PoolByteArray, arg_iv: *const godot.PoolByteArray) !i32 {
        if (mbind_start == null) {
            mbind_start = try api.createMethod("AESContext", "start");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
            @ptrCast(*const anyopaque, arg_key),
            @ptrCast(*const anyopaque, arg_iv),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_start, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn update(self: *const Self, arg_src: *const godot.PoolByteArray) !godot.PoolByteArray {
        if (mbind_update == null) {
            mbind_update = try api.createMethod("AESContext", "update");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_src),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_update, base, cargs, result);
        return @ptrCast(*godot.PoolByteArray, @alignCast(@alignOf(&godot.PoolByteArray), result)).*;
    }
};