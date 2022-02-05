// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const VisualScriptNode = @import("visual_script_node.zig").VisualScriptNode;

var mbind_visual_script_scene_tree_constructor: ?fn () ?*c_api.godot_object = null;

pub const VisualScriptSceneTree = struct {
    const Self = @This();
    const BaseClass = VisualScriptNode;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_visual_script_scene_tree_constructor == null) {
            mbind_visual_script_scene_tree_constructor = try api.createConstructor("VisualScriptSceneTree");
        }
        return api.createObject(Self, mbind_visual_script_scene_tree_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }
};