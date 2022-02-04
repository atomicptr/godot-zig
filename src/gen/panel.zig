// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Control = @import("control.zig").Control;

var mbind_panel_constructor: ?fn () ?*c_api.godot_object = null;

pub const Panel = struct {
    const Self = @This();
    const BaseClass = Control;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_panel_constructor == null) {
            mbind_panel_constructor = try api.createConstructor("Panel");
        }
        return api.createObject(Self, mbind_panel_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }
};