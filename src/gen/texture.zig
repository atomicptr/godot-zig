// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_draw: ?*c_api.godot_method_bind = null;
var mbind_draw_rect: ?*c_api.godot_method_bind = null;
var mbind_draw_rect_region: ?*c_api.godot_method_bind = null;
var mbind_get_data: ?*c_api.godot_method_bind = null;
var mbind_get_flags: ?*c_api.godot_method_bind = null;
var mbind_get_height: ?*c_api.godot_method_bind = null;
var mbind_get_size: ?*c_api.godot_method_bind = null;
var mbind_get_width: ?*c_api.godot_method_bind = null;
var mbind_has_alpha: ?*c_api.godot_method_bind = null;
var mbind_set_flags: ?*c_api.godot_method_bind = null;
var mbind_texture_constructor: ?fn () ?*c_api.godot_object = null;

pub const Texture = struct {
    const Self = @This();
    pub const BaseClass = godot.Resource;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_texture_constructor == null) {
            mbind_texture_constructor = try api.createConstructor("Texture");
        }
        return api.createObject(Self, mbind_texture_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn draw(self: *const Self, arg_canvas_item: *const godot.RID, arg_position: *const godot.Vector2, arg_modulate: *const godot.Color, arg_transpose: bool, arg_normal_map: *const godot.Texture) !void {
        if (mbind_draw == null) {
            mbind_draw = try api.createMethod("Texture", "draw");
        }

        var result: ?*anyopaque = null;
        var args: [5]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_canvas_item),
            @ptrCast(*const anyopaque, arg_position),
            @ptrCast(*const anyopaque, arg_modulate),
            @ptrCast(*const anyopaque, *arg_transpose),
            @ptrCast(*const anyopaque, arg_normal_map),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_draw, base, cargs, result);
    }

    pub fn drawRect(self: *const Self, arg_canvas_item: *const godot.RID, arg_rect: *const godot.Rect2, arg_tile: bool, arg_modulate: *const godot.Color, arg_transpose: bool, arg_normal_map: *const godot.Texture) !void {
        if (mbind_draw_rect == null) {
            mbind_draw_rect = try api.createMethod("Texture", "draw_rect");
        }

        var result: ?*anyopaque = null;
        var args: [6]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_canvas_item),
            @ptrCast(*const anyopaque, arg_rect),
            @ptrCast(*const anyopaque, *arg_tile),
            @ptrCast(*const anyopaque, arg_modulate),
            @ptrCast(*const anyopaque, *arg_transpose),
            @ptrCast(*const anyopaque, arg_normal_map),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_draw_rect, base, cargs, result);
    }

    pub fn drawRectRegion(self: *const Self, arg_canvas_item: *const godot.RID, arg_rect: *const godot.Rect2, arg_src_rect: *const godot.Rect2, arg_modulate: *const godot.Color, arg_transpose: bool, arg_normal_map: *const godot.Texture, arg_clip_uv: bool) !void {
        if (mbind_draw_rect_region == null) {
            mbind_draw_rect_region = try api.createMethod("Texture", "draw_rect_region");
        }

        var result: ?*anyopaque = null;
        var args: [7]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_canvas_item),
            @ptrCast(*const anyopaque, arg_rect),
            @ptrCast(*const anyopaque, arg_src_rect),
            @ptrCast(*const anyopaque, arg_modulate),
            @ptrCast(*const anyopaque, *arg_transpose),
            @ptrCast(*const anyopaque, arg_normal_map),
            @ptrCast(*const anyopaque, *arg_clip_uv),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_draw_rect_region, base, cargs, result);
    }

    pub fn getData(self: *const Self) !godot.Image {
        if (mbind_get_data == null) {
            mbind_get_data = try api.createMethod("Texture", "get_data");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_data, base, cargs, result);
        return @ptrCast(*godot.Image, @alignCast(@alignOf(&godot.Image), result)).*;
    }

    pub fn getFlags(self: *const Self) !i32 {
        if (mbind_get_flags == null) {
            mbind_get_flags = try api.createMethod("Texture", "get_flags");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_flags, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getHeight(self: *const Self) !i32 {
        if (mbind_get_height == null) {
            mbind_get_height = try api.createMethod("Texture", "get_height");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_height, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getSize(self: *const Self) !godot.Vector2 {
        if (mbind_get_size == null) {
            mbind_get_size = try api.createMethod("Texture", "get_size");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_size, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getWidth(self: *const Self) !i32 {
        if (mbind_get_width == null) {
            mbind_get_width = try api.createMethod("Texture", "get_width");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_width, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn hasAlpha(self: *const Self) !bool {
        if (mbind_has_alpha == null) {
            mbind_has_alpha = try api.createMethod("Texture", "has_alpha");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_has_alpha, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setFlags(self: *const Self, arg_flags: i32) !void {
        if (mbind_set_flags == null) {
            mbind_set_flags = try api.createMethod("Texture", "set_flags");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_flags),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_flags, base, cargs, result);
    }
};