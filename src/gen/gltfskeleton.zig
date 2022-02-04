// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const Resource = @import("resource.zig").Resource;

// method bindings
var mbind_get_bone_attachment: ?*c_api.godot_method_bind = null;
var mbind_get_bone_attachment_count: ?*c_api.godot_method_bind = null;
var mbind_get_godot_bone_node: ?*c_api.godot_method_bind = null;
var mbind_get_godot_skeleton: ?*c_api.godot_method_bind = null;
var mbind_get_joints: ?*c_api.godot_method_bind = null;
var mbind_get_roots: ?*c_api.godot_method_bind = null;
var mbind_get_unique_names: ?*c_api.godot_method_bind = null;
var mbind_set_godot_bone_node: ?*c_api.godot_method_bind = null;
var mbind_set_joints: ?*c_api.godot_method_bind = null;
var mbind_set_roots: ?*c_api.godot_method_bind = null;
var mbind_set_unique_names: ?*c_api.godot_method_bind = null;
var mbind_gltfskeleton_constructor: ?fn () ?*c_api.godot_object = null;

pub const GLTFSkeleton = struct {
    const Self = @This();
    const BaseClass = Resource;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_gltfskeleton_constructor == null) {
            mbind_gltfskeleton_constructor = try api.createConstructor("GLTFSkeleton");
        }
        return api.createObject(Self, mbind_gltfskeleton_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getBoneAttachment(self: *const Self, arg_idx: i32) !godot.BoneAttachment {
        if (mbind_get_bone_attachment == null) {
            mbind_get_bone_attachment = try api.createMethod("GLTFSkeleton", "get_bone_attachment");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_bone_attachment, base, cargs, result);
        return @ptrCast(*godot.BoneAttachment, @alignCast(@alignOf(&godot.BoneAttachment), result)).*;
    }

    pub fn getBoneAttachmentCount(self: *const Self) !i32 {
        if (mbind_get_bone_attachment_count == null) {
            mbind_get_bone_attachment_count = try api.createMethod("GLTFSkeleton", "get_bone_attachment_count");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_bone_attachment_count, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getGodotBoneNode(self: *const Self) !godot.Dictionary {
        if (mbind_get_godot_bone_node == null) {
            mbind_get_godot_bone_node = try api.createMethod("GLTFSkeleton", "get_godot_bone_node");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_godot_bone_node, base, cargs, result);
        return @ptrCast(*godot.Dictionary, @alignCast(@alignOf(&godot.Dictionary), result)).*;
    }

    pub fn getGodotSkeleton(self: *const Self) !godot.Skeleton {
        if (mbind_get_godot_skeleton == null) {
            mbind_get_godot_skeleton = try api.createMethod("GLTFSkeleton", "get_godot_skeleton");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_godot_skeleton, base, cargs, result);
        return @ptrCast(*godot.Skeleton, @alignCast(@alignOf(&godot.Skeleton), result)).*;
    }

    pub fn getJoints(self: *const Self) !godot.PoolIntArray {
        if (mbind_get_joints == null) {
            mbind_get_joints = try api.createMethod("GLTFSkeleton", "get_joints");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_joints, base, cargs, result);
        return @ptrCast(*godot.PoolIntArray, @alignCast(@alignOf(&godot.PoolIntArray), result)).*;
    }

    pub fn getRoots(self: *const Self) !godot.PoolIntArray {
        if (mbind_get_roots == null) {
            mbind_get_roots = try api.createMethod("GLTFSkeleton", "get_roots");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_roots, base, cargs, result);
        return @ptrCast(*godot.PoolIntArray, @alignCast(@alignOf(&godot.PoolIntArray), result)).*;
    }

    pub fn getUniqueNames(self: *const Self) !godot.Array {
        if (mbind_get_unique_names == null) {
            mbind_get_unique_names = try api.createMethod("GLTFSkeleton", "get_unique_names");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_unique_names, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn setGodotBoneNode(self: *const Self, arg_godot_bone_node: *const godot.Dictionary) !void {
        if (mbind_set_godot_bone_node == null) {
            mbind_set_godot_bone_node = try api.createMethod("GLTFSkeleton", "set_godot_bone_node");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_godot_bone_node),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_godot_bone_node, base, cargs, result);
    }

    pub fn setJoints(self: *const Self, arg_joints: *const godot.PoolIntArray) !void {
        if (mbind_set_joints == null) {
            mbind_set_joints = try api.createMethod("GLTFSkeleton", "set_joints");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_joints),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_joints, base, cargs, result);
    }

    pub fn setRoots(self: *const Self, arg_roots: *const godot.PoolIntArray) !void {
        if (mbind_set_roots == null) {
            mbind_set_roots = try api.createMethod("GLTFSkeleton", "set_roots");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_roots),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_roots, base, cargs, result);
    }

    pub fn setUniqueNames(self: *const Self, arg_unique_names: *const godot.Array) !void {
        if (mbind_set_unique_names == null) {
            mbind_set_unique_names = try api.createMethod("GLTFSkeleton", "set_unique_names");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_unique_names),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_unique_names, base, cargs, result);
    }
};