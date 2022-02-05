// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const StyleBox = @import("style_box.zig").StyleBox;

// method bindings
var mbind_get_color: ?*c_api.godot_method_bind = null;
var mbind_get_grow_begin: ?*c_api.godot_method_bind = null;
var mbind_get_grow_end: ?*c_api.godot_method_bind = null;
var mbind_get_thickness: ?*c_api.godot_method_bind = null;
var mbind_is_vertical: ?*c_api.godot_method_bind = null;
var mbind_set_color: ?*c_api.godot_method_bind = null;
var mbind_set_grow_begin: ?*c_api.godot_method_bind = null;
var mbind_set_grow_end: ?*c_api.godot_method_bind = null;
var mbind_set_thickness: ?*c_api.godot_method_bind = null;
var mbind_set_vertical: ?*c_api.godot_method_bind = null;
var mbind_style_box_line_constructor: ?fn () ?*c_api.godot_object = null;

pub const StyleBoxLine = struct {
    const Self = @This();
    const BaseClass = StyleBox;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_style_box_line_constructor == null) {
            mbind_style_box_line_constructor = try api.createConstructor("StyleBoxLine");
        }
        return api.createObject(Self, mbind_style_box_line_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getColor(self: *const Self) !godot.Color {
        if (mbind_get_color == null) {
            mbind_get_color = try api.createMethod("StyleBoxLine", "get_color");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_color, base, cargs, result);
        return @ptrCast(*godot.Color, @alignCast(@alignOf(&godot.Color), result)).*;
    }

    pub fn getGrowBegin(self: *const Self) !f32 {
        if (mbind_get_grow_begin == null) {
            mbind_get_grow_begin = try api.createMethod("StyleBoxLine", "get_grow_begin");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_grow_begin, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getGrowEnd(self: *const Self) !f32 {
        if (mbind_get_grow_end == null) {
            mbind_get_grow_end = try api.createMethod("StyleBoxLine", "get_grow_end");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_grow_end, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getThickness(self: *const Self) !i32 {
        if (mbind_get_thickness == null) {
            mbind_get_thickness = try api.createMethod("StyleBoxLine", "get_thickness");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_thickness, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn isVertical(self: *const Self) !bool {
        if (mbind_is_vertical == null) {
            mbind_is_vertical = try api.createMethod("StyleBoxLine", "is_vertical");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_vertical, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setColor(self: *const Self, arg_color: *const godot.Color) !void {
        if (mbind_set_color == null) {
            mbind_set_color = try api.createMethod("StyleBoxLine", "set_color");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_color),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_color, base, cargs, result);
    }

    pub fn setGrowBegin(self: *const Self, arg_offset: f32) !void {
        if (mbind_set_grow_begin == null) {
            mbind_set_grow_begin = try api.createMethod("StyleBoxLine", "set_grow_begin");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_offset),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_grow_begin, base, cargs, result);
    }

    pub fn setGrowEnd(self: *const Self, arg_offset: f32) !void {
        if (mbind_set_grow_end == null) {
            mbind_set_grow_end = try api.createMethod("StyleBoxLine", "set_grow_end");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_offset),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_grow_end, base, cargs, result);
    }

    pub fn setThickness(self: *const Self, arg_thickness: i32) !void {
        if (mbind_set_thickness == null) {
            mbind_set_thickness = try api.createMethod("StyleBoxLine", "set_thickness");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_thickness),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_thickness, base, cargs, result);
    }

    pub fn setVertical(self: *const Self, arg_vertical: bool) !void {
        if (mbind_set_vertical == null) {
            mbind_set_vertical = try api.createMethod("StyleBoxLine", "set_vertical");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_vertical),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_vertical, base, cargs, result);
    }
};