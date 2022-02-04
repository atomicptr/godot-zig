// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const AnimationNode = @import("animation_node.zig").AnimationNode;

// method bindings
var mbind_is_using_sync: ?*c_api.godot_method_bind = null;
var mbind_set_use_sync: ?*c_api.godot_method_bind = null;
var mbind_animation_node_blend_3_constructor: ?fn () ?*c_api.godot_object = null;

pub const AnimationNodeBlend3 = struct {
    const Self = @This();
    const BaseClass = AnimationNode;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_animation_node_blend_3_constructor == null) {
            mbind_animation_node_blend_3_constructor = try api.createConstructor("AnimationNodeBlend3");
        }
        return api.createObject(Self, mbind_animation_node_blend_3_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn isUsingSync(self: *const Self) !bool {
        if (mbind_is_using_sync == null) {
            mbind_is_using_sync = try api.createMethod("AnimationNodeBlend3", "is_using_sync");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_using_sync, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setUseSync(self: *const Self, arg_enable: bool) !void {
        if (mbind_set_use_sync == null) {
            mbind_set_use_sync = try api.createMethod("AnimationNodeBlend3", "set_use_sync");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_use_sync, base, cargs, result);
    }
};