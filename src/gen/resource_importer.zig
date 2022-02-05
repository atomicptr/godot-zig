// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Reference = @import("reference.zig").Reference;

var mbind_resource_importer_constructor: ?fn () ?*c_api.godot_object = null;

pub const ResourceImporter = struct {
    const Self = @This();
    const BaseClass = Reference;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_resource_importer_constructor == null) {
            mbind_resource_importer_constructor = try api.createConstructor("ResourceImporter");
        }
        return api.createObject(Self, mbind_resource_importer_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }
};