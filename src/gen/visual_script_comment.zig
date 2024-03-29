// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_description: ?*c_api.godot_method_bind = null;
var mbind_get_size: ?*c_api.godot_method_bind = null;
var mbind_get_title: ?*c_api.godot_method_bind = null;
var mbind_set_description: ?*c_api.godot_method_bind = null;
var mbind_set_size: ?*c_api.godot_method_bind = null;
var mbind_set_title: ?*c_api.godot_method_bind = null;
var mbind_visual_script_comment_constructor: ?fn () ?*c_api.godot_object = null;

pub const VisualScriptComment = struct {
    const Self = @This();
    pub const BaseClass = godot.VisualScriptNode;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_visual_script_comment_constructor == null) {
            mbind_visual_script_comment_constructor = try api.createConstructor("VisualScriptComment");
        }
        return api.createObject(Self, mbind_visual_script_comment_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getDescription(self: *const Self) !godot.String {
        if (mbind_get_description == null) {
            mbind_get_description = try api.createMethod("VisualScriptComment", "get_description");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_description, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getSize(self: *const Self) !godot.Vector2 {
        if (mbind_get_size == null) {
            mbind_get_size = try api.createMethod("VisualScriptComment", "get_size");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_size, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getTitle(self: *const Self) !godot.String {
        if (mbind_get_title == null) {
            mbind_get_title = try api.createMethod("VisualScriptComment", "get_title");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_title, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn setDescription(self: *const Self, arg_description: *const godot.String) !void {
        if (mbind_set_description == null) {
            mbind_set_description = try api.createMethod("VisualScriptComment", "set_description");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_description),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_description, base, cargs, result);
    }

    pub fn setSize(self: *const Self, arg_size: *const godot.Vector2) !void {
        if (mbind_set_size == null) {
            mbind_set_size = try api.createMethod("VisualScriptComment", "set_size");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_size),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_size, base, cargs, result);
    }

    pub fn setTitle(self: *const Self, arg_title: *const godot.String) !void {
        if (mbind_set_title == null) {
            mbind_set_title = try api.createMethod("VisualScriptComment", "set_title");
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