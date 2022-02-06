// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

var mbind_animation_root_node_constructor: ?fn () ?*c_api.godot_object = null;

pub const AnimationRootNode = struct {
    const Self = @This();
    pub const BaseClass = godot.AnimationNode;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_animation_root_node_constructor == null) {
            mbind_animation_root_node_constructor = try api.createConstructor("AnimationRootNode");
        }
        return api.createObject(Self, mbind_animation_root_node_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }
};