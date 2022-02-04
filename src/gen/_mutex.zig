// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Reference = @import("reference.zig").Reference;

// method bindings
var mbind_lock: ?*c_api.godot_method_bind = null;
var mbind_try_lock: ?*c_api.godot_method_bind = null;
var mbind_unlock: ?*c_api.godot_method_bind = null;
var mbind__mutex_constructor: ?fn () ?*c_api.godot_object = null;

pub const _Mutex = struct {
    const Self = @This();
    const BaseClass = Reference;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind__mutex_constructor == null) {
            mbind__mutex_constructor = try api.createConstructor("_Mutex");
        }
        return api.createObject(Self, mbind__mutex_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn lock(self: *const Self) !void {
        if (mbind_lock == null) {
            mbind_lock = try api.createMethod("_Mutex", "lock");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_lock, base, cargs, result);
    }

    pub fn tryLock(self: *const Self) !i32 {
        if (mbind_try_lock == null) {
            mbind_try_lock = try api.createMethod("_Mutex", "try_lock");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_try_lock, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn unlock(self: *const Self) !void {
        if (mbind_unlock == null) {
            mbind_unlock = try api.createMethod("_Mutex", "unlock");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_unlock, base, cargs, result);
    }
};