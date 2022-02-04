// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Reference = @import("reference.zig").Reference;

// method bindings
var mbind_editor_resource_preview_generator_constructor: ?fn () ?*c_api.godot_object = null;

pub const EditorResourcePreviewGenerator = struct {
    const Self = @This();
    const BaseClass = Reference;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_editor_resource_preview_generator_constructor == null) {
            mbind_editor_resource_preview_generator_constructor = try api.createConstructor("EditorResourcePreviewGenerator");
        }
        return api.createObject(Self, mbind_editor_resource_preview_generator_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }
};