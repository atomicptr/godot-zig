// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_basic_type: ?*c_api.godot_method_bind = null;
var mbind_get_basic_type_constant: ?*c_api.godot_method_bind = null;
var mbind_set_basic_type: ?*c_api.godot_method_bind = null;
var mbind_set_basic_type_constant: ?*c_api.godot_method_bind = null;
var mbind_visual_script_basic_type_constant_constructor: ?fn () ?*c_api.godot_object = null;

pub const VisualScriptBasicTypeConstant = struct {
    const Self = @This();
    pub const BaseClass = godot.VisualScriptNode;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_visual_script_basic_type_constant_constructor == null) {
            mbind_visual_script_basic_type_constant_constructor = try api.createConstructor("VisualScriptBasicTypeConstant");
        }
        return api.createObject(Self, mbind_visual_script_basic_type_constant_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getBasicType(self: *const Self) !i32 {
        if (mbind_get_basic_type == null) {
            mbind_get_basic_type = try api.createMethod("VisualScriptBasicTypeConstant", "get_basic_type");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_basic_type, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getBasicTypeConstant(self: *const Self) !godot.String {
        if (mbind_get_basic_type_constant == null) {
            mbind_get_basic_type_constant = try api.createMethod("VisualScriptBasicTypeConstant", "get_basic_type_constant");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_basic_type_constant, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn setBasicType(self: *const Self, arg_name: i32) !void {
        if (mbind_set_basic_type == null) {
            mbind_set_basic_type = try api.createMethod("VisualScriptBasicTypeConstant", "set_basic_type");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_basic_type, base, cargs, result);
    }

    pub fn setBasicTypeConstant(self: *const Self, arg_name: *const godot.String) !void {
        if (mbind_set_basic_type_constant == null) {
            mbind_set_basic_type_constant = try api.createMethod("VisualScriptBasicTypeConstant", "set_basic_type_constant");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_basic_type_constant, base, cargs, result);
    }
};