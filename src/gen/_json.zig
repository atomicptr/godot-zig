// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_parse: ?*c_api.godot_method_bind = null;
var mbind_print: ?*c_api.godot_method_bind = null;
var mbind__json_constructor: ?fn () ?*c_api.godot_object = null;

pub const _JSON = struct {
    const Self = @This();
    pub const BaseClass = godot.Object;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind__json_constructor == null) {
            mbind__json_constructor = try api.createConstructor("_JSON");
        }
        return api.createObject(Self, mbind__json_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn parse(self: *const Self, arg_json: *const godot.String) !godot.JSONParseResult {
        if (mbind_parse == null) {
            mbind_parse = try api.createMethod("_JSON", "parse");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_json),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_parse, base, cargs, result);
        return @ptrCast(*godot.JSONParseResult, @alignCast(@alignOf(&godot.JSONParseResult), result)).*;
    }

    pub fn print(self: *const Self, arg_value: *const godot.Variant, arg_indent: *const godot.String, arg_sort_keys: bool) !godot.String {
        if (mbind_print == null) {
            mbind_print = try api.createMethod("_JSON", "print");
        }

        var result: ?*anyopaque = null;
        var args: [3]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_value),
            @ptrCast(*const anyopaque, arg_indent),
            @ptrCast(*const anyopaque, *arg_sort_keys),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_print, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }
};