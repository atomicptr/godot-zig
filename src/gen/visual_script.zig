// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_add_custom_signal: ?*c_api.godot_method_bind = null;
var mbind_add_function: ?*c_api.godot_method_bind = null;
var mbind_add_node: ?*c_api.godot_method_bind = null;
var mbind_add_variable: ?*c_api.godot_method_bind = null;
var mbind_custom_signal_add_argument: ?*c_api.godot_method_bind = null;
var mbind_custom_signal_get_argument_count: ?*c_api.godot_method_bind = null;
var mbind_custom_signal_get_argument_name: ?*c_api.godot_method_bind = null;
var mbind_custom_signal_get_argument_type: ?*c_api.godot_method_bind = null;
var mbind_custom_signal_remove_argument: ?*c_api.godot_method_bind = null;
var mbind_custom_signal_set_argument_name: ?*c_api.godot_method_bind = null;
var mbind_custom_signal_set_argument_type: ?*c_api.godot_method_bind = null;
var mbind_custom_signal_swap_argument: ?*c_api.godot_method_bind = null;
var mbind_data_connect: ?*c_api.godot_method_bind = null;
var mbind_data_disconnect: ?*c_api.godot_method_bind = null;
var mbind_get_function_node_id: ?*c_api.godot_method_bind = null;
var mbind_get_function_scroll: ?*c_api.godot_method_bind = null;
var mbind_get_node: ?*c_api.godot_method_bind = null;
var mbind_get_node_position: ?*c_api.godot_method_bind = null;
var mbind_get_variable_default_value: ?*c_api.godot_method_bind = null;
var mbind_get_variable_export: ?*c_api.godot_method_bind = null;
var mbind_get_variable_info: ?*c_api.godot_method_bind = null;
var mbind_has_custom_signal: ?*c_api.godot_method_bind = null;
var mbind_has_data_connection: ?*c_api.godot_method_bind = null;
var mbind_has_function: ?*c_api.godot_method_bind = null;
var mbind_has_node: ?*c_api.godot_method_bind = null;
var mbind_has_sequence_connection: ?*c_api.godot_method_bind = null;
var mbind_has_variable: ?*c_api.godot_method_bind = null;
var mbind_remove_custom_signal: ?*c_api.godot_method_bind = null;
var mbind_remove_function: ?*c_api.godot_method_bind = null;
var mbind_remove_node: ?*c_api.godot_method_bind = null;
var mbind_remove_variable: ?*c_api.godot_method_bind = null;
var mbind_rename_custom_signal: ?*c_api.godot_method_bind = null;
var mbind_rename_function: ?*c_api.godot_method_bind = null;
var mbind_rename_variable: ?*c_api.godot_method_bind = null;
var mbind_sequence_connect: ?*c_api.godot_method_bind = null;
var mbind_sequence_disconnect: ?*c_api.godot_method_bind = null;
var mbind_set_function_scroll: ?*c_api.godot_method_bind = null;
var mbind_set_instance_base_type: ?*c_api.godot_method_bind = null;
var mbind_set_node_position: ?*c_api.godot_method_bind = null;
var mbind_set_variable_default_value: ?*c_api.godot_method_bind = null;
var mbind_set_variable_export: ?*c_api.godot_method_bind = null;
var mbind_set_variable_info: ?*c_api.godot_method_bind = null;
var mbind_visual_script_constructor: ?fn () ?*c_api.godot_object = null;

pub const VisualScript = struct {
    const Self = @This();
    pub const BaseClass = godot.Script;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_visual_script_constructor == null) {
            mbind_visual_script_constructor = try api.createConstructor("VisualScript");
        }
        return api.createObject(Self, mbind_visual_script_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn addCustomSignal(self: *const Self, arg_name: *const godot.String) !void {
        if (mbind_add_custom_signal == null) {
            mbind_add_custom_signal = try api.createMethod("VisualScript", "add_custom_signal");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_custom_signal, base, cargs, result);
    }

    pub fn addFunction(self: *const Self, arg_name: *const godot.String) !void {
        if (mbind_add_function == null) {
            mbind_add_function = try api.createMethod("VisualScript", "add_function");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_function, base, cargs, result);
    }

    pub fn addNode(self: *const Self, arg_func: *const godot.String, arg_id: i32, arg_node: *const godot.VisualScriptNode, arg_position: *const godot.Vector2) !void {
        if (mbind_add_node == null) {
            mbind_add_node = try api.createMethod("VisualScript", "add_node");
        }

        var result: ?*anyopaque = null;
        var args: [4]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_func),
            @ptrCast(*const anyopaque, *arg_id),
            @ptrCast(*const anyopaque, arg_node),
            @ptrCast(*const anyopaque, arg_position),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_node, base, cargs, result);
    }

    pub fn addVariable(self: *const Self, arg_name: *const godot.String, arg_default_value: *const godot.Variant, arg_export: bool) !void {
        if (mbind_add_variable == null) {
            mbind_add_variable = try api.createMethod("VisualScript", "add_variable");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
            @ptrCast(*const anyopaque, arg_default_value),
            @ptrCast(*const anyopaque, *arg_export),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_variable, base, cargs, result);
    }

    pub fn customSignalAddArgument(self: *const Self, arg_name: *const godot.String, arg_type: i32, arg_argname: *const godot.String, arg_index: i32) !void {
        if (mbind_custom_signal_add_argument == null) {
            mbind_custom_signal_add_argument = try api.createMethod("VisualScript", "custom_signal_add_argument");
        }

        var result: ?*anyopaque = null;
        var args: [4]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
            @ptrCast(*const anyopaque, *arg_type),
            @ptrCast(*const anyopaque, arg_argname),
            @ptrCast(*const anyopaque, *arg_index),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_custom_signal_add_argument, base, cargs, result);
    }

    pub fn customSignalGetArgumentCount(self: *const Self, arg_name: *const godot.String) !i32 {
        if (mbind_custom_signal_get_argument_count == null) {
            mbind_custom_signal_get_argument_count = try api.createMethod("VisualScript", "custom_signal_get_argument_count");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_custom_signal_get_argument_count, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn customSignalGetArgumentName(self: *const Self, arg_name: *const godot.String, arg_argidx: i32) !godot.String {
        if (mbind_custom_signal_get_argument_name == null) {
            mbind_custom_signal_get_argument_name = try api.createMethod("VisualScript", "custom_signal_get_argument_name");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
            @ptrCast(*const anyopaque, *arg_argidx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_custom_signal_get_argument_name, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn customSignalGetArgumentType(self: *const Self, arg_name: *const godot.String, arg_argidx: i32) !i32 {
        if (mbind_custom_signal_get_argument_type == null) {
            mbind_custom_signal_get_argument_type = try api.createMethod("VisualScript", "custom_signal_get_argument_type");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
            @ptrCast(*const anyopaque, *arg_argidx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_custom_signal_get_argument_type, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn customSignalRemoveArgument(self: *const Self, arg_name: *const godot.String, arg_argidx: i32) !void {
        if (mbind_custom_signal_remove_argument == null) {
            mbind_custom_signal_remove_argument = try api.createMethod("VisualScript", "custom_signal_remove_argument");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
            @ptrCast(*const anyopaque, *arg_argidx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_custom_signal_remove_argument, base, cargs, result);
    }

    pub fn customSignalSetArgumentName(self: *const Self, arg_name: *const godot.String, arg_argidx: i32, arg_argname: *const godot.String) !void {
        if (mbind_custom_signal_set_argument_name == null) {
            mbind_custom_signal_set_argument_name = try api.createMethod("VisualScript", "custom_signal_set_argument_name");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
            @ptrCast(*const anyopaque, *arg_argidx),
            @ptrCast(*const anyopaque, arg_argname),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_custom_signal_set_argument_name, base, cargs, result);
    }

    pub fn customSignalSetArgumentType(self: *const Self, arg_name: *const godot.String, arg_argidx: i32, arg_type: i32) !void {
        if (mbind_custom_signal_set_argument_type == null) {
            mbind_custom_signal_set_argument_type = try api.createMethod("VisualScript", "custom_signal_set_argument_type");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
            @ptrCast(*const anyopaque, *arg_argidx),
            @ptrCast(*const anyopaque, *arg_type),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_custom_signal_set_argument_type, base, cargs, result);
    }

    pub fn customSignalSwapArgument(self: *const Self, arg_name: *const godot.String, arg_argidx: i32, arg_withidx: i32) !void {
        if (mbind_custom_signal_swap_argument == null) {
            mbind_custom_signal_swap_argument = try api.createMethod("VisualScript", "custom_signal_swap_argument");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
            @ptrCast(*const anyopaque, *arg_argidx),
            @ptrCast(*const anyopaque, *arg_withidx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_custom_signal_swap_argument, base, cargs, result);
    }

    pub fn dataConnect(self: *const Self, arg_func: *const godot.String, arg_from_node: i32, arg_from_port: i32, arg_to_node: i32, arg_to_port: i32) !void {
        if (mbind_data_connect == null) {
            mbind_data_connect = try api.createMethod("VisualScript", "data_connect");
        }

        var result: ?*anyopaque = null;
        var args: [5]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_func),
            @ptrCast(*const anyopaque, *arg_from_node),
            @ptrCast(*const anyopaque, *arg_from_port),
            @ptrCast(*const anyopaque, *arg_to_node),
            @ptrCast(*const anyopaque, *arg_to_port),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_data_connect, base, cargs, result);
    }

    pub fn dataDisconnect(self: *const Self, arg_func: *const godot.String, arg_from_node: i32, arg_from_port: i32, arg_to_node: i32, arg_to_port: i32) !void {
        if (mbind_data_disconnect == null) {
            mbind_data_disconnect = try api.createMethod("VisualScript", "data_disconnect");
        }

        var result: ?*anyopaque = null;
        var args: [5]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_func),
            @ptrCast(*const anyopaque, *arg_from_node),
            @ptrCast(*const anyopaque, *arg_from_port),
            @ptrCast(*const anyopaque, *arg_to_node),
            @ptrCast(*const anyopaque, *arg_to_port),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_data_disconnect, base, cargs, result);
    }

    pub fn getFunctionNodeId(self: *const Self, arg_name: *const godot.String) !i32 {
        if (mbind_get_function_node_id == null) {
            mbind_get_function_node_id = try api.createMethod("VisualScript", "get_function_node_id");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_function_node_id, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getFunctionScroll(self: *const Self, arg_name: *const godot.String) !godot.Vector2 {
        if (mbind_get_function_scroll == null) {
            mbind_get_function_scroll = try api.createMethod("VisualScript", "get_function_scroll");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_function_scroll, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getNode(self: *const Self, arg_func: *const godot.String, arg_id: i32) !godot.VisualScriptNode {
        if (mbind_get_node == null) {
            mbind_get_node = try api.createMethod("VisualScript", "get_node");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_func),
            @ptrCast(*const anyopaque, *arg_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_node, base, cargs, result);
        return @ptrCast(*godot.VisualScriptNode, @alignCast(@alignOf(&godot.VisualScriptNode), result)).*;
    }

    pub fn getNodePosition(self: *const Self, arg_func: *const godot.String, arg_id: i32) !godot.Vector2 {
        if (mbind_get_node_position == null) {
            mbind_get_node_position = try api.createMethod("VisualScript", "get_node_position");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_func),
            @ptrCast(*const anyopaque, *arg_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_node_position, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getVariableDefaultValue(self: *const Self, arg_name: *const godot.String) !godot.Variant {
        if (mbind_get_variable_default_value == null) {
            mbind_get_variable_default_value = try api.createMethod("VisualScript", "get_variable_default_value");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_variable_default_value, base, cargs, result);
        return @ptrCast(*godot.Variant, @alignCast(@alignOf(&godot.Variant), result)).*;
    }

    pub fn getVariableExport(self: *const Self, arg_name: *const godot.String) !bool {
        if (mbind_get_variable_export == null) {
            mbind_get_variable_export = try api.createMethod("VisualScript", "get_variable_export");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_variable_export, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getVariableInfo(self: *const Self, arg_name: *const godot.String) !godot.Dictionary {
        if (mbind_get_variable_info == null) {
            mbind_get_variable_info = try api.createMethod("VisualScript", "get_variable_info");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_variable_info, base, cargs, result);
        return @ptrCast(*godot.Dictionary, @alignCast(@alignOf(&godot.Dictionary), result)).*;
    }

    pub fn hasCustomSignal(self: *const Self, arg_name: *const godot.String) !bool {
        if (mbind_has_custom_signal == null) {
            mbind_has_custom_signal = try api.createMethod("VisualScript", "has_custom_signal");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_has_custom_signal, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn hasDataConnection(self: *const Self, arg_func: *const godot.String, arg_from_node: i32, arg_from_port: i32, arg_to_node: i32, arg_to_port: i32) !bool {
        if (mbind_has_data_connection == null) {
            mbind_has_data_connection = try api.createMethod("VisualScript", "has_data_connection");
        }

        var result: ?*anyopaque = null;
        var args: [5]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_func),
            @ptrCast(*const anyopaque, *arg_from_node),
            @ptrCast(*const anyopaque, *arg_from_port),
            @ptrCast(*const anyopaque, *arg_to_node),
            @ptrCast(*const anyopaque, *arg_to_port),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_has_data_connection, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn hasFunction(self: *const Self, arg_name: *const godot.String) !bool {
        if (mbind_has_function == null) {
            mbind_has_function = try api.createMethod("VisualScript", "has_function");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_has_function, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn hasNode(self: *const Self, arg_func: *const godot.String, arg_id: i32) !bool {
        if (mbind_has_node == null) {
            mbind_has_node = try api.createMethod("VisualScript", "has_node");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_func),
            @ptrCast(*const anyopaque, *arg_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_has_node, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn hasSequenceConnection(self: *const Self, arg_func: *const godot.String, arg_from_node: i32, arg_from_output: i32, arg_to_node: i32) !bool {
        if (mbind_has_sequence_connection == null) {
            mbind_has_sequence_connection = try api.createMethod("VisualScript", "has_sequence_connection");
        }

        var result: ?*anyopaque = null;
        var args: [4]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_func),
            @ptrCast(*const anyopaque, *arg_from_node),
            @ptrCast(*const anyopaque, *arg_from_output),
            @ptrCast(*const anyopaque, *arg_to_node),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_has_sequence_connection, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn hasVariable(self: *const Self, arg_name: *const godot.String) !bool {
        if (mbind_has_variable == null) {
            mbind_has_variable = try api.createMethod("VisualScript", "has_variable");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_has_variable, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn removeCustomSignal(self: *const Self, arg_name: *const godot.String) !void {
        if (mbind_remove_custom_signal == null) {
            mbind_remove_custom_signal = try api.createMethod("VisualScript", "remove_custom_signal");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_remove_custom_signal, base, cargs, result);
    }

    pub fn removeFunction(self: *const Self, arg_name: *const godot.String) !void {
        if (mbind_remove_function == null) {
            mbind_remove_function = try api.createMethod("VisualScript", "remove_function");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_remove_function, base, cargs, result);
    }

    pub fn removeNode(self: *const Self, arg_func: *const godot.String, arg_id: i32) !void {
        if (mbind_remove_node == null) {
            mbind_remove_node = try api.createMethod("VisualScript", "remove_node");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_func),
            @ptrCast(*const anyopaque, *arg_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_remove_node, base, cargs, result);
    }

    pub fn removeVariable(self: *const Self, arg_name: *const godot.String) !void {
        if (mbind_remove_variable == null) {
            mbind_remove_variable = try api.createMethod("VisualScript", "remove_variable");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_remove_variable, base, cargs, result);
    }

    pub fn renameCustomSignal(self: *const Self, arg_name: *const godot.String, arg_new_name: *const godot.String) !void {
        if (mbind_rename_custom_signal == null) {
            mbind_rename_custom_signal = try api.createMethod("VisualScript", "rename_custom_signal");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
            @ptrCast(*const anyopaque, arg_new_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_rename_custom_signal, base, cargs, result);
    }

    pub fn renameFunction(self: *const Self, arg_name: *const godot.String, arg_new_name: *const godot.String) !void {
        if (mbind_rename_function == null) {
            mbind_rename_function = try api.createMethod("VisualScript", "rename_function");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
            @ptrCast(*const anyopaque, arg_new_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_rename_function, base, cargs, result);
    }

    pub fn renameVariable(self: *const Self, arg_name: *const godot.String, arg_new_name: *const godot.String) !void {
        if (mbind_rename_variable == null) {
            mbind_rename_variable = try api.createMethod("VisualScript", "rename_variable");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
            @ptrCast(*const anyopaque, arg_new_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_rename_variable, base, cargs, result);
    }

    pub fn sequenceConnect(self: *const Self, arg_func: *const godot.String, arg_from_node: i32, arg_from_output: i32, arg_to_node: i32) !void {
        if (mbind_sequence_connect == null) {
            mbind_sequence_connect = try api.createMethod("VisualScript", "sequence_connect");
        }

        var result: ?*anyopaque = null;
        var args: [4]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_func),
            @ptrCast(*const anyopaque, *arg_from_node),
            @ptrCast(*const anyopaque, *arg_from_output),
            @ptrCast(*const anyopaque, *arg_to_node),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_sequence_connect, base, cargs, result);
    }

    pub fn sequenceDisconnect(self: *const Self, arg_func: *const godot.String, arg_from_node: i32, arg_from_output: i32, arg_to_node: i32) !void {
        if (mbind_sequence_disconnect == null) {
            mbind_sequence_disconnect = try api.createMethod("VisualScript", "sequence_disconnect");
        }

        var result: ?*anyopaque = null;
        var args: [4]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_func),
            @ptrCast(*const anyopaque, *arg_from_node),
            @ptrCast(*const anyopaque, *arg_from_output),
            @ptrCast(*const anyopaque, *arg_to_node),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_sequence_disconnect, base, cargs, result);
    }

    pub fn setFunctionScroll(self: *const Self, arg_name: *const godot.String, arg_ofs: *const godot.Vector2) !void {
        if (mbind_set_function_scroll == null) {
            mbind_set_function_scroll = try api.createMethod("VisualScript", "set_function_scroll");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
            @ptrCast(*const anyopaque, arg_ofs),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_function_scroll, base, cargs, result);
    }

    pub fn setInstanceBaseType(self: *const Self, arg_type: *const godot.String) !void {
        if (mbind_set_instance_base_type == null) {
            mbind_set_instance_base_type = try api.createMethod("VisualScript", "set_instance_base_type");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_type),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_instance_base_type, base, cargs, result);
    }

    pub fn setNodePosition(self: *const Self, arg_func: *const godot.String, arg_id: i32, arg_position: *const godot.Vector2) !void {
        if (mbind_set_node_position == null) {
            mbind_set_node_position = try api.createMethod("VisualScript", "set_node_position");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_func),
            @ptrCast(*const anyopaque, *arg_id),
            @ptrCast(*const anyopaque, arg_position),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_node_position, base, cargs, result);
    }

    pub fn setVariableDefaultValue(self: *const Self, arg_name: *const godot.String, arg_value: *const godot.Variant) !void {
        if (mbind_set_variable_default_value == null) {
            mbind_set_variable_default_value = try api.createMethod("VisualScript", "set_variable_default_value");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
            @ptrCast(*const anyopaque, arg_value),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_variable_default_value, base, cargs, result);
    }

    pub fn setVariableExport(self: *const Self, arg_name: *const godot.String, arg_enable: bool) !void {
        if (mbind_set_variable_export == null) {
            mbind_set_variable_export = try api.createMethod("VisualScript", "set_variable_export");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_variable_export, base, cargs, result);
    }

    pub fn setVariableInfo(self: *const Self, arg_name: *const godot.String, arg_value: *const godot.Dictionary) !void {
        if (mbind_set_variable_info == null) {
            mbind_set_variable_info = try api.createMethod("VisualScript", "set_variable_info");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_name),
            @ptrCast(*const anyopaque, arg_value),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_variable_info, base, cargs, result);
    }
};