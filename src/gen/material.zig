// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_next_pass: ?*c_api.godot_method_bind = null;
var mbind_get_render_priority: ?*c_api.godot_method_bind = null;
var mbind_set_next_pass: ?*c_api.godot_method_bind = null;
var mbind_set_render_priority: ?*c_api.godot_method_bind = null;
var mbind_material_constructor: ?fn () ?*c_api.godot_object = null;

pub const Material = struct {
    const Self = @This();
    pub const BaseClass = godot.Resource;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_material_constructor == null) {
            mbind_material_constructor = try api.createConstructor("Material");
        }
        return api.createObject(Self, mbind_material_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getNextPass(self: *const Self) !godot.Material {
        if (mbind_get_next_pass == null) {
            mbind_get_next_pass = try api.createMethod("Material", "get_next_pass");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_next_pass, base, cargs, result);
        return @ptrCast(*godot.Material, @alignCast(@alignOf(&godot.Material), result)).*;
    }

    pub fn getRenderPriority(self: *const Self) !i32 {
        if (mbind_get_render_priority == null) {
            mbind_get_render_priority = try api.createMethod("Material", "get_render_priority");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_render_priority, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn setNextPass(self: *const Self, arg_next_pass: *const godot.Material) !void {
        if (mbind_set_next_pass == null) {
            mbind_set_next_pass = try api.createMethod("Material", "set_next_pass");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_next_pass),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_next_pass, base, cargs, result);
    }

    pub fn setRenderPriority(self: *const Self, arg_priority: i32) !void {
        if (mbind_set_render_priority == null) {
            mbind_set_render_priority = try api.createMethod("Material", "set_render_priority");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_priority),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_render_priority, base, cargs, result);
    }
};