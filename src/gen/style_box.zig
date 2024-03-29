// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_draw: ?*c_api.godot_method_bind = null;
var mbind_get_center_size: ?*c_api.godot_method_bind = null;
var mbind_get_current_item_drawn: ?*c_api.godot_method_bind = null;
var mbind_get_default_margin: ?*c_api.godot_method_bind = null;
var mbind_get_margin: ?*c_api.godot_method_bind = null;
var mbind_get_minimum_size: ?*c_api.godot_method_bind = null;
var mbind_get_offset: ?*c_api.godot_method_bind = null;
var mbind_set_default_margin: ?*c_api.godot_method_bind = null;
var mbind_test_mask: ?*c_api.godot_method_bind = null;
var mbind_style_box_constructor: ?fn () ?*c_api.godot_object = null;

pub const StyleBox = struct {
    const Self = @This();
    pub const BaseClass = godot.Resource;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_style_box_constructor == null) {
            mbind_style_box_constructor = try api.createConstructor("StyleBox");
        }
        return api.createObject(Self, mbind_style_box_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn draw(self: *const Self, arg_canvas_item: *const godot.RID, arg_rect: *const godot.Rect2) !void {
        if (mbind_draw == null) {
            mbind_draw = try api.createMethod("StyleBox", "draw");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_canvas_item),
            @ptrCast(*const anyopaque, arg_rect),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_draw, base, cargs, result);
    }

    pub fn getCenterSize(self: *const Self) !godot.Vector2 {
        if (mbind_get_center_size == null) {
            mbind_get_center_size = try api.createMethod("StyleBox", "get_center_size");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_center_size, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getCurrentItemDrawn(self: *const Self) !godot.CanvasItem {
        if (mbind_get_current_item_drawn == null) {
            mbind_get_current_item_drawn = try api.createMethod("StyleBox", "get_current_item_drawn");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_current_item_drawn, base, cargs, result);
        return @ptrCast(*godot.CanvasItem, @alignCast(@alignOf(&godot.CanvasItem), result)).*;
    }

    pub fn getDefaultMargin(self: *const Self, arg_margin: i32) !f32 {
        if (mbind_get_default_margin == null) {
            mbind_get_default_margin = try api.createMethod("StyleBox", "get_default_margin");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_margin),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_default_margin, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getMargin(self: *const Self, arg_margin: i32) !f32 {
        if (mbind_get_margin == null) {
            mbind_get_margin = try api.createMethod("StyleBox", "get_margin");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_margin),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_margin, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getMinimumSize(self: *const Self) !godot.Vector2 {
        if (mbind_get_minimum_size == null) {
            mbind_get_minimum_size = try api.createMethod("StyleBox", "get_minimum_size");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_minimum_size, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getOffset(self: *const Self) !godot.Vector2 {
        if (mbind_get_offset == null) {
            mbind_get_offset = try api.createMethod("StyleBox", "get_offset");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_offset, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn setDefaultMargin(self: *const Self, arg_margin: i32, arg_offset: f32) !void {
        if (mbind_set_default_margin == null) {
            mbind_set_default_margin = try api.createMethod("StyleBox", "set_default_margin");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_margin),
            @ptrCast(*const anyopaque, *arg_offset),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_default_margin, base, cargs, result);
    }

    pub fn testMask(self: *const Self, arg_point: *const godot.Vector2, arg_rect: *const godot.Rect2) !bool {
        if (mbind_test_mask == null) {
            mbind_test_mask = try api.createMethod("StyleBox", "test_mask");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_point),
            @ptrCast(*const anyopaque, arg_rect),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_test_mask, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }
};