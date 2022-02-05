// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const VisualScriptNode = @import("visual_script_node.zig").VisualScriptNode;

// method bindings
var mbind_get_singleton: ?*c_api.godot_method_bind = null;
var mbind_set_singleton: ?*c_api.godot_method_bind = null;
var mbind_visual_script_engine_singleton_constructor: ?fn () ?*c_api.godot_object = null;

pub const VisualScriptEngineSingleton = struct {
    const Self = @This();
    const BaseClass = VisualScriptNode;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_visual_script_engine_singleton_constructor == null) {
            mbind_visual_script_engine_singleton_constructor = try api.createConstructor("VisualScriptEngineSingleton");
        }
        return api.createObject(Self, mbind_visual_script_engine_singleton_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getSingleton(self: *const Self) !godot.String {
        if (mbind_get_singleton == null) {
            mbind_get_singleton = try api.createMethod("VisualScriptEngineSingleton", "get_singleton");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_singleton, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn setSingleton(self: *const Self, arg_name: *const godot.String) !void {
        if (mbind_set_singleton == null) {
            mbind_set_singleton = try api.createMethod("VisualScriptEngineSingleton", "set_singleton");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_singleton, base, cargs, result);
    }
};