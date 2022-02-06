// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_font_path: ?*c_api.godot_method_bind = null;
var mbind_get_hinting: ?*c_api.godot_method_bind = null;
var mbind_is_antialiased: ?*c_api.godot_method_bind = null;
var mbind_set_antialiased: ?*c_api.godot_method_bind = null;
var mbind_set_font_path: ?*c_api.godot_method_bind = null;
var mbind_set_hinting: ?*c_api.godot_method_bind = null;
var mbind_dynamic_font_data_constructor: ?fn () ?*c_api.godot_object = null;

pub const DynamicFontData = struct {
    const Self = @This();
    pub const BaseClass = godot.Resource;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_dynamic_font_data_constructor == null) {
            mbind_dynamic_font_data_constructor = try api.createConstructor("DynamicFontData");
        }
        return api.createObject(Self, mbind_dynamic_font_data_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getFontPath(self: *const Self) !godot.String {
        if (mbind_get_font_path == null) {
            mbind_get_font_path = try api.createMethod("DynamicFontData", "get_font_path");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_font_path, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getHinting(self: *const Self) !i32 {
        if (mbind_get_hinting == null) {
            mbind_get_hinting = try api.createMethod("DynamicFontData", "get_hinting");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_hinting, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn isAntialiased(self: *const Self) !bool {
        if (mbind_is_antialiased == null) {
            mbind_is_antialiased = try api.createMethod("DynamicFontData", "is_antialiased");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_antialiased, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setAntialiased(self: *const Self, arg_antialiased: bool) !void {
        if (mbind_set_antialiased == null) {
            mbind_set_antialiased = try api.createMethod("DynamicFontData", "set_antialiased");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_antialiased),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_antialiased, base, cargs, result);
    }

    pub fn setFontPath(self: *const Self, arg_path: *const godot.String) !void {
        if (mbind_set_font_path == null) {
            mbind_set_font_path = try api.createMethod("DynamicFontData", "set_font_path");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_path),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_font_path, base, cargs, result);
    }

    pub fn setHinting(self: *const Self, arg_mode: i32) !void {
        if (mbind_set_hinting == null) {
            mbind_set_hinting = try api.createMethod("DynamicFontData", "set_hinting");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_hinting, base, cargs, result);
    }
};