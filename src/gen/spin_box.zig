// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_apply: ?*c_api.godot_method_bind = null;
var mbind_get_align: ?*c_api.godot_method_bind = null;
var mbind_get_line_edit: ?*c_api.godot_method_bind = null;
var mbind_get_prefix: ?*c_api.godot_method_bind = null;
var mbind_get_suffix: ?*c_api.godot_method_bind = null;
var mbind_is_editable: ?*c_api.godot_method_bind = null;
var mbind_set_align: ?*c_api.godot_method_bind = null;
var mbind_set_editable: ?*c_api.godot_method_bind = null;
var mbind_set_prefix: ?*c_api.godot_method_bind = null;
var mbind_set_suffix: ?*c_api.godot_method_bind = null;
var mbind_spin_box_constructor: ?fn () ?*c_api.godot_object = null;

pub const SpinBox = struct {
    const Self = @This();
    pub const BaseClass = godot.Range;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_spin_box_constructor == null) {
            mbind_spin_box_constructor = try api.createConstructor("SpinBox");
        }
        return api.createObject(Self, mbind_spin_box_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn apply(self: *const Self) !void {
        if (mbind_apply == null) {
            mbind_apply = try api.createMethod("SpinBox", "apply");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_apply, base, cargs, result);
    }

    pub fn getAlign(self: *const Self) !i32 {
        if (mbind_get_align == null) {
            mbind_get_align = try api.createMethod("SpinBox", "get_align");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_align, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getLineEdit(self: *const Self) !godot.LineEdit {
        if (mbind_get_line_edit == null) {
            mbind_get_line_edit = try api.createMethod("SpinBox", "get_line_edit");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_line_edit, base, cargs, result);
        return @ptrCast(*godot.LineEdit, @alignCast(@alignOf(&godot.LineEdit), result)).*;
    }

    pub fn getPrefix(self: *const Self) !godot.String {
        if (mbind_get_prefix == null) {
            mbind_get_prefix = try api.createMethod("SpinBox", "get_prefix");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_prefix, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getSuffix(self: *const Self) !godot.String {
        if (mbind_get_suffix == null) {
            mbind_get_suffix = try api.createMethod("SpinBox", "get_suffix");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_suffix, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn isEditable(self: *const Self) !bool {
        if (mbind_is_editable == null) {
            mbind_is_editable = try api.createMethod("SpinBox", "is_editable");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_editable, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setAlign(self: *const Self, arg_align: i32) !void {
        if (mbind_set_align == null) {
            mbind_set_align = try api.createMethod("SpinBox", "set_align");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_align),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_align, base, cargs, result);
    }

    pub fn setEditable(self: *const Self, arg_editable: bool) !void {
        if (mbind_set_editable == null) {
            mbind_set_editable = try api.createMethod("SpinBox", "set_editable");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_editable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_editable, base, cargs, result);
    }

    pub fn setPrefix(self: *const Self, arg_prefix: *const godot.String) !void {
        if (mbind_set_prefix == null) {
            mbind_set_prefix = try api.createMethod("SpinBox", "set_prefix");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_prefix),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_prefix, base, cargs, result);
    }

    pub fn setSuffix(self: *const Self, arg_suffix: *const godot.String) !void {
        if (mbind_set_suffix == null) {
            mbind_set_suffix = try api.createMethod("SpinBox", "set_suffix");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_suffix),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_suffix, base, cargs, result);
    }
};