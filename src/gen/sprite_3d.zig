// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const SpriteBase3D = @import("sprite_base_3d.zig").SpriteBase3D;

// method bindings
var mbind_get_frame: ?*c_api.godot_method_bind = null;
var mbind_get_frame_coords: ?*c_api.godot_method_bind = null;
var mbind_get_hframes: ?*c_api.godot_method_bind = null;
var mbind_get_region_rect: ?*c_api.godot_method_bind = null;
var mbind_get_texture: ?*c_api.godot_method_bind = null;
var mbind_get_vframes: ?*c_api.godot_method_bind = null;
var mbind_is_region: ?*c_api.godot_method_bind = null;
var mbind_set_frame: ?*c_api.godot_method_bind = null;
var mbind_set_frame_coords: ?*c_api.godot_method_bind = null;
var mbind_set_hframes: ?*c_api.godot_method_bind = null;
var mbind_set_region: ?*c_api.godot_method_bind = null;
var mbind_set_region_rect: ?*c_api.godot_method_bind = null;
var mbind_set_texture: ?*c_api.godot_method_bind = null;
var mbind_set_vframes: ?*c_api.godot_method_bind = null;
var mbind_sprite_3d_constructor: ?fn () ?*c_api.godot_object = null;

pub const Sprite3D = struct {
    const Self = @This();
    const BaseClass = SpriteBase3D;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_sprite_3d_constructor == null) {
            mbind_sprite_3d_constructor = try api.createConstructor("Sprite3D");
        }
        return api.createObject(Self, mbind_sprite_3d_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getFrame(self: *const Self) !i32 {
        if (mbind_get_frame == null) {
            mbind_get_frame = try api.createMethod("Sprite3D", "get_frame");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_frame, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getFrameCoords(self: *const Self) !godot.Vector2 {
        if (mbind_get_frame_coords == null) {
            mbind_get_frame_coords = try api.createMethod("Sprite3D", "get_frame_coords");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_frame_coords, base, cargs, result);
        return @ptrCast(*godot.Vector2, @alignCast(@alignOf(&godot.Vector2), result)).*;
    }

    pub fn getHframes(self: *const Self) !i32 {
        if (mbind_get_hframes == null) {
            mbind_get_hframes = try api.createMethod("Sprite3D", "get_hframes");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_hframes, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getRegionRect(self: *const Self) !godot.Rect2 {
        if (mbind_get_region_rect == null) {
            mbind_get_region_rect = try api.createMethod("Sprite3D", "get_region_rect");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_region_rect, base, cargs, result);
        return @ptrCast(*godot.Rect2, @alignCast(@alignOf(&godot.Rect2), result)).*;
    }

    pub fn getTexture(self: *const Self) !godot.Texture {
        if (mbind_get_texture == null) {
            mbind_get_texture = try api.createMethod("Sprite3D", "get_texture");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_texture, base, cargs, result);
        return @ptrCast(*godot.Texture, @alignCast(@alignOf(&godot.Texture), result)).*;
    }

    pub fn getVframes(self: *const Self) !i32 {
        if (mbind_get_vframes == null) {
            mbind_get_vframes = try api.createMethod("Sprite3D", "get_vframes");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_vframes, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn isRegion(self: *const Self) !bool {
        if (mbind_is_region == null) {
            mbind_is_region = try api.createMethod("Sprite3D", "is_region");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_region, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setFrame(self: *const Self, arg_frame: i32) !void {
        if (mbind_set_frame == null) {
            mbind_set_frame = try api.createMethod("Sprite3D", "set_frame");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_frame),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_frame, base, cargs, result);
    }

    pub fn setFrameCoords(self: *const Self, arg_coords: *const godot.Vector2) !void {
        if (mbind_set_frame_coords == null) {
            mbind_set_frame_coords = try api.createMethod("Sprite3D", "set_frame_coords");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_coords),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_frame_coords, base, cargs, result);
    }

    pub fn setHframes(self: *const Self, arg_hframes: i32) !void {
        if (mbind_set_hframes == null) {
            mbind_set_hframes = try api.createMethod("Sprite3D", "set_hframes");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_hframes),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_hframes, base, cargs, result);
    }

    pub fn setRegion(self: *const Self, arg_enabled: bool) !void {
        if (mbind_set_region == null) {
            mbind_set_region = try api.createMethod("Sprite3D", "set_region");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enabled),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_region, base, cargs, result);
    }

    pub fn setRegionRect(self: *const Self, arg_rect: *const godot.Rect2) !void {
        if (mbind_set_region_rect == null) {
            mbind_set_region_rect = try api.createMethod("Sprite3D", "set_region_rect");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_rect),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_region_rect, base, cargs, result);
    }

    pub fn setTexture(self: *const Self, arg_texture: *const godot.Texture) !void {
        if (mbind_set_texture == null) {
            mbind_set_texture = try api.createMethod("Sprite3D", "set_texture");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_texture),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_texture, base, cargs, result);
    }

    pub fn setVframes(self: *const Self, arg_vframes: i32) !void {
        if (mbind_set_vframes == null) {
            mbind_set_vframes = try api.createMethod("Sprite3D", "set_vframes");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_vframes),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_vframes, base, cargs, result);
    }
};