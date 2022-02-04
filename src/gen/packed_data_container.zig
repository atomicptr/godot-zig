// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Resource = @import("resource.zig").Resource;

// method bindings
var mbind_pack: ?*c_api.godot_method_bind = null;
var mbind_size: ?*c_api.godot_method_bind = null;
var mbind_packed_data_container_constructor: ?fn () ?*c_api.godot_object = null;

pub const PackedDataContainer = struct {
    const Self = @This();
    const BaseClass = Resource;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_packed_data_container_constructor == null) {
            mbind_packed_data_container_constructor = try api.createConstructor("PackedDataContainer");
        }
        return api.createObject(Self, mbind_packed_data_container_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn pack(self: *const Self, arg_value: *const godot.Variant) !i32 {
        if (mbind_pack == null) {
            mbind_pack = try api.createMethod("PackedDataContainer", "pack");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_value),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_pack, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn size(self: *const Self) !i32 {
        if (mbind_size == null) {
            mbind_size = try api.createMethod("PackedDataContainer", "size");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_size, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }
};