// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Resource = @import("resource.zig").Resource;

// method bindings
var mbind_draw: ?*c_api.godot_method_bind = null;
var mbind_draw_char: ?*c_api.godot_method_bind = null;
var mbind_get_ascent: ?*c_api.godot_method_bind = null;
var mbind_get_char_size: ?*c_api.godot_method_bind = null;
var mbind_get_descent: ?*c_api.godot_method_bind = null;
var mbind_get_height: ?*c_api.godot_method_bind = null;
var mbind_get_string_size: ?*c_api.godot_method_bind = null;
var mbind_get_wordwrap_string_size: ?*c_api.godot_method_bind = null;
var mbind_has_outline: ?*c_api.godot_method_bind = null;
var mbind_is_distance_field_hint: ?*c_api.godot_method_bind = null;
var mbind_update_changes: ?*c_api.godot_method_bind = null;
var mbind_font_constructor: ?fn () ?*c_api.godot_object = null;

pub const Font = struct {
    const Self = @This();
    const BaseClass = Resource;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_font_constructor == null) {
            mbind_font_constructor = try api.createConstructor("Font");
        }
        return api.createObject(Self, mbind_font_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn draw(self: *const Self, arg_canvas_item: *const godot.RID, arg_position: *const godot.Vector2, arg_string: *const godot.String, arg_modulate: *const godot.Color, arg_clip_w: i32, arg_outline_modulate: *const godot.Color) !void {
        if (mbind_draw == null) {
            mbind_draw = try api.createMethod("Font", "draw");
        }

        var result: ?*anyopaque = null;
        var args: [6]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_canvas_item),
            @ptrCast(*const anyopaque, arg_position),
            @ptrCast(*const anyopaque, arg_string),
            @ptrCast(*const anyopaque, arg_modulate),
            @ptrCast(*const anyopaque, *arg_clip_w),
            @ptrCast(*const anyopaque, arg_outline_modulate),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_draw, base, cargs, result);
    }

    pub fn drawChar(self: *const Self, arg_canvas_item: *const godot.RID, arg_position: *const godot.Vector2, arg_char: i32, arg_next: i32, arg_modulate: *const godot.Color, arg_outline: bool) !f32 {
        if (mbind_draw_char == null) {
            mbind_draw_char = try api.createMethod("Font", "draw_char");
        }

        var result: ?*anyopaque = null;
        var args: [6]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_canvas_item),
            @ptrCast(*const anyopaque, arg_position),
            @ptrCast(*const anyopaque, *arg_char),
            @ptrCast(*const anyopaque, *arg_next),
            @ptrCast(*const anyopaque, arg_modulate),
            @ptrCast(*const anyopaque, *arg_outline),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_draw_char, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getAscent(self: *const Self) !f32 {
        if (mbind_get_ascent == null) {
            mbind_get_ascent = try api.createMethod("Font", "get_ascent");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_ascent, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getCharSize(self: *const Self, arg_char: i32, arg_next: i32) !godot.Vector2 {
        if (mbind_get_char_size == null) {
            mbind_get_char_size = try api.createMethod("Font", "get_char_size");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_char),
            @ptrCast(*const anyopaque, *arg_next),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_char_size, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getDescent(self: *const Self) !f32 {
        if (mbind_get_descent == null) {
            mbind_get_descent = try api.createMethod("Font", "get_descent");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_descent, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getHeight(self: *const Self) !f32 {
        if (mbind_get_height == null) {
            mbind_get_height = try api.createMethod("Font", "get_height");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_height, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getStringSize(self: *const Self, arg_string: *const godot.String) !godot.Vector2 {
        if (mbind_get_string_size == null) {
            mbind_get_string_size = try api.createMethod("Font", "get_string_size");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_string),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_string_size, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getWordwrapStringSize(self: *const Self, arg_string: *const godot.String, arg_width: f32) !godot.Vector2 {
        if (mbind_get_wordwrap_string_size == null) {
            mbind_get_wordwrap_string_size = try api.createMethod("Font", "get_wordwrap_string_size");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_string),
            @ptrCast(*const anyopaque, *arg_width),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_wordwrap_string_size, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn hasOutline(self: *const Self) !bool {
        if (mbind_has_outline == null) {
            mbind_has_outline = try api.createMethod("Font", "has_outline");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_has_outline, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isDistanceFieldHint(self: *const Self) !bool {
        if (mbind_is_distance_field_hint == null) {
            mbind_is_distance_field_hint = try api.createMethod("Font", "is_distance_field_hint");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_distance_field_hint, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn updateChanges(self: *const Self) !void {
        if (mbind_update_changes == null) {
            mbind_update_changes = try api.createMethod("Font", "update_changes");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_update_changes, base, cargs, result);
    }
};