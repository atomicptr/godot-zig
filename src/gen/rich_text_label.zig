// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_add_image: ?*c_api.godot_method_bind = null;
var mbind_add_text: ?*c_api.godot_method_bind = null;
var mbind_append_bbcode: ?*c_api.godot_method_bind = null;
var mbind_clear: ?*c_api.godot_method_bind = null;
var mbind_get_bbcode: ?*c_api.godot_method_bind = null;
var mbind_get_content_height: ?*c_api.godot_method_bind = null;
var mbind_get_effects: ?*c_api.godot_method_bind = null;
var mbind_get_line_count: ?*c_api.godot_method_bind = null;
var mbind_get_percent_visible: ?*c_api.godot_method_bind = null;
var mbind_get_tab_size: ?*c_api.godot_method_bind = null;
var mbind_get_text: ?*c_api.godot_method_bind = null;
var mbind_get_total_character_count: ?*c_api.godot_method_bind = null;
var mbind_get_v_scroll: ?*c_api.godot_method_bind = null;
var mbind_get_visible_characters: ?*c_api.godot_method_bind = null;
var mbind_get_visible_line_count: ?*c_api.godot_method_bind = null;
var mbind_install_effect: ?*c_api.godot_method_bind = null;
var mbind_is_fit_content_height_enabled: ?*c_api.godot_method_bind = null;
var mbind_is_meta_underlined: ?*c_api.godot_method_bind = null;
var mbind_is_overriding_selected_font_color: ?*c_api.godot_method_bind = null;
var mbind_is_scroll_active: ?*c_api.godot_method_bind = null;
var mbind_is_scroll_following: ?*c_api.godot_method_bind = null;
var mbind_is_selection_enabled: ?*c_api.godot_method_bind = null;
var mbind_is_using_bbcode: ?*c_api.godot_method_bind = null;
var mbind_newline: ?*c_api.godot_method_bind = null;
var mbind_parse_bbcode: ?*c_api.godot_method_bind = null;
var mbind_parse_expressions_for_values: ?*c_api.godot_method_bind = null;
var mbind_pop: ?*c_api.godot_method_bind = null;
var mbind_push_align: ?*c_api.godot_method_bind = null;
var mbind_push_bold: ?*c_api.godot_method_bind = null;
var mbind_push_bold_italics: ?*c_api.godot_method_bind = null;
var mbind_push_cell: ?*c_api.godot_method_bind = null;
var mbind_push_color: ?*c_api.godot_method_bind = null;
var mbind_push_font: ?*c_api.godot_method_bind = null;
var mbind_push_indent: ?*c_api.godot_method_bind = null;
var mbind_push_italics: ?*c_api.godot_method_bind = null;
var mbind_push_list: ?*c_api.godot_method_bind = null;
var mbind_push_meta: ?*c_api.godot_method_bind = null;
var mbind_push_mono: ?*c_api.godot_method_bind = null;
var mbind_push_normal: ?*c_api.godot_method_bind = null;
var mbind_push_strikethrough: ?*c_api.godot_method_bind = null;
var mbind_push_table: ?*c_api.godot_method_bind = null;
var mbind_push_underline: ?*c_api.godot_method_bind = null;
var mbind_remove_line: ?*c_api.godot_method_bind = null;
var mbind_scroll_to_line: ?*c_api.godot_method_bind = null;
var mbind_set_bbcode: ?*c_api.godot_method_bind = null;
var mbind_set_effects: ?*c_api.godot_method_bind = null;
var mbind_set_fit_content_height: ?*c_api.godot_method_bind = null;
var mbind_set_meta_underline: ?*c_api.godot_method_bind = null;
var mbind_set_override_selected_font_color: ?*c_api.godot_method_bind = null;
var mbind_set_percent_visible: ?*c_api.godot_method_bind = null;
var mbind_set_scroll_active: ?*c_api.godot_method_bind = null;
var mbind_set_scroll_follow: ?*c_api.godot_method_bind = null;
var mbind_set_selection_enabled: ?*c_api.godot_method_bind = null;
var mbind_set_tab_size: ?*c_api.godot_method_bind = null;
var mbind_set_table_column_expand: ?*c_api.godot_method_bind = null;
var mbind_set_text: ?*c_api.godot_method_bind = null;
var mbind_set_use_bbcode: ?*c_api.godot_method_bind = null;
var mbind_set_visible_characters: ?*c_api.godot_method_bind = null;
var mbind_rich_text_label_constructor: ?fn () ?*c_api.godot_object = null;

pub const RichTextLabel = struct {
    const Self = @This();
    pub const BaseClass = godot.Control;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_rich_text_label_constructor == null) {
            mbind_rich_text_label_constructor = try api.createConstructor("RichTextLabel");
        }
        return api.createObject(Self, mbind_rich_text_label_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn addImage(self: *const Self, arg_image: *const godot.Texture, arg_width: i32, arg_height: i32) !void {
        if (mbind_add_image == null) {
            mbind_add_image = try api.createMethod("RichTextLabel", "add_image");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_image),
            @ptrCast(*const anyopaque, *arg_width),
            @ptrCast(*const anyopaque, *arg_height),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_image, base, cargs, result);
    }

    pub fn addText(self: *const Self, arg_text: *const godot.String) !void {
        if (mbind_add_text == null) {
            mbind_add_text = try api.createMethod("RichTextLabel", "add_text");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_text),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_text, base, cargs, result);
    }

    pub fn appendBbcode(self: *const Self, arg_bbcode: *const godot.String) !i32 {
        if (mbind_append_bbcode == null) {
            mbind_append_bbcode = try api.createMethod("RichTextLabel", "append_bbcode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_bbcode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_append_bbcode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn clear(self: *const Self) !void {
        if (mbind_clear == null) {
            mbind_clear = try api.createMethod("RichTextLabel", "clear");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_clear, base, cargs, result);
    }

    pub fn getBbcode(self: *const Self) !godot.String {
        if (mbind_get_bbcode == null) {
            mbind_get_bbcode = try api.createMethod("RichTextLabel", "get_bbcode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_bbcode, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getContentHeight(self: *const Self) !i32 {
        if (mbind_get_content_height == null) {
            mbind_get_content_height = try api.createMethod("RichTextLabel", "get_content_height");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_content_height, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getEffects(self: *const Self) !godot.Array {
        if (mbind_get_effects == null) {
            mbind_get_effects = try api.createMethod("RichTextLabel", "get_effects");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_effects, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getLineCount(self: *const Self) !i32 {
        if (mbind_get_line_count == null) {
            mbind_get_line_count = try api.createMethod("RichTextLabel", "get_line_count");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_line_count, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getPercentVisible(self: *const Self) !f32 {
        if (mbind_get_percent_visible == null) {
            mbind_get_percent_visible = try api.createMethod("RichTextLabel", "get_percent_visible");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_percent_visible, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getTabSize(self: *const Self) !i32 {
        if (mbind_get_tab_size == null) {
            mbind_get_tab_size = try api.createMethod("RichTextLabel", "get_tab_size");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_tab_size, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getText(self: *const Self) !godot.String {
        if (mbind_get_text == null) {
            mbind_get_text = try api.createMethod("RichTextLabel", "get_text");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_text, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getTotalCharacterCount(self: *const Self) !i32 {
        if (mbind_get_total_character_count == null) {
            mbind_get_total_character_count = try api.createMethod("RichTextLabel", "get_total_character_count");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_total_character_count, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getVScroll(self: *const Self) !godot.VScrollBar {
        if (mbind_get_v_scroll == null) {
            mbind_get_v_scroll = try api.createMethod("RichTextLabel", "get_v_scroll");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_v_scroll, base, cargs, result);
        return @ptrCast(*godot.VScrollBar, @alignCast(@alignOf(&godot.VScrollBar), result)).*;
    }

    pub fn getVisibleCharacters(self: *const Self) !i32 {
        if (mbind_get_visible_characters == null) {
            mbind_get_visible_characters = try api.createMethod("RichTextLabel", "get_visible_characters");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_visible_characters, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getVisibleLineCount(self: *const Self) !i32 {
        if (mbind_get_visible_line_count == null) {
            mbind_get_visible_line_count = try api.createMethod("RichTextLabel", "get_visible_line_count");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_visible_line_count, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn installEffect(self: *const Self, arg_effect: *const godot.Variant) !void {
        if (mbind_install_effect == null) {
            mbind_install_effect = try api.createMethod("RichTextLabel", "install_effect");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_effect),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_install_effect, base, cargs, result);
    }

    pub fn isFitContentHeightEnabled(self: *const Self) !bool {
        if (mbind_is_fit_content_height_enabled == null) {
            mbind_is_fit_content_height_enabled = try api.createMethod("RichTextLabel", "is_fit_content_height_enabled");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_fit_content_height_enabled, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isMetaUnderlined(self: *const Self) !bool {
        if (mbind_is_meta_underlined == null) {
            mbind_is_meta_underlined = try api.createMethod("RichTextLabel", "is_meta_underlined");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_meta_underlined, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isOverridingSelectedFontColor(self: *const Self) !bool {
        if (mbind_is_overriding_selected_font_color == null) {
            mbind_is_overriding_selected_font_color = try api.createMethod("RichTextLabel", "is_overriding_selected_font_color");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_overriding_selected_font_color, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isScrollActive(self: *const Self) !bool {
        if (mbind_is_scroll_active == null) {
            mbind_is_scroll_active = try api.createMethod("RichTextLabel", "is_scroll_active");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_scroll_active, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isScrollFollowing(self: *const Self) !bool {
        if (mbind_is_scroll_following == null) {
            mbind_is_scroll_following = try api.createMethod("RichTextLabel", "is_scroll_following");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_scroll_following, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isSelectionEnabled(self: *const Self) !bool {
        if (mbind_is_selection_enabled == null) {
            mbind_is_selection_enabled = try api.createMethod("RichTextLabel", "is_selection_enabled");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_selection_enabled, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isUsingBbcode(self: *const Self) !bool {
        if (mbind_is_using_bbcode == null) {
            mbind_is_using_bbcode = try api.createMethod("RichTextLabel", "is_using_bbcode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_using_bbcode, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn newline(self: *const Self) !void {
        if (mbind_newline == null) {
            mbind_newline = try api.createMethod("RichTextLabel", "newline");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_newline, base, cargs, result);
    }

    pub fn parseBbcode(self: *const Self, arg_bbcode: *const godot.String) !i32 {
        if (mbind_parse_bbcode == null) {
            mbind_parse_bbcode = try api.createMethod("RichTextLabel", "parse_bbcode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_bbcode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_parse_bbcode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn parseExpressionsForValues(self: *const Self, arg_expressions: *const godot.PoolStringArray) !godot.Dictionary {
        if (mbind_parse_expressions_for_values == null) {
            mbind_parse_expressions_for_values = try api.createMethod("RichTextLabel", "parse_expressions_for_values");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_expressions),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_parse_expressions_for_values, base, cargs, result);
        return @ptrCast(*godot.Dictionary, @alignCast(@alignOf(&godot.Dictionary), result)).*;
    }

    pub fn pop(self: *const Self) !void {
        if (mbind_pop == null) {
            mbind_pop = try api.createMethod("RichTextLabel", "pop");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_pop, base, cargs, result);
    }

    pub fn pushAlign(self: *const Self, arg_align: i32) !void {
        if (mbind_push_align == null) {
            mbind_push_align = try api.createMethod("RichTextLabel", "push_align");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_align),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_push_align, base, cargs, result);
    }

    pub fn pushBold(self: *const Self) !void {
        if (mbind_push_bold == null) {
            mbind_push_bold = try api.createMethod("RichTextLabel", "push_bold");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_push_bold, base, cargs, result);
    }

    pub fn pushBoldItalics(self: *const Self) !void {
        if (mbind_push_bold_italics == null) {
            mbind_push_bold_italics = try api.createMethod("RichTextLabel", "push_bold_italics");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_push_bold_italics, base, cargs, result);
    }

    pub fn pushCell(self: *const Self) !void {
        if (mbind_push_cell == null) {
            mbind_push_cell = try api.createMethod("RichTextLabel", "push_cell");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_push_cell, base, cargs, result);
    }

    pub fn pushColor(self: *const Self, arg_color: *const godot.Color) !void {
        if (mbind_push_color == null) {
            mbind_push_color = try api.createMethod("RichTextLabel", "push_color");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_color),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_push_color, base, cargs, result);
    }

    pub fn pushFont(self: *const Self, arg_font: *const godot.Font) !void {
        if (mbind_push_font == null) {
            mbind_push_font = try api.createMethod("RichTextLabel", "push_font");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_font),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_push_font, base, cargs, result);
    }

    pub fn pushIndent(self: *const Self, arg_level: i32) !void {
        if (mbind_push_indent == null) {
            mbind_push_indent = try api.createMethod("RichTextLabel", "push_indent");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_level),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_push_indent, base, cargs, result);
    }

    pub fn pushItalics(self: *const Self) !void {
        if (mbind_push_italics == null) {
            mbind_push_italics = try api.createMethod("RichTextLabel", "push_italics");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_push_italics, base, cargs, result);
    }

    pub fn pushList(self: *const Self, arg_type: i32) !void {
        if (mbind_push_list == null) {
            mbind_push_list = try api.createMethod("RichTextLabel", "push_list");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_type),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_push_list, base, cargs, result);
    }

    pub fn pushMeta(self: *const Self, arg_data: *const godot.Variant) !void {
        if (mbind_push_meta == null) {
            mbind_push_meta = try api.createMethod("RichTextLabel", "push_meta");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_data),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_push_meta, base, cargs, result);
    }

    pub fn pushMono(self: *const Self) !void {
        if (mbind_push_mono == null) {
            mbind_push_mono = try api.createMethod("RichTextLabel", "push_mono");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_push_mono, base, cargs, result);
    }

    pub fn pushNormal(self: *const Self) !void {
        if (mbind_push_normal == null) {
            mbind_push_normal = try api.createMethod("RichTextLabel", "push_normal");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_push_normal, base, cargs, result);
    }

    pub fn pushStrikethrough(self: *const Self) !void {
        if (mbind_push_strikethrough == null) {
            mbind_push_strikethrough = try api.createMethod("RichTextLabel", "push_strikethrough");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_push_strikethrough, base, cargs, result);
    }

    pub fn pushTable(self: *const Self, arg_columns: i32) !void {
        if (mbind_push_table == null) {
            mbind_push_table = try api.createMethod("RichTextLabel", "push_table");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_columns),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_push_table, base, cargs, result);
    }

    pub fn pushUnderline(self: *const Self) !void {
        if (mbind_push_underline == null) {
            mbind_push_underline = try api.createMethod("RichTextLabel", "push_underline");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_push_underline, base, cargs, result);
    }

    pub fn removeLine(self: *const Self, arg_line: i32) !bool {
        if (mbind_remove_line == null) {
            mbind_remove_line = try api.createMethod("RichTextLabel", "remove_line");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_line),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_remove_line, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn scrollToLine(self: *const Self, arg_line: i32) !void {
        if (mbind_scroll_to_line == null) {
            mbind_scroll_to_line = try api.createMethod("RichTextLabel", "scroll_to_line");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_line),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_scroll_to_line, base, cargs, result);
    }

    pub fn setBbcode(self: *const Self, arg_text: *const godot.String) !void {
        if (mbind_set_bbcode == null) {
            mbind_set_bbcode = try api.createMethod("RichTextLabel", "set_bbcode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_text),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_bbcode, base, cargs, result);
    }

    pub fn setEffects(self: *const Self, arg_effects: *const godot.Array) !void {
        if (mbind_set_effects == null) {
            mbind_set_effects = try api.createMethod("RichTextLabel", "set_effects");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_effects),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_effects, base, cargs, result);
    }

    pub fn setFitContentHeight(self: *const Self, arg_enabled: bool) !void {
        if (mbind_set_fit_content_height == null) {
            mbind_set_fit_content_height = try api.createMethod("RichTextLabel", "set_fit_content_height");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enabled),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_fit_content_height, base, cargs, result);
    }

    pub fn setMetaUnderline(self: *const Self, arg_enable: bool) !void {
        if (mbind_set_meta_underline == null) {
            mbind_set_meta_underline = try api.createMethod("RichTextLabel", "set_meta_underline");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_meta_underline, base, cargs, result);
    }

    pub fn setOverrideSelectedFontColor(self: *const Self, arg_override: bool) !void {
        if (mbind_set_override_selected_font_color == null) {
            mbind_set_override_selected_font_color = try api.createMethod("RichTextLabel", "set_override_selected_font_color");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_override),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_override_selected_font_color, base, cargs, result);
    }

    pub fn setPercentVisible(self: *const Self, arg_percent_visible: f32) !void {
        if (mbind_set_percent_visible == null) {
            mbind_set_percent_visible = try api.createMethod("RichTextLabel", "set_percent_visible");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_percent_visible),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_percent_visible, base, cargs, result);
    }

    pub fn setScrollActive(self: *const Self, arg_active: bool) !void {
        if (mbind_set_scroll_active == null) {
            mbind_set_scroll_active = try api.createMethod("RichTextLabel", "set_scroll_active");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_active),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_scroll_active, base, cargs, result);
    }

    pub fn setScrollFollow(self: *const Self, arg_follow: bool) !void {
        if (mbind_set_scroll_follow == null) {
            mbind_set_scroll_follow = try api.createMethod("RichTextLabel", "set_scroll_follow");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_follow),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_scroll_follow, base, cargs, result);
    }

    pub fn setSelectionEnabled(self: *const Self, arg_enabled: bool) !void {
        if (mbind_set_selection_enabled == null) {
            mbind_set_selection_enabled = try api.createMethod("RichTextLabel", "set_selection_enabled");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enabled),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_selection_enabled, base, cargs, result);
    }

    pub fn setTabSize(self: *const Self, arg_spaces: i32) !void {
        if (mbind_set_tab_size == null) {
            mbind_set_tab_size = try api.createMethod("RichTextLabel", "set_tab_size");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_spaces),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_tab_size, base, cargs, result);
    }

    pub fn setTableColumnExpand(self: *const Self, arg_column: i32, arg_expand: bool, arg_ratio: i32) !void {
        if (mbind_set_table_column_expand == null) {
            mbind_set_table_column_expand = try api.createMethod("RichTextLabel", "set_table_column_expand");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_column),
            @ptrCast(*const anyopaque, *arg_expand),
            @ptrCast(*const anyopaque, *arg_ratio),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_table_column_expand, base, cargs, result);
    }

    pub fn setText(self: *const Self, arg_text: *const godot.String) !void {
        if (mbind_set_text == null) {
            mbind_set_text = try api.createMethod("RichTextLabel", "set_text");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_text),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_text, base, cargs, result);
    }

    pub fn setUseBbcode(self: *const Self, arg_enable: bool) !void {
        if (mbind_set_use_bbcode == null) {
            mbind_set_use_bbcode = try api.createMethod("RichTextLabel", "set_use_bbcode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_use_bbcode, base, cargs, result);
    }

    pub fn setVisibleCharacters(self: *const Self, arg_amount: i32) !void {
        if (mbind_set_visible_characters == null) {
            mbind_set_visible_characters = try api.createMethod("RichTextLabel", "set_visible_characters");
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