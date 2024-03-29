// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_add_node: ?*c_api.godot_method_bind = null;
var mbind_can_connect_nodes: ?*c_api.godot_method_bind = null;
var mbind_connect_nodes: ?*c_api.godot_method_bind = null;
var mbind_connect_nodes_forced: ?*c_api.godot_method_bind = null;
var mbind_disconnect_nodes: ?*c_api.godot_method_bind = null;
var mbind_get_graph_offset: ?*c_api.godot_method_bind = null;
var mbind_get_node: ?*c_api.godot_method_bind = null;
var mbind_get_node_connections: ?*c_api.godot_method_bind = null;
var mbind_get_node_list: ?*c_api.godot_method_bind = null;
var mbind_get_node_position: ?*c_api.godot_method_bind = null;
var mbind_get_valid_node_id: ?*c_api.godot_method_bind = null;
var mbind_is_node_connection: ?*c_api.godot_method_bind = null;
var mbind_remove_node: ?*c_api.godot_method_bind = null;
var mbind_set_graph_offset: ?*c_api.godot_method_bind = null;
var mbind_set_mode: ?*c_api.godot_method_bind = null;
var mbind_set_node_position: ?*c_api.godot_method_bind = null;
var mbind_visual_shader_constructor: ?fn () ?*c_api.godot_object = null;

pub const VisualShader = struct {
    const Self = @This();
    pub const BaseClass = godot.Shader;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_visual_shader_constructor == null) {
            mbind_visual_shader_constructor = try api.createConstructor("VisualShader");
        }
        return api.createObject(Self, mbind_visual_shader_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn addNode(self: *const Self, arg_type: i32, arg_node: *const godot.VisualShaderNode, arg_position: *const godot.Vector2, arg_id: i32) !void {
        if (mbind_add_node == null) {
            mbind_add_node = try api.createMethod("VisualShader", "add_node");
        }

        var result: ?*anyopaque = null;
        var args: [4]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_type),
            @ptrCast(*const anyopaque, arg_node),
            @ptrCast(*const anyopaque, arg_position),
            @ptrCast(*const anyopaque, *arg_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_node, base, cargs, result);
    }

    pub fn canConnectNodes(self: *const Self, arg_type: i32, arg_from_node: i32, arg_from_port: i32, arg_to_node: i32, arg_to_port: i32) !bool {
        if (mbind_can_connect_nodes == null) {
            mbind_can_connect_nodes = try api.createMethod("VisualShader", "can_connect_nodes");
        }

        var result: ?*anyopaque = null;
        var args: [5]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_type),
            @ptrCast(*const anyopaque, *arg_from_node),
            @ptrCast(*const anyopaque, *arg_from_port),
            @ptrCast(*const anyopaque, *arg_to_node),
            @ptrCast(*const anyopaque, *arg_to_port),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_can_connect_nodes, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn connectNodes(self: *const Self, arg_type: i32, arg_from_node: i32, arg_from_port: i32, arg_to_node: i32, arg_to_port: i32) !i32 {
        if (mbind_connect_nodes == null) {
            mbind_connect_nodes = try api.createMethod("VisualShader", "connect_nodes");
        }

        var result: ?*anyopaque = null;
        var args: [5]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_type),
            @ptrCast(*const anyopaque, *arg_from_node),
            @ptrCast(*const anyopaque, *arg_from_port),
            @ptrCast(*const anyopaque, *arg_to_node),
            @ptrCast(*const anyopaque, *arg_to_port),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_connect_nodes, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn connectNodesForced(self: *const Self, arg_type: i32, arg_from_node: i32, arg_from_port: i32, arg_to_node: i32, arg_to_port: i32) !void {
        if (mbind_connect_nodes_forced == null) {
            mbind_connect_nodes_forced = try api.createMethod("VisualShader", "connect_nodes_forced");
        }

        var result: ?*anyopaque = null;
        var args: [5]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_type),
            @ptrCast(*const anyopaque, *arg_from_node),
            @ptrCast(*const anyopaque, *arg_from_port),
            @ptrCast(*const anyopaque, *arg_to_node),
            @ptrCast(*const anyopaque, *arg_to_port),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_connect_nodes_forced, base, cargs, result);
    }

    pub fn disconnectNodes(self: *const Self, arg_type: i32, arg_from_node: i32, arg_from_port: i32, arg_to_node: i32, arg_to_port: i32) !void {
        if (mbind_disconnect_nodes == null) {
            mbind_disconnect_nodes = try api.createMethod("VisualShader", "disconnect_nodes");
        }

        var result: ?*anyopaque = null;
        var args: [5]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_type),
            @ptrCast(*const anyopaque, *arg_from_node),
            @ptrCast(*const anyopaque, *arg_from_port),
            @ptrCast(*const anyopaque, *arg_to_node),
            @ptrCast(*const anyopaque, *arg_to_port),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_disconnect_nodes, base, cargs, result);
    }

    pub fn getGraphOffset(self: *const Self) !godot.Vector2 {
        if (mbind_get_graph_offset == null) {
            mbind_get_graph_offset = try api.createMethod("VisualShader", "get_graph_offset");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_graph_offset, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getNode(self: *const Self, arg_type: i32, arg_id: i32) !godot.VisualShaderNode {
        if (mbind_get_node == null) {
            mbind_get_node = try api.createMethod("VisualShader", "get_node");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_type),
            @ptrCast(*const anyopaque, *arg_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_node, base, cargs, result);
        return @ptrCast(*godot.VisualShaderNode, @alignCast(@alignOf(&godot.VisualShaderNode), result)).*;
    }

    pub fn getNodeConnections(self: *const Self, arg_type: i32) !godot.Array {
        if (mbind_get_node_connections == null) {
            mbind_get_node_connections = try api.createMethod("VisualShader", "get_node_connections");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_type),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_node_connections, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getNodeList(self: *const Self, arg_type: i32) !godot.PoolIntArray {
        if (mbind_get_node_list == null) {
            mbind_get_node_list = try api.createMethod("VisualShader", "get_node_list");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_type),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_node_list, base, cargs, result);
        return @ptrCast(*godot.PoolIntArray, @alignCast(@alignOf(&godot.PoolIntArray), result)).*;
    }

    pub fn getNodePosition(self: *const Self, arg_type: i32, arg_id: i32) !godot.Vector2 {
        if (mbind_get_node_position == null) {
            mbind_get_node_position = try api.createMethod("VisualShader", "get_node_position");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_type),
            @ptrCast(*const anyopaque, *arg_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_node_position, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getValidNodeId(self: *const Self, arg_type: i32) !i32 {
        if (mbind_get_valid_node_id == null) {
            mbind_get_valid_node_id = try api.createMethod("VisualShader", "get_valid_node_id");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_type),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_valid_node_id, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn isNodeConnection(self: *const Self, arg_type: i32, arg_from_node: i32, arg_from_port: i32, arg_to_node: i32, arg_to_port: i32) !bool {
        if (mbind_is_node_connection == null) {
            mbind_is_node_connection = try api.createMethod("VisualShader", "is_node_connection");
        }

        var result: ?*anyopaque = null;
        var args: [5]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_type),
            @ptrCast(*const anyopaque, *arg_from_node),
            @ptrCast(*const anyopaque, *arg_from_port),
            @ptrCast(*const anyopaque, *arg_to_node),
            @ptrCast(*const anyopaque, *arg_to_port),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_node_connection, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn removeNode(self: *const Self, arg_type: i32, arg_id: i32) !void {
        if (mbind_remove_node == null) {
            mbind_remove_node = try api.createMethod("VisualShader", "remove_node");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_type),
            @ptrCast(*const anyopaque, *arg_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_remove_node, base, cargs, result);
    }

    pub fn setGraphOffset(self: *const Self, arg_offset: *const godot.Vector2) !void {
        if (mbind_set_graph_offset == null) {
            mbind_set_graph_offset = try api.createMethod("VisualShader", "set_graph_offset");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_offset),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_graph_offset, base, cargs, result);
    }

    pub fn setMode(self: *const Self, arg_mode: i32) !void {
        if (mbind_set_mode == null) {
            mbind_set_mode = try api.createMethod("VisualShader", "set_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_mode),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_mode, base, cargs, result);
    }

    pub fn setNodePosition(self: *const Self, arg_type: i32, arg_id: i32, arg_position: *const godot.Vector2) !void {
        if (mbind_set_node_position == null) {
            mbind_set_node_position = try api.createMethod("VisualShader", "set_node_position");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_type),
            @ptrCast(*const anyopaque, *arg_id),
            @ptrCast(*const anyopaque, arg_position),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_node_position, base, cargs, result);
    }
};