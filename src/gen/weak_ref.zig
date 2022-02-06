// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_ref: ?*c_api.godot_method_bind = null;
var mbind_weak_ref_constructor: ?fn () ?*c_api.godot_object = null;

pub const WeakRef = struct {
    const Self = @This();
    pub const BaseClass = godot.Reference;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_weak_ref_constructor == null) {
            mbind_weak_ref_constructor = try api.createConstructor("WeakRef");
        }
        return api.createObject(Self, mbind_weak_ref_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getRef(self: *const Self) !godot.Variant {
        if (mbind_get_ref == null) {
            mbind_get_ref = try api.createMethod("WeakRef", "get_ref");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_ref, base, cargs, result);
        return @ptrCast(*godot.Variant, @alignCast(@alignOf(&godot.Variant), result)).*;
    }
};