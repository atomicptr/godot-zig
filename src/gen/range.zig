// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_as_ratio: ?*c_api.godot_method_bind = null;
var mbind_get_max: ?*c_api.godot_method_bind = null;
var mbind_get_min: ?*c_api.godot_method_bind = null;
var mbind_get_page: ?*c_api.godot_method_bind = null;
var mbind_get_step: ?*c_api.godot_method_bind = null;
var mbind_get_value: ?*c_api.godot_method_bind = null;
var mbind_is_greater_allowed: ?*c_api.godot_method_bind = null;
var mbind_is_lesser_allowed: ?*c_api.godot_method_bind = null;
var mbind_is_ratio_exp: ?*c_api.godot_method_bind = null;
var mbind_is_using_rounded_values: ?*c_api.godot_method_bind = null;
var mbind_set_allow_greater: ?*c_api.godot_method_bind = null;
var mbind_set_allow_lesser: ?*c_api.godot_method_bind = null;
var mbind_set_as_ratio: ?*c_api.godot_method_bind = null;
var mbind_set_exp_ratio: ?*c_api.godot_method_bind = null;
var mbind_set_max: ?*c_api.godot_method_bind = null;
var mbind_set_min: ?*c_api.godot_method_bind = null;
var mbind_set_page: ?*c_api.godot_method_bind = null;
var mbind_set_step: ?*c_api.godot_method_bind = null;
var mbind_set_use_rounded_values: ?*c_api.godot_method_bind = null;
var mbind_set_value: ?*c_api.godot_method_bind = null;
var mbind_share: ?*c_api.godot_method_bind = null;
var mbind_unshare: ?*c_api.godot_method_bind = null;
var mbind_range_constructor: ?fn () ?*c_api.godot_object = null;

pub const Range = struct {
    const Self = @This();
    pub const BaseClass = godot.Control;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_range_constructor == null) {
            mbind_range_constructor = try api.createConstructor("Range");
        }
        return api.createObject(Self, mbind_range_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getAsRatio(self: *const Self) !f32 {
        if (mbind_get_as_ratio == null) {
            mbind_get_as_ratio = try api.createMethod("Range", "get_as_ratio");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_as_ratio, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getMax(self: *const Self) !f32 {
        if (mbind_get_max == null) {
            mbind_get_max = try api.createMethod("Range", "get_max");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_max, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getMin(self: *const Self) !f32 {
        if (mbind_get_min == null) {
            mbind_get_min = try api.createMethod("Range", "get_min");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_min, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getPage(self: *const Self) !f32 {
        if (mbind_get_page == null) {
            mbind_get_page = try api.createMethod("Range", "get_page");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_page, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getStep(self: *const Self) !f32 {
        if (mbind_get_step == null) {
            mbind_get_step = try api.createMethod("Range", "get_step");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_step, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getValue(self: *const Self) !f32 {
        if (mbind_get_value == null) {
            mbind_get_value = try api.createMethod("Range", "get_value");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_value, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn isGreaterAllowed(self: *const Self) !bool {
        if (mbind_is_greater_allowed == null) {
            mbind_is_greater_allowed = try api.createMethod("Range", "is_greater_allowed");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_greater_allowed, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isLesserAllowed(self: *const Self) !bool {
        if (mbind_is_lesser_allowed == null) {
            mbind_is_lesser_allowed = try api.createMethod("Range", "is_lesser_allowed");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_lesser_allowed, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isRatioExp(self: *const Self) !bool {
        if (mbind_is_ratio_exp == null) {
            mbind_is_ratio_exp = try api.createMethod("Range", "is_ratio_exp");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_ratio_exp, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isUsingRoundedValues(self: *const Self) !bool {
        if (mbind_is_using_rounded_values == null) {
            mbind_is_using_rounded_values = try api.createMethod("Range", "is_using_rounded_values");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_using_rounded_values, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setAllowGreater(self: *const Self, arg_allow: bool) !void {
        if (mbind_set_allow_greater == null) {
            mbind_set_allow_greater = try api.createMethod("Range", "set_allow_greater");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_allow),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_allow_greater, base, cargs, result);
    }

    pub fn setAllowLesser(self: *const Self, arg_allow: bool) !void {
        if (mbind_set_allow_lesser == null) {
            mbind_set_allow_lesser = try api.createMethod("Range", "set_allow_lesser");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_allow),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_allow_lesser, base, cargs, result);
    }

    pub fn setAsRatio(self: *const Self, arg_value: f32) !void {
        if (mbind_set_as_ratio == null) {
            mbind_set_as_ratio = try api.createMethod("Range", "set_as_ratio");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_value),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_as_ratio, base, cargs, result);
    }

    pub fn setExpRatio(self: *const Self, arg_enabled: bool) !void {
        if (mbind_set_exp_ratio == null) {
            mbind_set_exp_ratio = try api.createMethod("Range", "set_exp_ratio");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enabled),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_exp_ratio, base, cargs, result);
    }

    pub fn setMax(self: *const Self, arg_maximum: f32) !void {
        if (mbind_set_max == null) {
            mbind_set_max = try api.createMethod("Range", "set_max");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_maximum),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_max, base, cargs, result);
    }

    pub fn setMin(self: *const Self, arg_minimum: f32) !void {
        if (mbind_set_min == null) {
            mbind_set_min = try api.createMethod("Range", "set_min");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_minimum),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_min, base, cargs, result);
    }

    pub fn setPage(self: *const Self, arg_pagesize: f32) !void {
        if (mbind_set_page == null) {
            mbind_set_page = try api.createMethod("Range", "set_page");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_pagesize),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_page, base, cargs, result);
    }

    pub fn setStep(self: *const Self, arg_step: f32) !void {
        if (mbind_set_step == null) {
            mbind_set_step = try api.createMethod("Range", "set_step");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_step),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_step, base, cargs, result);
    }

    pub fn setUseRoundedValues(self: *const Self, arg_enabled: bool) !void {
        if (mbind_set_use_rounded_values == null) {
            mbind_set_use_rounded_values = try api.createMethod("Range", "set_use_rounded_values");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enabled),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_use_rounded_values, base, cargs, result);
    }

    pub fn setValue(self: *const Self, arg_value: f32) !void {
        if (mbind_set_value == null) {
            mbind_set_value = try api.createMethod("Range", "set_value");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_value),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_value, base, cargs, result);
    }

    pub fn share(self: *const Self, arg_with: *const godot.Node) !void {
        if (mbind_share == null) {
            mbind_share = try api.createMethod("Range", "share");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_with),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_share, base, cargs, result);
    }

    pub fn unshare(self: *const Self) !void {
        if (mbind_unshare == null) {
            mbind_unshare = try api.createMethod("Range", "unshare");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_unshare, base, cargs, result);
    }
};