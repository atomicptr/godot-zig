// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_change_dir: ?*c_api.godot_method_bind = null;
var mbind_copy: ?*c_api.godot_method_bind = null;
var mbind_current_is_dir: ?*c_api.godot_method_bind = null;
var mbind_dir_exists: ?*c_api.godot_method_bind = null;
var mbind_file_exists: ?*c_api.godot_method_bind = null;
var mbind_get_current_dir: ?*c_api.godot_method_bind = null;
var mbind_get_current_drive: ?*c_api.godot_method_bind = null;
var mbind_get_drive: ?*c_api.godot_method_bind = null;
var mbind_get_drive_count: ?*c_api.godot_method_bind = null;
var mbind_get_next: ?*c_api.godot_method_bind = null;
var mbind_get_space_left: ?*c_api.godot_method_bind = null;
var mbind_list_dir_begin: ?*c_api.godot_method_bind = null;
var mbind_list_dir_end: ?*c_api.godot_method_bind = null;
var mbind_make_dir: ?*c_api.godot_method_bind = null;
var mbind_make_dir_recursive: ?*c_api.godot_method_bind = null;
var mbind_open: ?*c_api.godot_method_bind = null;
var mbind_remove: ?*c_api.godot_method_bind = null;
var mbind_rename: ?*c_api.godot_method_bind = null;
var mbind__directory_constructor: ?fn () ?*c_api.godot_object = null;

pub const _Directory = struct {
    const Self = @This();
    pub const BaseClass = godot.Reference;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind__directory_constructor == null) {
            mbind__directory_constructor = try api.createConstructor("_Directory");
        }
        return api.createObject(Self, mbind__directory_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn changeDir(self: *const Self, arg_todir: *const godot.String) !i32 {
        if (mbind_change_dir == null) {
            mbind_change_dir = try api.createMethod("_Directory", "change_dir");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_todir),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_change_dir, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn copy(self: *const Self, arg_from: *const godot.String, arg_to: *const godot.String) !i32 {
        if (mbind_copy == null) {
            mbind_copy = try api.createMethod("_Directory", "copy");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_from),
            @ptrCast(*const anyopaque, arg_to),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_copy, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn currentIsDir(self: *const Self) !bool {
        if (mbind_current_is_dir == null) {
            mbind_current_is_dir = try api.createMethod("_Directory", "current_is_dir");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_current_is_dir, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn dirExists(self: *const Self, arg_path: *const godot.String) !bool {
        if (mbind_dir_exists == null) {
            mbind_dir_exists = try api.createMethod("_Directory", "dir_exists");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_path),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_dir_exists, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn fileExists(self: *const Self, arg_path: *const godot.String) !bool {
        if (mbind_file_exists == null) {
            mbind_file_exists = try api.createMethod("_Directory", "file_exists");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_path),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_file_exists, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getCurrentDir(self: *const Self) !godot.String {
        if (mbind_get_current_dir == null) {
            mbind_get_current_dir = try api.createMethod("_Directory", "get_current_dir");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_current_dir, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getCurrentDrive(self: *const Self) !i32 {
        if (mbind_get_current_drive == null) {
            mbind_get_current_drive = try api.createMethod("_Directory", "get_current_drive");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_current_drive, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getDrive(self: *const Self, arg_idx: i32) !godot.String {
        if (mbind_get_drive == null) {
            mbind_get_drive = try api.createMethod("_Directory", "get_drive");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_drive, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getDriveCount(self: *const Self) !i32 {
        if (mbind_get_drive_count == null) {
            mbind_get_drive_count = try api.createMethod("_Directory", "get_drive_count");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_drive_count, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getNext(self: *const Self) !godot.String {
        if (mbind_get_next == null) {
            mbind_get_next = try api.createMethod("_Directory", "get_next");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_next, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getSpaceLeft(self: *const Self) !i32 {
        if (mbind_get_space_left == null) {
            mbind_get_space_left = try api.createMethod("_Directory", "get_space_left");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_space_left, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn listDirBegin(self: *const Self, arg_skip_navigational: bool, arg_skip_hidden: bool) !i32 {
        if (mbind_list_dir_begin == null) {
            mbind_list_dir_begin = try api.createMethod("_Directory", "list_dir_begin");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_skip_navigational),
            @ptrCast(*const anyopaque, *arg_skip_hidden),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_list_dir_begin, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn listDirEnd(self: *const Self) !void {
        if (mbind_list_dir_end == null) {
            mbind_list_dir_end = try api.createMethod("_Directory", "list_dir_end");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_list_dir_end, base, cargs, result);
    }

    pub fn makeDir(self: *const Self, arg_path: *const godot.String) !i32 {
        if (mbind_make_dir == null) {
            mbind_make_dir = try api.createMethod("_Directory", "make_dir");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_path),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_make_dir, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn makeDirRecursive(self: *const Self, arg_path: *const godot.String) !i32 {
        if (mbind_make_dir_recursive == null) {
            mbind_make_dir_recursive = try api.createMethod("_Directory", "make_dir_recursive");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_path),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_make_dir_recursive, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn open(self: *const Self, arg_path: *const godot.String) !i32 {
        if (mbind_open == null) {
            mbind_open = try api.createMethod("_Directory", "open");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_path),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_open, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn remove(self: *const Self, arg_path: *const godot.String) !i32 {
        if (mbind_remove == null) {
            mbind_remove = try api.createMethod("_Directory", "remove");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_path),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_remove, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn rename(self: *const Self, arg_from: *const godot.String, arg_to: *const godot.String) !i32 {
        if (mbind_rename == null) {
            mbind_rename = try api.createMethod("_Directory", "rename");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_from),
            @ptrCast(*const anyopaque, arg_to),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_rename, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }
};