// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_align: ?*c_api.godot_method_bind = null;
var mbind_get_line_count: ?*c_api.godot_method_bind = null;
var mbind_get_line_height: ?*c_api.godot_method_bind = null;
var mbind_get_lines_skipped: ?*c_api.godot_method_bind = null;
var mbind_get_max_lines_visible: ?*c_api.godot_method_bind = null;
var mbind_get_percent_visible: ?*c_api.godot_method_bind = null;
var mbind_get_text: ?*c_api.godot_method_bind = null;
var mbind_get_total_character_count: ?*c_api.godot_method_bind = null;
var mbind_get_valign: ?*c_api.godot_method_bind = null;
var mbind_get_visible_characters: ?*c_api.godot_method_bind = null;
var mbind_get_visible_line_count: ?*c_api.godot_method_bind = null;
var mbind_has_autowrap: ?*c_api.godot_method_bind = null;
var mbind_is_clipping_text: ?*c_api.godot_method_bind = null;
var mbind_is_uppercase: ?*c_api.godot_method_bind = null;
var mbind_set_align: ?*c_api.godot_method_bind = null;
var mbind_set_autowrap: ?*c_api.godot_method_bind = null;
var mbind_set_clip_text: ?*c_api.godot_method_bind = null;
var mbind_set_lines_skipped: ?*c_api.godot_method_bind = null;
var mbind_set_max_lines_visible: ?*c_api.godot_method_bind = null;
var mbind_set_percent_visible: ?*c_api.godot_method_bind = null;
var mbind_set_text: ?*c_api.godot_method_bind = null;
var mbind_set_uppercase: ?*c_api.godot_method_bind = null;
var mbind_set_valign: ?*c_api.godot_method_bind = null;
var mbind_set_visible_characters: ?*c_api.godot_method_bind = null;
var mbind_label_constructor: ?fn () ?*c_api.godot_object = null;

pub const Label = struct {
    const Self = @This();
    pub const BaseClass = godot.Control;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_label_constructor == null) {
            mbind_label_constructor = try api.createConstructor("Label");
        }
        return api.createObject(Self, mbind_label_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getAlign(self: *const Self) !i32 {
        if (mbind_get_align == null) {
            mbind_get_align = try api.createMethod("Label", "get_align");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_align, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getLineCount(self: *const Self) !i32 {
        if (mbind_get_line_count == null) {
            mbind_get_line_count = try api.createMethod("Label", "get_line_count");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_line_count, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getLineHeight(self: *const Self) !i32 {
        if (mbind_get_line_height == null) {
            mbind_get_line_height = try api.createMethod("Label", "get_line_height");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_line_height, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getLinesSkipped(self: *const Self) !i32 {
        if (mbind_get_lines_skipped == null) {
            mbind_get_lines_skipped = try api.createMethod("Label", "get_lines_skipped");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_lines_skipped, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getMaxLinesVisible(self: *const Self) !i32 {
        if (mbind_get_max_lines_visible == null) {
            mbind_get_max_lines_visible = try api.createMethod("Label", "get_max_lines_visible");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_max_lines_visible, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getPercentVisible(self: *const Self) !f32 {
        if (mbind_get_percent_visible == null) {
            mbind_get_percent_visible = try api.createMethod("Label", "get_percent_visible");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_percent_visible, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getText(self: *const Self) !godot.String {
        if (mbind_get_text == null) {
            mbind_get_text = try api.createMethod("Label", "get_text");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_text, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getTotalCharacterCount(self: *const Self) !i32 {
        if (mbind_get_total_character_count == null) {
            mbind_get_total_character_count = try api.createMethod("Label", "get_total_character_count");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_total_character_count, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getValign(self: *const Self) !i32 {
        if (mbind_get_valign == null) {
            mbind_get_valign = try api.createMethod("Label", "get_valign");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_valign, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getVisibleCharacters(self: *const Self) !i32 {
        if (mbind_get_visible_characters == null) {
            mbind_get_visible_characters = try api.createMethod("Label", "get_visible_characters");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_visible_characters, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getVisibleLineCount(self: *const Self) !i32 {
        if (mbind_get_visible_line_count == null) {
            mbind_get_visible_line_count = try api.createMethod("Label", "get_visible_line_count");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_visible_line_count, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn hasAutowrap(self: *const Self) !bool {
        if (mbind_has_autowrap == null) {
            mbind_has_autowrap = try api.createMethod("Label", "has_autowrap");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_has_autowrap, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isClippingText(self: *const Self) !bool {
        if (mbind_is_clipping_text == null) {
            mbind_is_clipping_text = try api.createMethod("Label", "is_clipping_text");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_clipping_text, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isUppercase(self: *const Self) !bool {
        if (mbind_is_uppercase == null) {
            mbind_is_uppercase = try api.createMethod("Label", "is_uppercase");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_uppercase, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setAlign(self: *const Self, arg_align: i32) !void {
        if (mbind_set_align == null) {
            mbind_set_align = try api.createMethod("Label", "set_align");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_align),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_align, base, cargs, result);
    }

    pub fn setAutowrap(self: *const Self, arg_enable: bool) !void {
        if (mbind_set_autowrap == null) {
            mbind_set_autowrap = try api.createMethod("Label", "set_autowrap");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_autowrap, base, cargs, result);
    }

    pub fn setClipText(self: *const Self, arg_enable: bool) !void {
        if (mbind_set_clip_text == null) {
            mbind_set_clip_text = try api.createMethod("Label", "set_clip_text");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_clip_text, base, cargs, result);
    }

    pub fn setLinesSkipped(self: *const Self, arg_lines_skipped: i32) !void {
        if (mbind_set_lines_skipped == null) {
            mbind_set_lines_skipped = try api.createMethod("Label", "set_lines_skipped");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_lines_skipped),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_lines_skipped, base, cargs, result);
    }

    pub fn setMaxLinesVisible(self: *const Self, arg_lines_visible: i32) !void {
        if (mbind_set_max_lines_visible == null) {
            mbind_set_max_lines_visible = try api.createMethod("Label", "set_max_lines_visible");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_lines_visible),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_max_lines_visible, base, cargs, result);
    }

    pub fn setPercentVisible(self: *const Self, arg_percent_visible: f32) !void {
        if (mbind_set_percent_visible == null) {
            mbind_set_percent_visible = try api.createMethod("Label", "set_percent_visible");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_percent_visible),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_percent_visible, base, cargs, result);
    }

    pub fn setText(self: *const Self, arg_text: *const godot.String) !void {
        if (mbind_set_text == null) {
            mbind_set_text = try api.createMethod("Label", "set_text");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_text),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_text, base, cargs, result);
    }

    pub fn setUppercase(self: *const Self, arg_enable: bool) !void {
        if (mbind_set_uppercase == null) {
            mbind_set_uppercase = try api.createMethod("Label", "set_uppercase");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_uppercase, base, cargs, result);
    }

    pub fn setValign(self: *const Self, arg_valign: i32) !void {
        if (mbind_set_valign == null) {
            mbind_set_valign = try api.createMethod("Label", "set_valign");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_valign),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_valign, base, cargs, result);
    }

    pub fn setVisibleCharacters(self: *const Self, arg_amount: i32) !void {
        if (mbind_set_visible_characters == null) {
            mbind_set_visible_characters = try api.createMethod("Label", "set_visible_characters");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_amount),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_visible_characters, base, cargs, result);
    }
};