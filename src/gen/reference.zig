// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_init_ref: ?*c_api.godot_method_bind = null;
var mbind_reference: ?*c_api.godot_method_bind = null;
var mbind_unreference: ?*c_api.godot_method_bind = null;
var mbind_reference_constructor: ?fn () ?*c_api.godot_object = null;

pub const Reference = struct {
    const Self = @This();
    pub const BaseClass = godot.Object;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_reference_constructor == null) {
            mbind_reference_constructor = try api.createConstructor("Reference");
        }
        return api.createObject(Self, mbind_reference_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn initRef(self: *const Self) !bool {
        if (mbind_init_ref == null) {
            mbind_init_ref = try api.createMethod("Reference", "init_ref");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_init_ref, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn reference(self: *const Self) !bool {
        if (mbind_reference == null) {
            mbind_reference = try api.createMethod("Reference", "reference");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_reference, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn unreference(self: *const Self) !bool {
        if (mbind_unreference == null) {
            mbind_unreference = try api.createMethod("Reference", "unreference");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_unreference, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }
};