// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Resource = @import("resource.zig").Resource;

// method bindings
var mbind_get_color: ?*c_api.godot_method_bind = null;
var mbind_get_inner_cone_angle: ?*c_api.godot_method_bind = null;
var mbind_get_intensity: ?*c_api.godot_method_bind = null;
var mbind_get_outer_cone_angle: ?*c_api.godot_method_bind = null;
var mbind_get_range: ?*c_api.godot_method_bind = null;
var mbind_get_type: ?*c_api.godot_method_bind = null;
var mbind_set_color: ?*c_api.godot_method_bind = null;
var mbind_set_inner_cone_angle: ?*c_api.godot_method_bind = null;
var mbind_set_intensity: ?*c_api.godot_method_bind = null;
var mbind_set_outer_cone_angle: ?*c_api.godot_method_bind = null;
var mbind_set_range: ?*c_api.godot_method_bind = null;
var mbind_set_type: ?*c_api.godot_method_bind = null;
var mbind_gltflight_constructor: ?fn () ?*c_api.godot_object = null;

pub const GLTFLight = struct {
    const Self = @This();
    const BaseClass = Resource;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_gltflight_constructor == null) {
            mbind_gltflight_constructor = try api.createConstructor("GLTFLight");
        }
        return api.createObject(Self, mbind_gltflight_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getColor(self: *const Self) !godot.Color {
        if (mbind_get_color == null) {
            mbind_get_color = try api.createMethod("GLTFLight", "get_color");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_color, base, cargs, result);
        return @ptrCast(*godot.Color, @alignCast(@alignOf(&godot.Color), result)).*;
    }

    pub fn getInnerConeAngle(self: *const Self) !f32 {
        if (mbind_get_inner_cone_angle == null) {
            mbind_get_inner_cone_angle = try api.createMethod("GLTFLight", "get_inner_cone_angle");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_inner_cone_angle, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getIntensity(self: *const Self) !f32 {
        if (mbind_get_intensity == null) {
            mbind_get_intensity = try api.createMethod("GLTFLight", "get_intensity");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_intensity, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getOuterConeAngle(self: *const Self) !f32 {
        if (mbind_get_outer_cone_angle == null) {
            mbind_get_outer_cone_angle = try api.createMethod("GLTFLight", "get_outer_cone_angle");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_outer_cone_angle, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getRange(self: *const Self) !f32 {
        if (mbind_get_range == null) {
            mbind_get_range = try api.createMethod("GLTFLight", "get_range");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_range, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getType(self: *const Self) !godot.String {
        if (mbind_get_type == null) {
            mbind_get_type = try api.createMethod("GLTFLight", "get_type");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_type, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn setColor(self: *const Self, arg_color: *const godot.Color) !void {
        if (mbind_set_color == null) {
            mbind_set_color = try api.createMethod("GLTFLight", "set_color");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_color),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_color, base, cargs, result);
    }

    pub fn setInnerConeAngle(self: *const Self, arg_inner_cone_angle: f32) !void {
        if (mbind_set_inner_cone_angle == null) {
            mbind_set_inner_cone_angle = try api.createMethod("GLTFLight", "set_inner_cone_angle");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_inner_cone_angle),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_inner_cone_angle, base, cargs, result);
    }

    pub fn setIntensity(self: *const Self, arg_intensity: f32) !void {
        if (mbind_set_intensity == null) {
            mbind_set_intensity = try api.createMethod("GLTFLight", "set_intensity");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_intensity),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_intensity, base, cargs, result);
    }

    pub fn setOuterConeAngle(self: *const Self, arg_outer_cone_angle: f32) !void {
        if (mbind_set_outer_cone_angle == null) {
            mbind_set_outer_cone_angle = try api.createMethod("GLTFLight", "set_outer_cone_angle");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_outer_cone_angle),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_outer_cone_angle, base, cargs, result);
    }

    pub fn setRange(self: *const Self, arg_range: f32) !void {
        if (mbind_set_range == null) {
            mbind_set_range = try api.createMethod("GLTFLight", "set_range");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_range),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_range, base, cargs, result);
    }

    pub fn setType(self: *const Self, arg_type: *const godot.String) !void {
        if (mbind_set_type == null) {
            mbind_set_type = try api.createMethod("GLTFLight", "set_type");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_type),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_type, base, cargs, result);
    }
};