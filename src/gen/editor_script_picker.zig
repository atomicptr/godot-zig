// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const EditorResourcePicker = @import("editor_resource_picker.zig").EditorResourcePicker;

// method bindings
var mbind_get_script_owner: ?*c_api.godot_method_bind = null;
var mbind_set_script_owner: ?*c_api.godot_method_bind = null;
var mbind_editor_script_picker_constructor: ?fn () ?*c_api.godot_object = null;

pub const EditorScriptPicker = struct {
    const Self = @This();
    const BaseClass = EditorResourcePicker;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_editor_script_picker_constructor == null) {
            mbind_editor_script_picker_constructor = try api.createConstructor("EditorScriptPicker");
        }
        return api.createObject(Self, mbind_editor_script_picker_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getScriptOwner(self: *const Self) !godot.Node {
        if (mbind_get_script_owner == null) {
            mbind_get_script_owner = try api.createMethod("EditorScriptPicker", "get_script_owner");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_script_owner, base, cargs, result);
        return @ptrCast(*godot.Node, @alignCast(@alignOf(&godot.Node), result)).*;
    }

    pub fn setScriptOwner(self: *const Self, arg_owner_node: *const godot.Node) !void {
        if (mbind_set_script_owner == null) {
            mbind_set_script_owner = try api.createMethod("EditorScriptPicker", "set_script_owner");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_owner_node),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_script_owner, base, cargs, result);
    }
};