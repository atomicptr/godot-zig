// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_fit_child_in_rect: ?*c_api.godot_method_bind = null;
var mbind_queue_sort: ?*c_api.godot_method_bind = null;
var mbind_container_constructor: ?fn () ?*c_api.godot_object = null;

pub const Container = struct {
    const Self = @This();
    pub const BaseClass = godot.Control;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_container_constructor == null) {
            mbind_container_constructor = try api.createConstructor("Container");
        }
        return api.createObject(Self, mbind_container_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn fitChildInRect(self: *const Self, arg_child: *const godot.Control, arg_rect: *const godot.Rect2) !void {
        if (mbind_fit_child_in_rect == null) {
            mbind_fit_child_in_rect = try api.createMethod("Container", "fit_child_in_rect");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_child),
            @ptrCast(*const anyopaque, arg_rect),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_fit_child_in_rect, base, cargs, result);
    }

    pub fn queueSort(self: *const Self) !void {
        if (mbind_queue_sort == null) {
            mbind_queue_sort = try api.createMethod("Container", "queue_sort");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_queue_sort, base, cargs, result);
    }
};