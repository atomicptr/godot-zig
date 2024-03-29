// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_wrap: ?*c_api.godot_method_bind = null;
var mbind_java_class_wrapper_constructor: ?fn () ?*c_api.godot_object = null;

pub const JavaClassWrapper = struct {
    const Self = @This();
    pub const BaseClass = godot.Object;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_java_class_wrapper_constructor == null) {
            mbind_java_class_wrapper_constructor = try api.createConstructor("JavaClassWrapper");
        }
        return api.createObject(Self, mbind_java_class_wrapper_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn wrap(self: *const Self, arg_name: *const godot.String) !godot.JavaClass {
        if (mbind_wrap == null) {
            mbind_wrap = try api.createMethod("JavaClassWrapper", "wrap");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_wrap, base, cargs, result);
        return @ptrCast(*godot.JavaClass, @alignCast(@alignOf(&godot.JavaClass), result)).*;
    }
};