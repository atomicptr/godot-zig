// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Container = @import("container.zig").Container;

// method bindings
var mbind_add_focusable: ?*c_api.godot_method_bind = null;
var mbind_emit_changed: ?*c_api.godot_method_bind = null;
var mbind_get_edited_object: ?*c_api.godot_method_bind = null;
var mbind_get_edited_property: ?*c_api.godot_method_bind = null;
var mbind_get_label: ?*c_api.godot_method_bind = null;
var mbind_get_tooltip_text: ?*c_api.godot_method_bind = null;
var mbind_is_checkable: ?*c_api.godot_method_bind = null;
var mbind_is_checked: ?*c_api.godot_method_bind = null;
var mbind_is_draw_red: ?*c_api.godot_method_bind = null;
var mbind_is_keying: ?*c_api.godot_method_bind = null;
var mbind_is_read_only: ?*c_api.godot_method_bind = null;
var mbind_set_bottom_editor: ?*c_api.godot_method_bind = null;
var mbind_set_checkable: ?*c_api.godot_method_bind = null;
var mbind_set_checked: ?*c_api.godot_method_bind = null;
var mbind_set_draw_red: ?*c_api.godot_method_bind = null;
var mbind_set_keying: ?*c_api.godot_method_bind = null;
var mbind_set_label: ?*c_api.godot_method_bind = null;
var mbind_set_read_only: ?*c_api.godot_method_bind = null;
var mbind_editor_property_constructor: ?fn () ?*c_api.godot_object = null;

pub const EditorProperty = struct {
    const Self = @This();
    const BaseClass = Container;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_editor_property_constructor == null) {
            mbind_editor_property_constructor = try api.createConstructor("EditorProperty");
        }
        return api.createObject(Self, mbind_editor_property_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn addFocusable(self: *const Self, arg_control: *const godot.Control) !void {
        if (mbind_add_focusable == null) {
            mbind_add_focusable = try api.createMethod("EditorProperty", "add_focusable");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_control),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_focusable, base, cargs, result);
    }

    pub fn emitChanged(self: *const Self, arg_property: *const godot.String, arg_value: *const godot.Variant, arg_field: *const godot.String, arg_changing: bool) !void {
        if (mbind_emit_changed == null) {
            mbind_emit_changed = try api.createMethod("EditorProperty", "emit_changed");
        }

        var result: ?*anyopaque = null;
        var args: [4]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_property),
            @ptrCast(*const anyopaque, arg_value),
            @ptrCast(*const anyopaque, arg_field),
            @ptrCast(*const anyopaque, *arg_changing),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_emit_changed, base, cargs, result);
    }

    pub fn getEditedObject(self: *const Self) !godot.Object {
        if (mbind_get_edited_object == null) {
            mbind_get_edited_object = try api.createMethod("EditorProperty", "get_edited_object");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_edited_object, base, cargs, result);
        return @ptrCast(*godot.Object, @alignCast(@alignOf(&godot.Object), result)).*;
    }

    pub fn getEditedProperty(self: *const Self) !godot.String {
        if (mbind_get_edited_property == null) {
            mbind_get_edited_property = try api.createMethod("EditorProperty", "get_edited_property");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_edited_property, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getLabel(self: *const Self) !godot.String {
        if (mbind_get_label == null) {
            mbind_get_label = try api.createMethod("EditorProperty", "get_label");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_label, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getTooltipText(self: *const Self) !godot.String {
        if (mbind_get_tooltip_text == null) {
            mbind_get_tooltip_text = try api.createMethod("EditorProperty", "get_tooltip_text");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_tooltip_text, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn isCheckable(self: *const Self) !bool {
        if (mbind_is_checkable == null) {
            mbind_is_checkable = try api.createMethod("EditorProperty", "is_checkable");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_checkable, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isChecked(self: *const Self) !bool {
        if (mbind_is_checked == null) {
            mbind_is_checked = try api.createMethod("EditorProperty", "is_checked");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_checked, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isDrawRed(self: *const Self) !bool {
        if (mbind_is_draw_red == null) {
            mbind_is_draw_red = try api.createMethod("EditorProperty", "is_draw_red");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_draw_red, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isKeying(self: *const Self) !bool {
        if (mbind_is_keying == null) {
            mbind_is_keying = try api.createMethod("EditorProperty", "is_keying");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_keying, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isReadOnly(self: *const Self) !bool {
        if (mbind_is_read_only == null) {
            mbind_is_read_only = try api.createMethod("EditorProperty", "is_read_only");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_read_only, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setBottomEditor(self: *const Self, arg_editor: *const godot.Control) !void {
        if (mbind_set_bottom_editor == null) {
            mbind_set_bottom_editor = try api.createMethod("EditorProperty", "set_bottom_editor");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_editor),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_bottom_editor, base, cargs, result);
    }

    pub fn setCheckable(self: *const Self, arg_checkable: bool) !void {
        if (mbind_set_checkable == null) {
            mbind_set_checkable = try api.createMethod("EditorProperty", "set_checkable");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_checkable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_checkable, base, cargs, result);
    }

    pub fn setChecked(self: *const Self, arg_checked: bool) !void {
        if (mbind_set_checked == null) {
            mbind_set_checked = try api.createMethod("EditorProperty", "set_checked");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_checked),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_checked, base, cargs, result);
    }

    pub fn setDrawRed(self: *const Self, arg_draw_red: bool) !void {
        if (mbind_set_draw_red == null) {
            mbind_set_draw_red = try api.createMethod("EditorProperty", "set_draw_red");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_draw_red),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_draw_red, base, cargs, result);
    }

    pub fn setKeying(self: *const Self, arg_keying: bool) !void {
        if (mbind_set_keying == null) {
            mbind_set_keying = try api.createMethod("EditorProperty", "set_keying");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_keying),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_keying, base, cargs, result);
    }

    pub fn setLabel(self: *const Self, arg_text: *const godot.String) !void {
        if (mbind_set_label == null) {
            mbind_set_label = try api.createMethod("EditorProperty", "set_label");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_text),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_label, base, cargs, result);
    }

    pub fn setReadOnly(self: *const Self, arg_read_only: bool) !void {
        if (mbind_set_read_only == null) {
            mbind_set_read_only = try api.createMethod("EditorProperty", "set_read_only");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_read_only),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_read_only, base, cargs, result);
    }
};