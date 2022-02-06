// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_base64_to_raw: ?*c_api.godot_method_bind = null;
var mbind_base64_to_utf8: ?*c_api.godot_method_bind = null;
var mbind_base64_to_variant: ?*c_api.godot_method_bind = null;
var mbind_raw_to_base64: ?*c_api.godot_method_bind = null;
var mbind_utf8_to_base64: ?*c_api.godot_method_bind = null;
var mbind_variant_to_base64: ?*c_api.godot_method_bind = null;
var mbind__marshalls_constructor: ?fn () ?*c_api.godot_object = null;

pub const _Marshalls = struct {
    const Self = @This();
    pub const BaseClass = godot.Object;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind__marshalls_constructor == null) {
            mbind__marshalls_constructor = try api.createConstructor("_Marshalls");
        }
        return api.createObject(Self, mbind__marshalls_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn base64ToRaw(self: *const Self, arg_base64_str: *const godot.String) !godot.PoolByteArray {
        if (mbind_base64_to_raw == null) {
            mbind_base64_to_raw = try api.createMethod("_Marshalls", "base64_to_raw");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_base64_str),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_base64_to_raw, base, cargs, result);
        return @ptrCast(*godot.PoolByteArray, @alignCast(@alignOf(&godot.PoolByteArray), result)).*;
    }

    pub fn base64ToUtf8(self: *const Self, arg_base64_str: *const godot.String) !godot.String {
        if (mbind_base64_to_utf8 == null) {
            mbind_base64_to_utf8 = try api.createMethod("_Marshalls", "base64_to_utf8");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_base64_str),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_base64_to_utf8, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn base64ToVariant(self: *const Self, arg_base64_str: *const godot.String, arg_allow_objects: bool) !godot.Variant {
        if (mbind_base64_to_variant == null) {
            mbind_base64_to_variant = try api.createMethod("_Marshalls", "base64_to_variant");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_base64_str),
            @ptrCast(*const anyopaque, *arg_allow_objects),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_base64_to_variant, base, cargs, result);
        return @ptrCast(*godot.Variant, @alignCast(@alignOf(&godot.Variant), result)).*;
    }

    pub fn rawToBase64(self: *const Self, arg_array: *const godot.PoolByteArray) !godot.String {
        if (mbind_raw_to_base64 == null) {
            mbind_raw_to_base64 = try api.createMethod("_Marshalls", "raw_to_base64");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_array),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_raw_to_base64, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn utf8ToBase64(self: *const Self, arg_utf8_str: *const godot.String) !godot.String {
        if (mbind_utf8_to_base64 == null) {
            mbind_utf8_to_base64 = try api.createMethod("_Marshalls", "utf8_to_base64");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_utf8_str),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_utf8_to_base64, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn variantToBase64(self: *const Self, arg_variant: *const godot.Variant, arg_full_objects: bool) !godot.String {
        if (mbind_variant_to_base64 == null) {
            mbind_variant_to_base64 = try api.createMethod("_Marshalls", "variant_to_base64");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_variant),
            @ptrCast(*const anyopaque, *arg_full_objects),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_variant_to_base64, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }
};