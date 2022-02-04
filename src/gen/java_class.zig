// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Reference = @import("reference.zig").Reference;

var mbind_java_class_constructor: ?fn () ?*c_api.godot_object = null;

pub const JavaClass = struct {
    const Self = @This();
    const BaseClass = Reference;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_java_class_constructor == null) {
            mbind_java_class_constructor = try api.createConstructor("JavaClass");
        }
        return api.createObject(Self, mbind_java_class_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }
};