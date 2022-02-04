// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Reference = @import("reference.zig").Reference;

// method bindings
var mbind_execute: ?*c_api.godot_method_bind = null;
var mbind_get_error_text: ?*c_api.godot_method_bind = null;
var mbind_has_execute_failed: ?*c_api.godot_method_bind = null;
var mbind_parse: ?*c_api.godot_method_bind = null;
var mbind_expression_constructor: ?fn () ?*c_api.godot_object = null;

pub const Expression = struct {
    const Self = @This();
    const BaseClass = Reference;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_expression_constructor == null) {
            mbind_expression_constructor = try api.createConstructor("Expression");
        }
        return api.createObject(Self, mbind_expression_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn execute(self: *const Self, arg_inputs: *const godot.Array, arg_base_instance: *const godot.Object, arg_show_error: bool) !godot.Variant {
        if (mbind_execute == null) {
            mbind_execute = try api.createMethod("Expression", "execute");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_inputs),
            @ptrCast(*const anyopaque, arg_base_instance),
            @ptrCast(*const anyopaque, *arg_show_error),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_execute, base, cargs, result);
        return @ptrCast(*godot.Variant, @alignCast(@alignOf(&godot.Variant), result)).*;
    }

    pub fn getErrorText(self: *const Self) !godot.String {
        if (mbind_get_error_text == null) {
            mbind_get_error_text = try api.createMethod("Expression", "get_error_text");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_error_text, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn hasExecuteFailed(self: *const Self) !bool {
        if (mbind_has_execute_failed == null) {
            mbind_has_execute_failed = try api.createMethod("Expression", "has_execute_failed");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_has_execute_failed, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn parse(self: *const Self, arg_expression: *const godot.String, arg_input_names: *const godot.PoolStringArray) !i32 {
        if (mbind_parse == null) {
            mbind_parse = try api.createMethod("Expression", "parse");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_expression),
            @ptrCast(*const anyopaque, arg_input_names),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_parse, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }
};