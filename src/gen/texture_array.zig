// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_create: ?*c_api.godot_method_bind = null;
var mbind_texture_array_constructor: ?fn () ?*c_api.godot_object = null;

pub const TextureArray = struct {
    const Self = @This();
    pub const BaseClass = godot.TextureLayered;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_texture_array_constructor == null) {
            mbind_texture_array_constructor = try api.createConstructor("TextureArray");
        }
        return api.createObject(Self, mbind_texture_array_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn create(self: *const Self, arg_width: i32, arg_height: i32, arg_depth: i32, arg_format: i32, arg_flags: i32) !void {
        if (mbind_create == null) {
            mbind_create = try api.createMethod("TextureArray", "create");
        }

        var result: ?*anyopaque = null;
        var args: [5]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_width),
            @ptrCast(*const anyopaque, *arg_height),
            @ptrCast(*const anyopaque, *arg_depth),
            @ptrCast(*const anyopaque, *arg_format),
            @ptrCast(*const anyopaque, *arg_flags),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_create, base, cargs, result);
    }
};