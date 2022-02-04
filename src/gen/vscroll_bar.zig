// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const ScrollBar = @import("scroll_bar.zig").ScrollBar;

var mbind_vscroll_bar_constructor: ?fn () ?*c_api.godot_object = null;

pub const VScrollBar = struct {
    const Self = @This();
    const BaseClass = ScrollBar;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_vscroll_bar_constructor == null) {
            mbind_vscroll_bar_constructor = try api.createConstructor("VScrollBar");
        }
        return api.createObject(Self, mbind_vscroll_bar_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }
};