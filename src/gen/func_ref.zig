// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_call_func: ?*c_api.godot_method_bind = null;
var mbind_call_funcv: ?*c_api.godot_method_bind = null;
var mbind_get_function: ?*c_api.godot_method_bind = null;
var mbind_is_valid: ?*c_api.godot_method_bind = null;
var mbind_set_function: ?*c_api.godot_method_bind = null;
var mbind_set_instance: ?*c_api.godot_method_bind = null;
var mbind_func_ref_constructor: ?fn () ?*c_api.godot_object = null;

pub const FuncRef = struct {
    const Self = @This();
    pub const BaseClass = godot.Reference;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_func_ref_constructor == null) {
            mbind_func_ref_constructor = try api.createConstructor("FuncRef");
        }
        return api.createObject(Self, mbind_func_ref_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn callFunc(self: *const Self) !godot.Variant {
        if (mbind_call_func == null) {
            mbind_call_func = try api.createMethod("FuncRef", "call_func");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_call_func, base, cargs, result);
        return @ptrCast(*godot.Variant, @alignCast(@alignOf(&godot.Variant), result)).*;
    }

    pub fn callFuncv(self: *const Self, arg_arg_array: *const godot.Array) !godot.Variant {
        if (mbind_call_funcv == null) {
            mbind_call_funcv = try api.createMethod("FuncRef", "call_funcv");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_arg_array),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_call_funcv, base, cargs, result);
        return @ptrCast(*godot.Variant, @alignCast(@alignOf(&godot.Variant), result)).*;
    }

    pub fn getFunction(self: *const Self) !godot.String {
        if (mbind_get_function == null) {
            mbind_get_function = try api.createMethod("FuncRef", "get_function");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_function, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn isValid(self: *const Self) !bool {
        if (mbind_is_valid == null) {
            mbind_is_valid = try api.createMethod("FuncRef", "is_valid");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_valid, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setFunction(self: *const Self, arg_name: *const godot.String) !void {
        if (mbind_set_function == null) {
            mbind_set_function = try api.createMethod("FuncRef", "set_function");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_function, base, cargs, result);
    }

    pub fn setInstance(self: *const Self, arg_instance: *const godot.Object) !void {
        if (mbind_set_instance == null) {
            mbind_set_instance = try api.createMethod("FuncRef", "set_instance");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_instance),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_instance, base, cargs, result);
    }
};