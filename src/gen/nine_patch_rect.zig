// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Control = @import("control.zig").Control;

// method bindings
var mbind_get_h_axis_stretch_mode: ?*c_api.godot_method_bind = null;
var mbind_get_patch_margin: ?*c_api.godot_method_bind = null;
var mbind_get_region_rect: ?*c_api.godot_method_bind = null;
var mbind_get_texture: ?*c_api.godot_method_bind = null;
var mbind_get_v_axis_stretch_mode: ?*c_api.godot_method_bind = null;
var mbind_is_draw_center_enabled: ?*c_api.godot_method_bind = null;
var mbind_set_draw_center: ?*c_api.godot_method_bind = null;
var mbind_set_h_axis_stretch_mode: ?*c_api.godot_method_bind = null;
var mbind_set_patch_margin: ?*c_api.godot_method_bind = null;
var mbind_set_region_rect: ?*c_api.godot_method_bind = null;
var mbind_set_texture: ?*c_api.godot_method_bind = null;
var mbind_set_v_axis_stretch_mode: ?*c_api.godot_method_bind = null;
var mbind_nine_patch_rect_constructor: ?fn () ?*c_api.godot_object = null;

pub const NinePatchRect = struct {
    const Self = @This();
    const BaseClass = Control;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_nine_patch_rect_constructor == null) {
            mbind_nine_patch_rect_constructor = try api.createConstructor("NinePatchRect");
        }
        return api.createObject(Self, mbind_nine_patch_rect_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getHAxisStretchMode(self: *const Self) !i32 {
        if (mbind_get_h_axis_stretch_mode == null) {
            mbind_get_h_axis_stretch_mode = try api.createMethod("NinePatchRect", "get_h_axis_stretch_mode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_h_axis_stretch_mode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getPatchMargin(self: *const Self, arg_margin: i32) !i32 {
        if (mbind_get_patch_margin == null) {
            mbind_get_patch_margin = try api.createMethod("NinePatchRect", "get_patch_margin");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_margin),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_patch_margin, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getRegionRect(self: *const Self) !godot.Rect2 {
        if (mbind_get_region_rect == null) {
            mbind_get_region_rect = try api.createMethod("NinePatchRect", "get_region_rect");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_region_rect, base, cargs, result);
        return @ptrCast(*godot.Rect2, @alignCast(@alignOf(&godot.Rect2), result)).*;
    }

    pub fn getTexture(self: *const Self) !godot.Texture {
        if (mbind_get_texture == null) {
            mbind_get_texture = try api.createMethod("NinePatchRect", "get_texture");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_texture, base, cargs, result);
        return @ptrCast(*godot.Texture, @alignCast(@alignOf(&godot.Texture), result)).*;
    }

    pub fn getVAxisStretchMode(self: *const Self) !i32 {
        if (mbind_get_v_axis_stretch_mode == null) {
            mbind_get_v_axis_stretch_mode = try api.createMethod("NinePatchRect", "get_v_axis_stretch_mode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_v_axis_stretch_mode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn isDrawCenterEnabled(self: *const Self) !bool {
        if (mbind_is_draw_center_enabled == null) {
            mbind_is_draw_center_enabled = try api.createMethod("NinePatchRect", "is_draw_center_enabled");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_draw_center_enabled, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setDrawCenter(self: *const Self, arg_draw_center: bool) !void {
        if (mbind_set_draw_center == null) {
            mbind_set_draw_center = try api.createMethod("NinePatchRect", "set_draw_center");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_draw_center),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_draw_center, base, cargs, result);
    }

    pub fn setHAxisStretchMode(self: *const Self, arg_mode: i32) !void {
        if (mbind_set_h_axis_stretch_mode == null) {
            mbind_set_h_axis_stretch_mode = try api.createMethod("NinePatchRect", "set_h_axis_stretch_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_h_axis_stretch_mode, base, cargs, result);
    }

    pub fn setPatchMargin(self: *const Self, arg_margin: i32, arg_value: i32) !void {
        if (mbind_set_patch_margin == null) {
            mbind_set_patch_margin = try api.createMethod("NinePatchRect", "set_patch_margin");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_margin),
            @ptrCast(*const anyopaque, *arg_value),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_patch_margin, base, cargs, result);
    }

    pub fn setRegionRect(self: *const Self, arg_rect: *const godot.Rect2) !void {
        if (mbind_set_region_rect == null) {
            mbind_set_region_rect = try api.createMethod("NinePatchRect", "set_region_rect");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_rect),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_region_rect, base, cargs, result);
    }

    pub fn setTexture(self: *const Self, arg_texture: *const godot.Texture) !void {
        if (mbind_set_texture == null) {
            mbind_set_texture = try api.createMethod("NinePatchRect", "set_texture");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_texture),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_texture, base, cargs, result);
    }

    pub fn setVAxisStretchMode(self: *const Self, arg_mode: i32) !void {
        if (mbind_set_v_axis_stretch_mode == null) {
            mbind_set_v_axis_stretch_mode = try api.createMethod("NinePatchRect", "set_v_axis_stretch_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_v_axis_stretch_mode, base, cargs, result);
    }
};