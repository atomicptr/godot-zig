// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Container = @import("container.zig").Container;

// method bindings
var mbind_clear_all_slots: ?*c_api.godot_method_bind = null;
var mbind_clear_slot: ?*c_api.godot_method_bind = null;
var mbind_get_connection_input_color: ?*c_api.godot_method_bind = null;
var mbind_get_connection_input_count: ?*c_api.godot_method_bind = null;
var mbind_get_connection_input_position: ?*c_api.godot_method_bind = null;
var mbind_get_connection_input_type: ?*c_api.godot_method_bind = null;
var mbind_get_connection_output_color: ?*c_api.godot_method_bind = null;
var mbind_get_connection_output_count: ?*c_api.godot_method_bind = null;
var mbind_get_connection_output_position: ?*c_api.godot_method_bind = null;
var mbind_get_connection_output_type: ?*c_api.godot_method_bind = null;
var mbind_get_offset: ?*c_api.godot_method_bind = null;
var mbind_get_overlay: ?*c_api.godot_method_bind = null;
var mbind_get_slot_color_left: ?*c_api.godot_method_bind = null;
var mbind_get_slot_color_right: ?*c_api.godot_method_bind = null;
var mbind_get_slot_type_left: ?*c_api.godot_method_bind = null;
var mbind_get_slot_type_right: ?*c_api.godot_method_bind = null;
var mbind_get_title: ?*c_api.godot_method_bind = null;
var mbind_is_close_button_visible: ?*c_api.godot_method_bind = null;
var mbind_is_comment: ?*c_api.godot_method_bind = null;
var mbind_is_resizable: ?*c_api.godot_method_bind = null;
var mbind_is_selected: ?*c_api.godot_method_bind = null;
var mbind_is_slot_enabled_left: ?*c_api.godot_method_bind = null;
var mbind_is_slot_enabled_right: ?*c_api.godot_method_bind = null;
var mbind_set_comment: ?*c_api.godot_method_bind = null;
var mbind_set_offset: ?*c_api.godot_method_bind = null;
var mbind_set_overlay: ?*c_api.godot_method_bind = null;
var mbind_set_resizable: ?*c_api.godot_method_bind = null;
var mbind_set_selected: ?*c_api.godot_method_bind = null;
var mbind_set_show_close_button: ?*c_api.godot_method_bind = null;
var mbind_set_slot: ?*c_api.godot_method_bind = null;
var mbind_set_slot_color_left: ?*c_api.godot_method_bind = null;
var mbind_set_slot_color_right: ?*c_api.godot_method_bind = null;
var mbind_set_slot_enabled_left: ?*c_api.godot_method_bind = null;
var mbind_set_slot_enabled_right: ?*c_api.godot_method_bind = null;
var mbind_set_slot_type_left: ?*c_api.godot_method_bind = null;
var mbind_set_slot_type_right: ?*c_api.godot_method_bind = null;
var mbind_set_title: ?*c_api.godot_method_bind = null;
var mbind_graph_node_constructor: ?fn () ?*c_api.godot_object = null;

pub const GraphNode = struct {
    const Self = @This();
    const BaseClass = Container;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_graph_node_constructor == null) {
            mbind_graph_node_constructor = try api.createConstructor("GraphNode");
        }
        return api.createObject(Self, mbind_graph_node_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn clearAllSlots(self: *const Self) !void {
        if (mbind_clear_all_slots == null) {
            mbind_clear_all_slots = try api.createMethod("GraphNode", "clear_all_slots");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_clear_all_slots, base, cargs, result);
    }

    pub fn clearSlot(self: *const Self, arg_idx: i32) !void {
        if (mbind_clear_slot == null) {
            mbind_clear_slot = try api.createMethod("GraphNode", "clear_slot");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_clear_slot, base, cargs, result);
    }

    pub fn getConnectionInputColor(self: *const Self, arg_idx: i32) !godot.Color {
        if (mbind_get_connection_input_color == null) {
            mbind_get_connection_input_color = try api.createMethod("GraphNode", "get_connection_input_color");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_connection_input_color, base, cargs, result);
        return @ptrCast(*godot.Color, @alignCast(@alignOf(&godot.Color), result)).*;
    }

    pub fn getConnectionInputCount(self: *const Self) !i32 {
        if (mbind_get_connection_input_count == null) {
            mbind_get_connection_input_count = try api.createMethod("GraphNode", "get_connection_input_count");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_connection_input_count, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getConnectionInputPosition(self: *const Self, arg_idx: i32) !godot.Vector2 {
        if (mbind_get_connection_input_position == null) {
            mbind_get_connection_input_position = try api.createMethod("GraphNode", "get_connection_input_position");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_connection_input_position, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getConnectionInputType(self: *const Self, arg_idx: i32) !i32 {
        if (mbind_get_connection_input_type == null) {
            mbind_get_connection_input_type = try api.createMethod("GraphNode", "get_connection_input_type");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_connection_input_type, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getConnectionOutputColor(self: *const Self, arg_idx: i32) !godot.Color {
        if (mbind_get_connection_output_color == null) {
            mbind_get_connection_output_color = try api.createMethod("GraphNode", "get_connection_output_color");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_connection_output_color, base, cargs, result);
        return @ptrCast(*godot.Color, @alignCast(@alignOf(&godot.Color), result)).*;
    }

    pub fn getConnectionOutputCount(self: *const Self) !i32 {
        if (mbind_get_connection_output_count == null) {
            mbind_get_connection_output_count = try api.createMethod("GraphNode", "get_connection_output_count");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_connection_output_count, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getConnectionOutputPosition(self: *const Self, arg_idx: i32) !godot.Vector2 {
        if (mbind_get_connection_output_position == null) {
            mbind_get_connection_output_position = try api.createMethod("GraphNode", "get_connection_output_position");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_connection_output_position, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getConnectionOutputType(self: *const Self, arg_idx: i32) !i32 {
        if (mbind_get_connection_output_type == null) {
            mbind_get_connection_output_type = try api.createMethod("GraphNode", "get_connection_output_type");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_connection_output_type, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getOffset(self: *const Self) !godot.Vector2 {
        if (mbind_get_offset == null) {
            mbind_get_offset = try api.createMethod("GraphNode", "get_offset");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_offset, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getOverlay(self: *const Self) !i32 {
        if (mbind_get_overlay == null) {
            mbind_get_overlay = try api.createMethod("GraphNode", "get_overlay");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_overlay, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getSlotColorLeft(self: *const Self, arg_idx: i32) !godot.Color {
        if (mbind_get_slot_color_left == null) {
            mbind_get_slot_color_left = try api.createMethod("GraphNode", "get_slot_color_left");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_slot_color_left, base, cargs, result);
        return @ptrCast(*godot.Color, @alignCast(@alignOf(&godot.Color), result)).*;
    }

    pub fn getSlotColorRight(self: *const Self, arg_idx: i32) !godot.Color {
        if (mbind_get_slot_color_right == null) {
            mbind_get_slot_color_right = try api.createMethod("GraphNode", "get_slot_color_right");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_slot_color_right, base, cargs, result);
        return @ptrCast(*godot.Color, @alignCast(@alignOf(&godot.Color), result)).*;
    }

    pub fn getSlotTypeLeft(self: *const Self, arg_idx: i32) !i32 {
        if (mbind_get_slot_type_left == null) {
            mbind_get_slot_type_left = try api.createMethod("GraphNode", "get_slot_type_left");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_slot_type_left, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getSlotTypeRight(self: *const Self, arg_idx: i32) !i32 {
        if (mbind_get_slot_type_right == null) {
            mbind_get_slot_type_right = try api.createMethod("GraphNode", "get_slot_type_right");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_slot_type_right, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getTitle(self: *const Self) !godot.String {
        if (mbind_get_title == null) {
            mbind_get_title = try api.createMethod("GraphNode", "get_title");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_title, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn isCloseButtonVisible(self: *const Self) !bool {
        if (mbind_is_close_button_visible == null) {
            mbind_is_close_button_visible = try api.createMethod("GraphNode", "is_close_button_visible");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_close_button_visible, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isComment(self: *const Self) !bool {
        if (mbind_is_comment == null) {
            mbind_is_comment = try api.createMethod("GraphNode", "is_comment");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_comment, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isResizable(self: *const Self) !bool {
        if (mbind_is_resizable == null) {
            mbind_is_resizable = try api.createMethod("GraphNode", "is_resizable");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_resizable, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isSelected(self: *const Self) !bool {
        if (mbind_is_selected == null) {
            mbind_is_selected = try api.createMethod("GraphNode", "is_selected");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_selected, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isSlotEnabledLeft(self: *const Self, arg_idx: i32) !bool {
        if (mbind_is_slot_enabled_left == null) {
            mbind_is_slot_enabled_left = try api.createMethod("GraphNode", "is_slot_enabled_left");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_slot_enabled_left, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isSlotEnabledRight(self: *const Self, arg_idx: i32) !bool {
        if (mbind_is_slot_enabled_right == null) {
            mbind_is_slot_enabled_right = try api.createMethod("GraphNode", "is_slot_enabled_right");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_slot_enabled_right, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setComment(self: *const Self, arg_comment: bool) !void {
        if (mbind_set_comment == null) {
            mbind_set_comment = try api.createMethod("GraphNode", "set_comment");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_comment),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_comment, base, cargs, result);
    }

    pub fn setOffset(self: *const Self, arg_offset: *const godot.Vector2) !void {
        if (mbind_set_offset == null) {
            mbind_set_offset = try api.createMethod("GraphNode", "set_offset");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_offset),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_offset, base, cargs, result);
    }

    pub fn setOverlay(self: *const Self, arg_overlay: i32) !void {
        if (mbind_set_overlay == null) {
            mbind_set_overlay = try api.createMethod("GraphNode", "set_overlay");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_overlay),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_overlay, base, cargs, result);
    }

    pub fn setResizable(self: *const Self, arg_resizable: bool) !void {
        if (mbind_set_resizable == null) {
            mbind_set_resizable = try api.createMethod("GraphNode", "set_resizable");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_resizable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_resizable, base, cargs, result);
    }

    pub fn setSelected(self: *const Self, arg_selected: bool) !void {
        if (mbind_set_selected == null) {
            mbind_set_selected = try api.createMethod("GraphNode", "set_selected");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_selected),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_selected, base, cargs, result);
    }

    pub fn setShowCloseButton(self: *const Self, arg_show: bool) !void {
        if (mbind_set_show_close_button == null) {
            mbind_set_show_close_button = try api.createMethod("GraphNode", "set_show_close_button");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_show),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_show_close_button, base, cargs, result);
    }

    pub fn setSlot(self: *const Self, arg_idx: i32, arg_enable_left: bool, arg_type_left: i32, arg_color_left: *const godot.Color, arg_enable_right: bool, arg_type_right: i32, arg_color_right: *const godot.Color, arg_custom_left: *const godot.Texture, arg_custom_right: *const godot.Texture) !void {
        if (mbind_set_slot == null) {
            mbind_set_slot = try api.createMethod("GraphNode", "set_slot");
        }

        var result: ?*anyopaque = null;
        var args: [9]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
            @ptrCast(*const anyopaque, *arg_enable_left),
            @ptrCast(*const anyopaque, *arg_type_left),
            @ptrCast(*const anyopaque, arg_color_left),
            @ptrCast(*const anyopaque, *arg_enable_right),
            @ptrCast(*const anyopaque, *arg_type_right),
            @ptrCast(*const anyopaque, arg_color_right),
            @ptrCast(*const anyopaque, arg_custom_left),
            @ptrCast(*const anyopaque, arg_custom_right),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_slot, base, cargs, result);
    }

    pub fn setSlotColorLeft(self: *const Self, arg_idx: i32, arg_color_left: *const godot.Color) !void {
        if (mbind_set_slot_color_left == null) {
            mbind_set_slot_color_left = try api.createMethod("GraphNode", "set_slot_color_left");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
            @ptrCast(*const anyopaque, arg_color_left),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_slot_color_left, base, cargs, result);
    }

    pub fn setSlotColorRight(self: *const Self, arg_idx: i32, arg_color_right: *const godot.Color) !void {
        if (mbind_set_slot_color_right == null) {
            mbind_set_slot_color_right = try api.createMethod("GraphNode", "set_slot_color_right");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
            @ptrCast(*const anyopaque, arg_color_right),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_slot_color_right, base, cargs, result);
    }

    pub fn setSlotEnabledLeft(self: *const Self, arg_idx: i32, arg_enable_left: bool) !void {
        if (mbind_set_slot_enabled_left == null) {
            mbind_set_slot_enabled_left = try api.createMethod("GraphNode", "set_slot_enabled_left");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
            @ptrCast(*const anyopaque, *arg_enable_left),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_slot_enabled_left, base, cargs, result);
    }

    pub fn setSlotEnabledRight(self: *const Self, arg_idx: i32, arg_enable_right: bool) !void {
        if (mbind_set_slot_enabled_right == null) {
            mbind_set_slot_enabled_right = try api.createMethod("GraphNode", "set_slot_enabled_right");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
            @ptrCast(*const anyopaque, *arg_enable_right),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_slot_enabled_right, base, cargs, result);
    }

    pub fn setSlotTypeLeft(self: *const Self, arg_idx: i32, arg_type_left: i32) !void {
        if (mbind_set_slot_type_left == null) {
            mbind_set_slot_type_left = try api.createMethod("GraphNode", "set_slot_type_left");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
            @ptrCast(*const anyopaque, *arg_type_left),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_slot_type_left, base, cargs, result);
    }

    pub fn setSlotTypeRight(self: *const Self, arg_idx: i32, arg_type_right: i32) !void {
        if (mbind_set_slot_type_right == null) {
            mbind_set_slot_type_right = try api.createMethod("GraphNode", "set_slot_type_right");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
            @ptrCast(*const anyopaque, *arg_type_right),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_slot_type_right, base, cargs, result);
    }

    pub fn setTitle(self: *const Self, arg_title: *const godot.String) !void {
        if (mbind_set_title == null) {
            mbind_set_title = try api.createMethod("GraphNode", "set_title");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_title),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_title, base, cargs, result);
    }
};