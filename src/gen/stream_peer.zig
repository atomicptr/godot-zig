// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_16: ?*c_api.godot_method_bind = null;
var mbind_get_32: ?*c_api.godot_method_bind = null;
var mbind_get_64: ?*c_api.godot_method_bind = null;
var mbind_get_8: ?*c_api.godot_method_bind = null;
var mbind_get_available_bytes: ?*c_api.godot_method_bind = null;
var mbind_get_data: ?*c_api.godot_method_bind = null;
var mbind_get_double: ?*c_api.godot_method_bind = null;
var mbind_get_float: ?*c_api.godot_method_bind = null;
var mbind_get_partial_data: ?*c_api.godot_method_bind = null;
var mbind_get_string: ?*c_api.godot_method_bind = null;
var mbind_get_u16: ?*c_api.godot_method_bind = null;
var mbind_get_u32: ?*c_api.godot_method_bind = null;
var mbind_get_u64: ?*c_api.godot_method_bind = null;
var mbind_get_u8: ?*c_api.godot_method_bind = null;
var mbind_get_utf8_string: ?*c_api.godot_method_bind = null;
var mbind_get_var: ?*c_api.godot_method_bind = null;
var mbind_is_big_endian_enabled: ?*c_api.godot_method_bind = null;
var mbind_put_16: ?*c_api.godot_method_bind = null;
var mbind_put_32: ?*c_api.godot_method_bind = null;
var mbind_put_64: ?*c_api.godot_method_bind = null;
var mbind_put_8: ?*c_api.godot_method_bind = null;
var mbind_put_data: ?*c_api.godot_method_bind = null;
var mbind_put_double: ?*c_api.godot_method_bind = null;
var mbind_put_float: ?*c_api.godot_method_bind = null;
var mbind_put_partial_data: ?*c_api.godot_method_bind = null;
var mbind_put_string: ?*c_api.godot_method_bind = null;
var mbind_put_u16: ?*c_api.godot_method_bind = null;
var mbind_put_u32: ?*c_api.godot_method_bind = null;
var mbind_put_u64: ?*c_api.godot_method_bind = null;
var mbind_put_u8: ?*c_api.godot_method_bind = null;
var mbind_put_utf8_string: ?*c_api.godot_method_bind = null;
var mbind_put_var: ?*c_api.godot_method_bind = null;
var mbind_set_big_endian: ?*c_api.godot_method_bind = null;
var mbind_stream_peer_constructor: ?fn () ?*c_api.godot_object = null;

pub const StreamPeer = struct {
    const Self = @This();
    pub const BaseClass = godot.Reference;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_stream_peer_constructor == null) {
            mbind_stream_peer_constructor = try api.createConstructor("StreamPeer");
        }
        return api.createObject(Self, mbind_stream_peer_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn get16(self: *const Self) !i32 {
        if (mbind_get_16 == null) {
            mbind_get_16 = try api.createMethod("StreamPeer", "get_16");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_16, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn get32(self: *const Self) !i32 {
        if (mbind_get_32 == null) {
            mbind_get_32 = try api.createMethod("StreamPeer", "get_32");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_32, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn get64(self: *const Self) !i32 {
        if (mbind_get_64 == null) {
            mbind_get_64 = try api.createMethod("StreamPeer", "get_64");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_64, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn get8(self: *const Self) !i32 {
        if (mbind_get_8 == null) {
            mbind_get_8 = try api.createMethod("StreamPeer", "get_8");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_8, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getAvailableBytes(self: *const Self) !i32 {
        if (mbind_get_available_bytes == null) {
            mbind_get_available_bytes = try api.createMethod("StreamPeer", "get_available_bytes");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_available_bytes, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getData(self: *const Self, arg_bytes: i32) !godot.Array {
        if (mbind_get_data == null) {
            mbind_get_data = try api.createMethod("StreamPeer", "get_data");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_bytes),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_data, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getDouble(self: *const Self) !f32 {
        if (mbind_get_double == null) {
            mbind_get_double = try api.createMethod("StreamPeer", "get_double");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_double, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getFloat(self: *const Self) !f32 {
        if (mbind_get_float == null) {
            mbind_get_float = try api.createMethod("StreamPeer", "get_float");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_float, base, cargs, result);
        return @ptrCast(*f32, @alignCast(@alignOf(&f32), result)).*;
    }

    pub fn getPartialData(self: *const Self, arg_bytes: i32) !godot.Array {
        if (mbind_get_partial_data == null) {
            mbind_get_partial_data = try api.createMethod("StreamPeer", "get_partial_data");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_bytes),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_partial_data, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getString(self: *const Self, arg_bytes: i32) !godot.String {
        if (mbind_get_string == null) {
            mbind_get_string = try api.createMethod("StreamPeer", "get_string");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_bytes),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_string, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getU16(self: *const Self) !i32 {
        if (mbind_get_u16 == null) {
            mbind_get_u16 = try api.createMethod("StreamPeer", "get_u16");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_u16, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getU32(self: *const Self) !i32 {
        if (mbind_get_u32 == null) {
            mbind_get_u32 = try api.createMethod("StreamPeer", "get_u32");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_u32, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getU64(self: *const Self) !i32 {
        if (mbind_get_u64 == null) {
            mbind_get_u64 = try api.createMethod("StreamPeer", "get_u64");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_u64, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getU8(self: *const Self) !i32 {
        if (mbind_get_u8 == null) {
            mbind_get_u8 = try api.createMethod("StreamPeer", "get_u8");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_u8, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getUtf8String(self: *const Self, arg_bytes: i32) !godot.String {
        if (mbind_get_utf8_string == null) {
            mbind_get_utf8_string = try api.createMethod("StreamPeer", "get_utf8_string");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_bytes),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_utf8_string, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getVar(self: *const Self, arg_allow_objects: bool) !godot.Variant {
        if (mbind_get_var == null) {
            mbind_get_var = try api.createMethod("StreamPeer", "get_var");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_allow_objects),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_var, base, cargs, result);
        return @ptrCast(*godot.Variant, @alignCast(@alignOf(&godot.Variant), result)).*;
    }

    pub fn isBigEndianEnabled(self: *const Self) !bool {
        if (mbind_is_big_endian_enabled == null) {
            mbind_is_big_endian_enabled = try api.createMethod("StreamPeer", "is_big_endian_enabled");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_big_endian_enabled, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn put16(self: *const Self, arg_value: i32) !void {
        if (mbind_put_16 == null) {
            mbind_put_16 = try api.createMethod("StreamPeer", "put_16");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_value),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_put_16, base, cargs, result);
    }

    pub fn put32(self: *const Self, arg_value: i32) !void {
        if (mbind_put_32 == null) {
            mbind_put_32 = try api.createMethod("StreamPeer", "put_32");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_value),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_put_32, base, cargs, result);
    }

    pub fn put64(self: *const Self, arg_value: i32) !void {
        if (mbind_put_64 == null) {
            mbind_put_64 = try api.createMethod("StreamPeer", "put_64");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_value),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_put_64, base, cargs, result);
    }

    pub fn put8(self: *const Self, arg_value: i32) !void {
        if (mbind_put_8 == null) {
            mbind_put_8 = try api.createMethod("StreamPeer", "put_8");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_value),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_put_8, base, cargs, result);
    }

    pub fn putData(self: *const Self, arg_data: *const godot.PoolByteArray) !i32 {
        if (mbind_put_data == null) {
            mbind_put_data = try api.createMethod("StreamPeer", "put_data");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_data),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_put_data, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn putDouble(self: *const Self, arg_value: f32) !void {
        if (mbind_put_double == null) {
            mbind_put_double = try api.createMethod("StreamPeer", "put_double");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_value),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_put_double, base, cargs, result);
    }

    pub fn putFloat(self: *const Self, arg_value: f32) !void {
        if (mbind_put_float == null) {
            mbind_put_float = try api.createMethod("StreamPeer", "put_float");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_value),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_put_float, base, cargs, result);
    }

    pub fn putPartialData(self: *const Self, arg_data: *const godot.PoolByteArray) !godot.Array {
        if (mbind_put_partial_data == null) {
            mbind_put_partial_data = try api.createMethod("StreamPeer", "put_partial_data");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_data),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_put_partial_data, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn putString(self: *const Self, arg_value: *const godot.String) !void {
        if (mbind_put_string == null) {
            mbind_put_string = try api.createMethod("StreamPeer", "put_string");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_value),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_put_string, base, cargs, result);
    }

    pub fn putU16(self: *const Self, arg_value: i32) !void {
        if (mbind_put_u16 == null) {
            mbind_put_u16 = try api.createMethod("StreamPeer", "put_u16");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_value),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_put_u16, base, cargs, result);
    }

    pub fn putU32(self: *const Self, arg_value: i32) !void {
        if (mbind_put_u32 == null) {
            mbind_put_u32 = try api.createMethod("StreamPeer", "put_u32");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_value),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_put_u32, base, cargs, result);
    }

    pub fn putU64(self: *const Self, arg_value: i32) !void {
        if (mbind_put_u64 == null) {
            mbind_put_u64 = try api.createMethod("StreamPeer", "put_u64");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_value),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_put_u64, base, cargs, result);
    }

    pub fn putU8(self: *const Self, arg_value: i32) !void {
        if (mbind_put_u8 == null) {
            mbind_put_u8 = try api.createMethod("StreamPeer", "put_u8");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_value),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_put_u8, base, cargs, result);
    }

    pub fn putUtf8String(self: *const Self, arg_value: *const godot.String) !void {
        if (mbind_put_utf8_string == null) {
            mbind_put_utf8_string = try api.createMethod("StreamPeer", "put_utf8_string");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_value),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_put_utf8_string, base, cargs, result);
    }

    pub fn putVar(self: *const Self, arg_value: *const godot.Variant, arg_full_objects: bool) !void {
        if (mbind_put_var == null) {
            mbind_put_var = try api.createMethod("StreamPeer", "put_var");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_value),
            @ptrCast(*const anyopaque, *arg_full_objects),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_put_var, base, cargs, result);
    }

    pub fn setBigEndian(self: *const Self, arg_enable: bool) !void {
        if (mbind_set_big_endian == null) {
            mbind_set_big_endian = try api.createMethod("StreamPeer", "set_big_endian");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enable),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_big_endian, base, cargs, result);
    }
};