// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const VisualScriptNode = @import("visual_script_node.zig").VisualScriptNode;

// method bindings
var mbind_get_math_constant: ?*c_api.godot_method_bind = null;
var mbind_set_math_constant: ?*c_api.godot_method_bind = null;
var mbind_visual_script_math_constant_constructor: ?fn () ?*c_api.godot_object = null;

pub const VisualScriptMathConstant = struct {
    const Self = @This();
    const BaseClass = VisualScriptNode;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_visual_script_math_constant_constructor == null) {
            mbind_visual_script_math_constant_constructor = try api.createConstructor("VisualScriptMathConstant");
        }
        return api.createObject(Self, mbind_visual_script_math_constant_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getMathConstant(self: *const Self) !i32 {
        if (mbind_get_math_constant == null) {
            mbind_get_math_constant = try api.createMethod("VisualScriptMathConstant", "get_math_constant");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_math_constant, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn setMathConstant(self: *const Self, arg_which: i32) !void {
        if (mbind_set_math_constant == null) {
            mbind_set_math_constant = try api.createMethod("VisualScriptMathConstant", "set_math_constant");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_which),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_math_constant, base, cargs, result);
    }
};