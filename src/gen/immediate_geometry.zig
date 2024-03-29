// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_add_sphere: ?*c_api.godot_method_bind = null;
var mbind_add_vertex: ?*c_api.godot_method_bind = null;
var mbind_begin: ?*c_api.godot_method_bind = null;
var mbind_clear: ?*c_api.godot_method_bind = null;
var mbind_end: ?*c_api.godot_method_bind = null;
var mbind_set_color: ?*c_api.godot_method_bind = null;
var mbind_set_normal: ?*c_api.godot_method_bind = null;
var mbind_set_tangent: ?*c_api.godot_method_bind = null;
var mbind_set_uv: ?*c_api.godot_method_bind = null;
var mbind_set_uv2: ?*c_api.godot_method_bind = null;
var mbind_immediate_geometry_constructor: ?fn () ?*c_api.godot_object = null;

pub const ImmediateGeometry = struct {
    const Self = @This();
    pub const BaseClass = godot.GeometryInstance;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_immediate_geometry_constructor == null) {
            mbind_immediate_geometry_constructor = try api.createConstructor("ImmediateGeometry");
        }
        return api.createObject(Self, mbind_immediate_geometry_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn addSphere(self: *const Self, arg_lats: i32, arg_lons: i32, arg_radius: f32, arg_add_uv: bool) !void {
        if (mbind_add_sphere == null) {
            mbind_add_sphere = try api.createMethod("ImmediateGeometry", "add_sphere");
        }

        var result: ?*anyopaque = null;
        var args: [4]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_lats),
            @ptrCast(*const anyopaque, *arg_lons),
            @ptrCast(*const anyopaque, *arg_radius),
            @ptrCast(*const anyopaque, *arg_add_uv),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_sphere, base, cargs, result);
    }

    pub fn addVertex(self: *const Self, arg_position: *const godot.Vector3) !void {
        if (mbind_add_vertex == null) {
            mbind_add_vertex = try api.createMethod("ImmediateGeometry", "add_vertex");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_position),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_vertex, base, cargs, result);
    }

    pub fn begin(self: *const Self, arg_primitive: i32, arg_texture: *const godot.Texture) !void {
        if (mbind_begin == null) {
            mbind_begin = try api.createMethod("ImmediateGeometry", "begin");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_primitive),
            @ptrCast(*const anyopaque, arg_texture),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_begin, base, cargs, result);
    }

    pub fn clear(self: *const Self) !void {
        if (mbind_clear == null) {
            mbind_clear = try api.createMethod("ImmediateGeometry", "clear");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_clear, base, cargs, result);
    }

    pub fn end(self: *const Self) !void {
        if (mbind_end == null) {
            mbind_end = try api.createMethod("ImmediateGeometry", "end");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_end, base, cargs, result);
    }

    pub fn setColor(self: *const Self, arg_color: *const godot.Color) !void {
        if (mbind_set_color == null) {
            mbind_set_color = try api.createMethod("ImmediateGeometry", "set_color");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_color),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_color, base, cargs, result);
    }

    pub fn setNormal(self: *const Self, arg_normal: *const godot.Vector3) !void {
        if (mbind_set_normal == null) {
            mbind_set_normal = try api.createMethod("ImmediateGeometry", "set_normal");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_normal),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_normal, base, cargs, result);
    }

    pub fn setTangent(self: *const Self, arg_tangent: *const godot.Plane) !void {
        if (mbind_set_tangent == null) {
            mbind_set_tangent = try api.createMethod("ImmediateGeometry", "set_tangent");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_tangent),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_tangent, base, cargs, result);
    }

    pub fn setUv(self: *const Self, arg_uv: *const godot.Vector2) !void {
        if (mbind_set_uv == null) {
            mbind_set_uv = try api.createMethod("ImmediateGeometry", "set_uv");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_uv),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_uv, base, cargs, result);
    }

    pub fn setUv2(self: *const Self, arg_uv: *const godot.Vector2) !void {
        if (mbind_set_uv2 == null) {
            mbind_set_uv2 = try api.createMethod("ImmediateGeometry", "set_uv2");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_uv),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_uv2, base, cargs, result);
    }
};