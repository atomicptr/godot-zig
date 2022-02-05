// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Reference = @import("reference.zig").Reference;

// method bindings
var mbind_close: ?*c_api.godot_method_bind = null;
var mbind_connect_to_host: ?*c_api.godot_method_bind = null;
var mbind_get_connection: ?*c_api.godot_method_bind = null;
var mbind_get_read_chunk_size: ?*c_api.godot_method_bind = null;
var mbind_get_response_body_length: ?*c_api.godot_method_bind = null;
var mbind_get_response_code: ?*c_api.godot_method_bind = null;
var mbind_get_response_headers: ?*c_api.godot_method_bind = null;
var mbind_get_response_headers_as_dictionary: ?*c_api.godot_method_bind = null;
var mbind_get_status: ?*c_api.godot_method_bind = null;
var mbind_has_response: ?*c_api.godot_method_bind = null;
var mbind_is_blocking_mode_enabled: ?*c_api.godot_method_bind = null;
var mbind_is_response_chunked: ?*c_api.godot_method_bind = null;
var mbind_poll: ?*c_api.godot_method_bind = null;
var mbind_query_string_from_dict: ?*c_api.godot_method_bind = null;
var mbind_read_response_body_chunk: ?*c_api.godot_method_bind = null;
var mbind_request: ?*c_api.godot_method_bind = null;
var mbind_request_raw: ?*c_api.godot_method_bind = null;
var mbind_set_blocking_mode: ?*c_api.godot_method_bind = null;
var mbind_set_connection: ?*c_api.godot_method_bind = null;
var mbind_set_read_chunk_size: ?*c_api.godot_method_bind = null;
var mbind_httpclient_constructor: ?fn () ?*c_api.godot_object = null;

pub const HTTPClient = struct {
    const Self = @This();
    const BaseClass = Reference;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_httpclient_constructor == null) {
            mbind_httpclient_constructor = try api.createConstructor("HTTPClient");
        }
        return api.createObject(Self, mbind_httpclient_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn close(self: *const Self) !void {
        if (mbind_close == null) {
            mbind_close = try api.createMethod("HTTPClient", "close");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_close, base, cargs, result);
    }

    pub fn connectToHost(self: *const Self, arg_host: *const godot.String, arg_port: i32, arg_use_ssl: bool, arg_verify_host: bool) !i32 {
        if (mbind_connect_to_host == null) {
            mbind_connect_to_host = try api.createMethod("HTTPClient", "connect_to_host");
        }

        var result: ?*anyopaque = null;
        var args: [4]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_host),
            @ptrCast(*const anyopaque, *arg_port),
            @ptrCast(*const anyopaque, *arg_use_ssl),
            @ptrCast(*const anyopaque, *arg_verify_host),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_connect_to_host, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getConnection(self: *const Self) !godot.StreamPeer {
        if (mbind_get_connection == null) {
            mbind_get_connection = try api.createMethod("HTTPClient", "get_connection");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_connection, base, cargs, result);
        return @ptrCast(*godot.StreamPeer, @alignCast(@alignOf(&godot.StreamPeer), result)).*;
    }

    pub fn getReadChunkSize(self: *const Self) !i32 {
        if (mbind_get_read_chunk_size == null) {
            mbind_get_read_chunk_size = try api.createMethod("HTTPClient", "get_read_chunk_size");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_read_chunk_size, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getResponseBodyLength(self: *const Self) !i32 {
        if (mbind_get_response_body_length == null) {
            mbind_get_response_body_length = try api.createMethod("HTTPClient", "get_response_body_length");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_response_body_length, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getResponseCode(self: *const Self) !i32 {
        if (mbind_get_response_code == null) {
            mbind_get_response_code = try api.createMethod("HTTPClient", "get_response_code");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_response_code, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getResponseHeaders(self: *const Self) !godot.PoolStringArray {
        if (mbind_get_response_headers == null) {
            mbind_get_response_headers = try api.createMethod("HTTPClient", "get_response_headers");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_response_headers, base, cargs, result);
        return @ptrCast(*godot.PoolStringArray, @alignCast(@alignOf(&godot.PoolStringArray), result)).*;
    }

    pub fn getResponseHeadersAsDictionary(self: *const Self) !godot.Dictionary {
        if (mbind_get_response_headers_as_dictionary == null) {
            mbind_get_response_headers_as_dictionary = try api.createMethod("HTTPClient", "get_response_headers_as_dictionary");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_response_headers_as_dictionary, base, cargs, result);
        return @ptrCast(*godot.Dictionary, @alignCast(@alignOf(&godot.Dictionary), result)).*;
    }

    pub fn getStatus(self: *const Self) !i32 {
        if (mbind_get_status == null) {
            mbind_get_status = try api.createMethod("HTTPClient", "get_status");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_status, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn hasResponse(self: *const Self) !bool {
        if (mbind_has_response == null) {
            mbind_has_response = try api.createMethod("HTTPClient", "has_response");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_has_response, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isBlockingModeEnabled(self: *const Self) !bool {
        if (mbind_is_blocking_mode_enabled == null) {
            mbind_is_blocking_mode_enabled = try api.createMethod("HTTPClient", "is_blocking_mode_enabled");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_blocking_mode_enabled, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isResponseChunked(self: *const Self) !bool {
        if (mbind_is_response_chunked == null) {
            mbind_is_response_chunked = try api.createMethod("HTTPClient", "is_response_chunked");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_response_chunked, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn poll(self: *const Self) !i32 {
        if (mbind_poll == null) {
            mbind_poll = try api.createMethod("HTTPClient", "poll");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_poll, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn queryStringFromDict(self: *const Self, arg_fields: *const godot.Dictionary) !godot.String {
        if (mbind_query_string_from_dict == null) {
            mbind_query_string_from_dict = try api.createMethod("HTTPClient", "query_string_from_dict");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_fields),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_query_string_from_dict, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn readResponseBodyChunk(self: *const Self) !godot.PoolByteArray {
        if (mbind_read_response_body_chunk == null) {
            mbind_read_response_body_chunk = try api.createMethod("HTTPClient", "read_response_body_chunk");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_read_response_body_chunk, base, cargs, result);
        return @ptrCast(*godot.PoolByteArray, @alignCast(@alignOf(&godot.PoolByteArray), result)).*;
    }

    pub fn request(self: *const Self, arg_method: i32, arg_url: *const godot.String, arg_headers: *const godot.PoolStringArray, arg_body: *const godot.String) !i32 {
        if (mbind_request == null) {
            mbind_request = try api.createMethod("HTTPClient", "request");
        }

        var result: ?*anyopaque = null;
        var args: [4]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_method),
            @ptrCast(*const anyopaque, arg_url),
            @ptrCast(*const anyopaque, arg_headers),
            @ptrCast(*const anyopaque, arg_body),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_request, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn requestRaw(self: *const Self, arg_method: i32, arg_url: *const godot.String, arg_headers: *const godot.PoolStringArray, arg_body: *const godot.PoolByteArray) !i32 {
        if (mbind_request_raw == null) {
            mbind_request_raw = try api.createMethod("HTTPClient", "request_raw");
        }

        var result: ?*anyopaque = null;
        var args: [4]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_method),
            @ptrCast(*const anyopaque, arg_url),
            @ptrCast(*const anyopaque, arg_headers),
            @ptrCast(*const anyopaque, arg_body),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_request_raw, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn setBlockingMode(self: *const Self, arg_enabled: bool) !void {
        if (mbind_set_blocking_mode == null) {
            mbind_set_blocking_mode = try api.createMethod("HTTPClient", "set_blocking_mode");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enabled),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_blocking_mode, base, cargs, result);
    }

    pub fn setConnection(self: *const Self, arg_connection: *const godot.StreamPeer) !void {
        if (mbind_set_connection == null) {
            mbind_set_connection = try api.createMethod("HTTPClient", "set_connection");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_connection),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_connection, base, cargs, result);
    }

    pub fn setReadChunkSize(self: *const Self, arg_bytes: i32) !void {
        if (mbind_set_read_chunk_size == null) {
            mbind_set_read_chunk_size = try api.createMethod("HTTPClient", "set_read_chunk_size");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_bytes),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_read_chunk_size, base, cargs, result);
    }
};