// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Button = @import("button.zig").Button;

var mbind_tool_button_constructor: ?fn () ?*c_api.godot_object = null;

pub const ToolButton = struct {
    const Self = @This();
    const BaseClass = Button;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_tool_button_constructor == null) {
            mbind_tool_button_constructor = try api.createConstructor("ToolButton");
        }
        return api.createObject(Self, mbind_tool_button_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }
};