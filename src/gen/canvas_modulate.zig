// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Node2D = @import("node_2d.zig").Node2D;

// method bindings
var mbind_get_color: ?*c_api.godot_method_bind = null;
var mbind_set_color: ?*c_api.godot_method_bind = null;
var mbind_canvas_modulate_constructor: ?fn () ?*c_api.godot_object = null;

pub const CanvasModulate = struct {
    const Self = @This();
    const BaseClass = Node2D;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_canvas_modulate_constructor == null) {
            mbind_canvas_modulate_constructor = try api.createConstructor("CanvasModulate");
        }
        return api.createObject(Self, mbind_canvas_modulate_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getColor(self: *const Self) !godot.Color {
        if (mbind_get_color == null) {
            mbind_get_color = try api.createMethod("CanvasModulate", "get_color");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_color, base, cargs, result);
        return @ptrCast(*godot.Color, @alignCast(@alignOf(&godot.Color), result)).*;
    }

    pub fn setColor(self: *const Self, arg_color: *const godot.Color) !void {
        if (mbind_set_color == null) {
            mbind_set_color = try api.createMethod("CanvasModulate", "set_color");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_color),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_color, base, cargs, result);
    }
};