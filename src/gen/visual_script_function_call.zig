// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const VisualScriptNode = @import("visual_script_node.zig").VisualScriptNode;

// method bindings
var mbind_get_base_path: ?*c_api.godot_method_bind = null;
var mbind_get_base_script: ?*c_api.godot_method_bind = null;
var mbind_get_base_type: ?*c_api.godot_method_bind = null;
var mbind_get_basic_type: ?*c_api.godot_method_bind = null;
var mbind_get_call_mode: ?*c_api.godot_method_bind = null;
var mbind_get_function: ?*c_api.godot_method_bind = null;
var mbind_get_rpc_call_mode: ?*c_api.godot_method_bind = null;
var mbind_get_singleton: ?*c_api.godot_method_bind = null;
var mbind_get_use_default_args: ?*c_api.godot_method_bind = null;
var mbind_get_validate: ?*c_api.godot_method_bind = null;
var mbind_set_base_path: ?*c_api.godot_method_bind = null;
var mbind_set_base_script: ?*c_api.godot_method_bind = null;
var mbind_set_base_type: ?*c_api.godot_method_bind = null;
var mbind_set_basic_type: ?*c_api.godot_method_bind = null;
var mbind_set_call_mode: ?*c_api.godot_method_bind = null;
var mbind_set_function: ?*c_api.godot_method_bind = null;
var mbind_set_rpc_call_mode: ?*c_api.godot_method_bind = null;
var mbind_set_singleton: ?*c_api.godot_method_bind = null;
var mbind_set_use_default_args: ?*c_api.godot_method_bind = null;
var mbind_set_validate: ?*c_api.godot_method_bind = null;
var mbind_visual_script_function_call_constructor: ?fn () ?*c_api.godot_object = null;

pub const VisualScriptFunctionCall = struct {
    const Self = @This();
    const BaseClass = VisualScriptNode;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_visual_script_function_call_constructor == null) {
            mbind_visual_script_function_call_constructor = try api.createConstructor("VisualScriptFunctionCall");
        }
        return api.createObject(Self, mbind_visual_script_function_call_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getBasePath(self: *const Self) !godot.NodePath {
        if (mbind_get_base_path == null) {
            mbind_get_base_path = try api.createMethod("VisualScriptFunctionCall", "get_base_path");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_base_path, base, cargs, result);
        return @ptrCast(*godot.NodePath, @alignCast(@alignOf(&godot.NodePath), result)).*;
    }

    pub fn getBaseScript(self: *const Self) !godot.String {
        if (mbind_get_base_script == null) {
            mbind_get_base_script = try api.createMethod("VisualScriptFunctionCall", "get_base_script");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_base_script, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getBaseType(self: *const Self) !godot.String {
        if (mbind_get_base_type == null) {
            mbind_get_base_type = try api.createMethod("VisualScriptFunctionCall", "get_base_type");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_base_type, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getBasicType(self: *const Self) !i32 {
        if (mbind_get_basic_type == null) {
            mbind_get_basic_type = try api.createMethod("VisualScriptFunctionCall", "get_basic_type");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_basic_type, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getCallMode(self: *const Self) !i32 {
        if (mbind_get_call_mode == null) {
            mbind_get_call_mode = try api.createMethod("VisualScriptFunctionCall", "get_call_mode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_call_mode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getFunction(self: *const Self) !godot.String {
        if (mbind_get_function == null) {
            mbind_get_function = try api.createMethod("VisualScriptFunctionCall", "get_function");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_function, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getRpcCallMode(self: *const Self) !i32 {
        if (mbind_get_rpc_call_mode == null) {
            mbind_get_rpc_call_mode = try api.createMethod("VisualScriptFunctionCall", "get_rpc_call_mode");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_rpc_call_mode, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getSingleton(self: *const Self) !godot.String {
        if (mbind_get_singleton == null) {
            mbind_get_singleton = try api.createMethod("VisualScriptFunctionCall", "get_singleton");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_singleton, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getUseDefaultArgs(self: *const Self) !i32 {
        if (mbind_get_use_default_args == null) {
            mbind_get_use_default_args = try api.createMethod("VisualScriptFunctionCall", "get_use_default_args");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_use_default_args, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getValidate(self: *const Self) !bool {
        if (mbind_get_validate == null) {
            mbind_get_validate = try api.createMethod("VisualScriptFunctionCall", "get_validate");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_validate, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setBasePath(self: *const Self, arg_base_path: *const godot.NodePath) !void {
        if (mbind_set_base_path == null) {
            mbind_set_base_path = try api.createMethod("VisualScriptFunctionCall", "set_base_path");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_base_path),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_base_path, base, cargs, result);
    }

    pub fn setBaseScript(self: *const Self, arg_base_script: *const godot.String) !void {
        if (mbind_set_base_script == null) {
            mbind_set_base_script = try api.createMethod("VisualScriptFunctionCall", "set_base_script");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_base_script),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_base_script, base, cargs, result);
    }

    pub fn setBaseType(self: *const Self, arg_base_type: *const godot.String) !void {
        if (mbind_set_base_type == null) {
            mbind_set_base_type = try api.createMethod("VisualScriptFunctionCall", "set_base_type");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_base_type),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_base_type, base, cargs, result);
    }

    pub fn setBasicType(self: *const Self, arg_basic_type: i32) !void {
        if (mbind_set_basic_type == null) {
            mbind_set_basic_type = try api.createMethod("VisualScriptFunctionCall", "set_basic_type");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_basic_type),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_basic_type, base, cargs, result);
    }

    pub fn setCallMode(self: *const Self, arg_mode: i32) !void {
        if (mbind_set_call_mode == null) {
            mbind_set_call_mode = try api.createMethod("VisualScriptFunctionCall", "set_call_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_call_mode, base, cargs, result);
    }

    pub fn setFunction(self: *const Self, arg_function: *const godot.String) !void {
        if (mbind_set_function == null) {
            mbind_set_function = try api.createMethod("VisualScriptFunctionCall", "set_function");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_function),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_function, base, cargs, result);
    }

    pub fn setRpcCallMode(self: *const Self, arg_mode: i32) !void {
        if (mbind_set_rpc_call_mode == null) {
            mbind_set_rpc_call_mode = try api.createMethod("VisualScriptFunctionCall", "set_rpc_call_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_rpc_call_mode, base, cargs, result);
    }

    pub fn setSingleton(self: *const Self, arg_singleton: *const godot.String) !void {
        if (mbind_set_singleton == null) {
            mbind_set_singleton = try api.createMethod("VisualScriptFunctionCall", "set_singleton");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_singleton),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_singleton, base, cargs, result);
    }

    pub fn setUseDefaultArgs(self: *const Self, arg_amount: i32) !void {
        if (mbind_set_use_default_args == null) {
            mbind_set_use_default_args = try api.createMethod("VisualScriptFunctionCall", "set_use_default_args");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_amount),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_use_default_args, base, cargs, result);
    }

    pub fn setValidate(self: *const Self, arg_enable: bool) !void {
        if (mbind_set_validate == null) {
            mbind_set_validate = try api.createMethod("VisualScriptFunctionCall", "set_validate");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_validate, base, cargs, result);
    }
};