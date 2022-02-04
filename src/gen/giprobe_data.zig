// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Resource = @import("resource.zig").Resource;

// method bindings
var mbind_get_bias: ?*c_api.godot_method_bind = null;
var mbind_get_bounds: ?*c_api.godot_method_bind = null;
var mbind_get_cell_size: ?*c_api.godot_method_bind = null;
var mbind_get_dynamic_data: ?*c_api.godot_method_bind = null;
var mbind_get_dynamic_range: ?*c_api.godot_method_bind = null;
var mbind_get_energy: ?*c_api.godot_method_bind = null;
var mbind_get_normal_bias: ?*c_api.godot_method_bind = null;
var mbind_get_propagation: ?*c_api.godot_method_bind = null;
var mbind_get_to_cell_xform: ?*c_api.godot_method_bind = null;
var mbind_is_compressed: ?*c_api.godot_method_bind = null;
var mbind_is_interior: ?*c_api.godot_method_bind = null;
var mbind_set_bias: ?*c_api.godot_method_bind = null;
var mbind_set_bounds: ?*c_api.godot_method_bind = null;
var mbind_set_cell_size: ?*c_api.godot_method_bind = null;
var mbind_set_compress: ?*c_api.godot_method_bind = null;
var mbind_set_dynamic_data: ?*c_api.godot_method_bind = null;
var mbind_set_dynamic_range: ?*c_api.godot_method_bind = null;
var mbind_set_energy: ?*c_api.godot_method_bind = null;
var mbind_set_interior: ?*c_api.godot_method_bind = null;
var mbind_set_normal_bias: ?*c_api.godot_method_bind = null;
var mbind_set_propagation: ?*c_api.godot_method_bind = null;
var mbind_set_to_cell_xform: ?*c_api.godot_method_bind = null;
var mbind_giprobe_data_constructor: ?fn () ?*c_api.godot_object = null;

pub const GIProbeData = struct {
    const Self = @This();
    const BaseClass = Resource;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_giprobe_data_constructor == null) {
            mbind_giprobe_data_constructor = try api.createConstructor("GIProbeData");
        }
        return api.createObject(Self, mbind_giprobe_data_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getBias(self: *const Self) !f32 {
        if (mbind_get_bias == null) {
            mbind_get_bias = try api.createMethod("GIProbeData", "get_bias");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_bias, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getBounds(self: *const Self) !godot.AABB {
        if (mbind_get_bounds == null) {
            mbind_get_bounds = try api.createMethod("GIProbeData", "get_bounds");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_bounds, base, cargs, result);
        return @ptrCast(*godot.AABB, @alignCast(@alignOf(&godot.AABB), result)).*;
    }

    pub fn getCellSize(self: *const Self) !f32 {
        if (mbind_get_cell_size == null) {
            mbind_get_cell_size = try api.createMethod("GIProbeData", "get_cell_size");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_cell_size, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getDynamicData(self: *const Self) !godot.PoolIntArray {
        if (mbind_get_dynamic_data == null) {
            mbind_get_dynamic_data = try api.createMethod("GIProbeData", "get_dynamic_data");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_dynamic_data, base, cargs, result);
        return @ptrCast(*godot.PoolIntArray, @alignCast(@alignOf(&godot.PoolIntArray), result)).*;
    }

    pub fn getDynamicRange(self: *const Self) !i32 {
        if (mbind_get_dynamic_range == null) {
            mbind_get_dynamic_range = try api.createMethod("GIProbeData", "get_dynamic_range");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_dynamic_range, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getEnergy(self: *const Self) !f32 {
        if (mbind_get_energy == null) {
            mbind_get_energy = try api.createMethod("GIProbeData", "get_energy");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_energy, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getNormalBias(self: *const Self) !f32 {
        if (mbind_get_normal_bias == null) {
            mbind_get_normal_bias = try api.createMethod("GIProbeData", "get_normal_bias");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_normal_bias, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getPropagation(self: *const Self) !f32 {
        if (mbind_get_propagation == null) {
            mbind_get_propagation = try api.createMethod("GIProbeData", "get_propagation");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_propagation, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getToCellXform(self: *const Self) !godot.Transform {
        if (mbind_get_to_cell_xform == null) {
            mbind_get_to_cell_xform = try api.createMethod("GIProbeData", "get_to_cell_xform");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_to_cell_xform, base, cargs, result);
        return @ptrCast(*godot.Transform, @alignCast(@alignOf(&godot.Transform), result)).*;
    }

    pub fn isCompressed(self: *const Self) !bool {
        if (mbind_is_compressed == null) {
            mbind_is_compressed = try api.createMethod("GIProbeData", "is_compressed");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_compressed, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isInterior(self: *const Self) !bool {
        if (mbind_is_interior == null) {
            mbind_is_interior = try api.createMethod("GIProbeData", "is_interior");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_interior, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setBias(self: *const Self, arg_bias: f32) !void {
        if (mbind_set_bias == null) {
            mbind_set_bias = try api.createMethod("GIProbeData", "set_bias");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_bias),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_bias, base, cargs, result);
    }

    pub fn setBounds(self: *const Self, arg_bounds: *const godot.AABB) !void {
        if (mbind_set_bounds == null) {
            mbind_set_bounds = try api.createMethod("GIProbeData", "set_bounds");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_bounds),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_bounds, base, cargs, result);
    }

    pub fn setCellSize(self: *const Self, arg_cell_size: f32) !void {
        if (mbind_set_cell_size == null) {
            mbind_set_cell_size = try api.createMethod("GIProbeData", "set_cell_size");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_cell_size),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_cell_size, base, cargs, result);
    }

    pub fn setCompress(self: *const Self, arg_compress: bool) !void {
        if (mbind_set_compress == null) {
            mbind_set_compress = try api.createMethod("GIProbeData", "set_compress");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_compress),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_compress, base, cargs, result);
    }

    pub fn setDynamicData(self: *const Self, arg_dynamic_data: *const godot.PoolIntArray) !void {
        if (mbind_set_dynamic_data == null) {
            mbind_set_dynamic_data = try api.createMethod("GIProbeData", "set_dynamic_data");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_dynamic_data),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_dynamic_data, base, cargs, result);
    }

    pub fn setDynamicRange(self: *const Self, arg_dynamic_range: i32) !void {
        if (mbind_set_dynamic_range == null) {
            mbind_set_dynamic_range = try api.createMethod("GIProbeData", "set_dynamic_range");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_dynamic_range),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_dynamic_range, base, cargs, result);
    }

    pub fn setEnergy(self: *const Self, arg_energy: f32) !void {
        if (mbind_set_energy == null) {
            mbind_set_energy = try api.createMethod("GIProbeData", "set_energy");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_energy),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_energy, base, cargs, result);
    }

    pub fn setInterior(self: *const Self, arg_interior: bool) !void {
        if (mbind_set_interior == null) {
            mbind_set_interior = try api.createMethod("GIProbeData", "set_interior");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_interior),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_interior, base, cargs, result);
    }

    pub fn setNormalBias(self: *const Self, arg_bias: f32) !void {
        if (mbind_set_normal_bias == null) {
            mbind_set_normal_bias = try api.createMethod("GIProbeData", "set_normal_bias");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_bias),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_normal_bias, base, cargs, result);
    }

    pub fn setPropagation(self: *const Self, arg_propagation: f32) !void {
        if (mbind_set_propagation == null) {
            mbind_set_propagation = try api.createMethod("GIProbeData", "set_propagation");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_propagation),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_propagation, base, cargs, result);
    }

    pub fn setToCellXform(self: *const Self, arg_to_cell_xform: *const godot.Transform) !void {
        if (mbind_set_to_cell_xform == null) {
            mbind_set_to_cell_xform = try api.createMethod("GIProbeData", "set_to_cell_xform");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_to_cell_xform),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_to_cell_xform, base, cargs, result);
    }
};