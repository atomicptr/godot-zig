// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Range = @import("range.zig").Range;

// method bindings
var mbind_get_label: ?*c_api.godot_method_bind = null;
var mbind_is_flat: ?*c_api.godot_method_bind = null;
var mbind_is_read_only: ?*c_api.godot_method_bind = null;
var mbind_set_flat: ?*c_api.godot_method_bind = null;
var mbind_set_label: ?*c_api.godot_method_bind = null;
var mbind_set_read_only: ?*c_api.godot_method_bind = null;
var mbind_editor_spin_slider_constructor: ?fn () ?*c_api.godot_object = null;

pub const EditorSpinSlider = struct {
    const Self = @This();
    const BaseClass = Range;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_editor_spin_slider_constructor == null) {
            mbind_editor_spin_slider_constructor = try api.createConstructor("EditorSpinSlider");
        }
        return api.createObject(Self, mbind_editor_spin_slider_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getLabel(self: *const Self) !godot.String {
        if (mbind_get_label == null) {
            mbind_get_label = try api.createMethod("EditorSpinSlider", "get_label");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_label, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn isFlat(self: *const Self) !bool {
        if (mbind_is_flat == null) {
            mbind_is_flat = try api.createMethod("EditorSpinSlider", "is_flat");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_flat, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isReadOnly(self: *const Self) !bool {
        if (mbind_is_read_only == null) {
            mbind_is_read_only = try api.createMethod("EditorSpinSlider", "is_read_only");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_read_only, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setFlat(self: *const Self, arg_flat: bool) !void {
        if (mbind_set_flat == null) {
            mbind_set_flat = try api.createMethod("EditorSpinSlider", "set_flat");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_flat),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_flat, base, cargs, result);
    }

    pub fn setLabel(self: *const Self, arg_label: *const godot.String) !void {
        if (mbind_set_label == null) {
            mbind_set_label = try api.createMethod("EditorSpinSlider", "set_label");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_label),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_label, base, cargs, result);
    }

    pub fn setReadOnly(self: *const Self, arg_read_only: bool) !void {
        if (mbind_set_read_only == null) {
            mbind_set_read_only = try api.createMethod("EditorSpinSlider", "set_read_only");
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