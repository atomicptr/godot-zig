// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const ARVRInterface = @import("arvrinterface.zig").ARVRInterface;

var mbind_arvrinterface_gdnative_constructor: ?fn () ?*c_api.godot_object = null;

pub const ARVRInterfaceGDNative = struct {
    const Self = @This();
    const BaseClass = ARVRInterface;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_arvrinterface_gdnative_constructor == null) {
            mbind_arvrinterface_gdnative_constructor = try api.createConstructor("ARVRInterfaceGDNative");
        }
        return api.createObject(Self, mbind_arvrinterface_gdnative_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }
};