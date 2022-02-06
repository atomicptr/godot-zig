// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_steps: ?*c_api.godot_method_bind = null;
var mbind_set_steps: ?*c_api.godot_method_bind = null;
var mbind_visual_script_sequence_constructor: ?fn () ?*c_api.godot_object = null;

pub const VisualScriptSequence = struct {
    const Self = @This();
    pub const BaseClass = godot.VisualScriptNode;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_visual_script_sequence_constructor == null) {
            mbind_visual_script_sequence_constructor = try api.createConstructor("VisualScriptSequence");
        }
        return api.createObject(Self, mbind_visual_script_sequence_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getSteps(self: *const Self) !i32 {
        if (mbind_get_steps == null) {
            mbind_get_steps = try api.createMethod("VisualScriptSequence", "get_steps");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_steps, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn setSteps(self: *const Self, arg_steps: i32) !void {
        if (mbind_set_steps == null) {
            mbind_set_steps = try api.createMethod("VisualScriptSequence", "set_steps");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_steps),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_steps, base, cargs, result);
    }
};