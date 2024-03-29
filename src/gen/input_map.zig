// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_action_add_event: ?*c_api.godot_method_bind = null;
var mbind_action_erase_event: ?*c_api.godot_method_bind = null;
var mbind_action_erase_events: ?*c_api.godot_method_bind = null;
var mbind_action_get_deadzone: ?*c_api.godot_method_bind = null;
var mbind_action_has_event: ?*c_api.godot_method_bind = null;
var mbind_action_set_deadzone: ?*c_api.godot_method_bind = null;
var mbind_add_action: ?*c_api.godot_method_bind = null;
var mbind_erase_action: ?*c_api.godot_method_bind = null;
var mbind_event_is_action: ?*c_api.godot_method_bind = null;
var mbind_get_action_list: ?*c_api.godot_method_bind = null;
var mbind_get_actions: ?*c_api.godot_method_bind = null;
var mbind_has_action: ?*c_api.godot_method_bind = null;
var mbind_load_from_globals: ?*c_api.godot_method_bind = null;
var mbind_input_map_constructor: ?fn () ?*c_api.godot_object = null;

pub const InputMap = struct {
    const Self = @This();
    pub const BaseClass = godot.Object;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_input_map_constructor == null) {
            mbind_input_map_constructor = try api.createConstructor("InputMap");
        }
        return api.createObject(Self, mbind_input_map_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn actionAddEvent(self: *const Self, arg_action: *const godot.String, arg_event: *const godot.InputEvent) !void {
        if (mbind_action_add_event == null) {
            mbind_action_add_event = try api.createMethod("InputMap", "action_add_event");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_action),
            @ptrCast(*const anyopaque, arg_event),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_action_add_event, base, cargs, result);
    }

    pub fn actionEraseEvent(self: *const Self, arg_action: *const godot.String, arg_event: *const godot.InputEvent) !void {
        if (mbind_action_erase_event == null) {
            mbind_action_erase_event = try api.createMethod("InputMap", "action_erase_event");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_action),
            @ptrCast(*const anyopaque, arg_event),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_action_erase_event, base, cargs, result);
    }

    pub fn actionEraseEvents(self: *const Self, arg_action: *const godot.String) !void {
        if (mbind_action_erase_events == null) {
            mbind_action_erase_events = try api.createMethod("InputMap", "action_erase_events");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_action),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_action_erase_events, base, cargs, result);
    }

    pub fn actionGetDeadzone(self: *const Self, arg_action: *const godot.String) !f32 {
        if (mbind_action_get_deadzone == null) {
            mbind_action_get_deadzone = try api.createMethod("InputMap", "action_get_deadzone");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_action),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_action_get_deadzone, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn actionHasEvent(self: *const Self, arg_action: *const godot.String, arg_event: *const godot.InputEvent) !bool {
        if (mbind_action_has_event == null) {
            mbind_action_has_event = try api.createMethod("InputMap", "action_has_event");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_action),
            @ptrCast(*const anyopaque, arg_event),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_action_has_event, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn actionSetDeadzone(self: *const Self, arg_action: *const godot.String, arg_deadzone: f32) !void {
        if (mbind_action_set_deadzone == null) {
            mbind_action_set_deadzone = try api.createMethod("InputMap", "action_set_deadzone");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_action),
            @ptrCast(*const anyopaque, *arg_deadzone),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_action_set_deadzone, base, cargs, result);
    }

    pub fn addAction(self: *const Self, arg_action: *const godot.String, arg_deadzone: f32) !void {
        if (mbind_add_action == null) {
            mbind_add_action = try api.createMethod("InputMap", "add_action");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_action),
            @ptrCast(*const anyopaque, *arg_deadzone),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_action, base, cargs, result);
    }

    pub fn eraseAction(self: *const Self, arg_action: *const godot.String) !void {
        if (mbind_erase_action == null) {
            mbind_erase_action = try api.createMethod("InputMap", "erase_action");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_action),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_erase_action, base, cargs, result);
    }

    pub fn eventIsAction(self: *const Self, arg_event: *const godot.InputEvent, arg_action: *const godot.String, arg_exact_match: bool) !bool {
        if (mbind_event_is_action == null) {
            mbind_event_is_action = try api.createMethod("InputMap", "event_is_action");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_event),
            @ptrCast(*const anyopaque, arg_action),
            @ptrCast(*const anyopaque, *arg_exact_match),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_event_is_action, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getActionList(self: *const Self, arg_action: *const godot.String) !godot.Array {
        if (mbind_get_action_list == null) {
            mbind_get_action_list = try api.createMethod("InputMap", "get_action_list");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_action),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_action_list, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getActions(self: *const Self) !godot.Array {
        if (mbind_get_actions == null) {
            mbind_get_actions = try api.createMethod("InputMap", "get_actions");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_actions, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn hasAction(self: *const Self, arg_action: *const godot.String) !bool {
        if (mbind_has_action == null) {
            mbind_has_action = try api.createMethod("InputMap", "has_action");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_action),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_has_action, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn loadFromGlobals(self: *const Self) !void {
        if (mbind_load_from_globals == null) {
            mbind_load_from_globals = try api.createMethod("InputMap", "load_from_globals");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_load_from_globals, base, cargs, result);
    }
};