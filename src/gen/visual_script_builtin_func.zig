// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_func: ?*c_api.godot_method_bind = null;
var mbind_set_func: ?*c_api.godot_method_bind = null;
var mbind_visual_script_builtin_func_constructor: ?fn () ?*c_api.godot_object = null;

pub const VisualScriptBuiltinFunc = struct {
    const Self = @This();
    pub const BaseClass = godot.VisualScriptNode;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_visual_script_builtin_func_constructor == null) {
            mbind_visual_script_builtin_func_constructor = try api.createConstructor("VisualScriptBuiltinFunc");
        }
        return api.createObject(Self, mbind_visual_script_builtin_func_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getFunc(self: *const Self) !i32 {
        if (mbind_get_func == null) {
            mbind_get_func = try api.createMethod("VisualScriptBuiltinFunc", "get_func");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_func, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn setFunc(self: *const Self, arg_which: i32) !void {
        if (mbind_set_func == null) {
            mbind_set_func = try api.createMethod("VisualScriptBuiltinFunc", "set_func");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_which),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_func, base, cargs, result);
    }
};