// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_add_preview_generator: ?*c_api.godot_method_bind = null;
var mbind_check_for_invalidation: ?*c_api.godot_method_bind = null;
var mbind_queue_edited_resource_preview: ?*c_api.godot_method_bind = null;
var mbind_queue_resource_preview: ?*c_api.godot_method_bind = null;
var mbind_remove_preview_generator: ?*c_api.godot_method_bind = null;
var mbind_editor_resource_preview_constructor: ?fn () ?*c_api.godot_object = null;

pub const EditorResourcePreview = struct {
    const Self = @This();
    pub const BaseClass = godot.Node;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_editor_resource_preview_constructor == null) {
            mbind_editor_resource_preview_constructor = try api.createConstructor("EditorResourcePreview");
        }
        return api.createObject(Self, mbind_editor_resource_preview_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn addPreviewGenerator(self: *const Self, arg_generator: *const godot.EditorResourcePreviewGenerator) !void {
        if (mbind_add_preview_generator == null) {
            mbind_add_preview_generator = try api.createMethod("EditorResourcePreview", "add_preview_generator");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_generator),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_add_preview_generator, base, cargs, result);
    }

    pub fn checkForInvalidation(self: *const Self, arg_path: *const godot.String) !void {
        if (mbind_check_for_invalidation == null) {
            mbind_check_for_invalidation = try api.createMethod("EditorResourcePreview", "check_for_invalidation");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_path),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_check_for_invalidation, base, cargs, result);
    }

    pub fn queueEditedResourcePreview(self: *const Self, arg_resource: *const godot.Resource, arg_receiver: *const godot.Object, arg_receiver_func: *const godot.String, arg_userdata: *const godot.Variant) !void {
        if (mbind_queue_edited_resource_preview == null) {
            mbind_queue_edited_resource_preview = try api.createMethod("EditorResourcePreview", "queue_edited_resource_preview");
        }

        var result: ?*anyopaque = null;
        var args: [4]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_resource),
            @ptrCast(*const anyopaque, arg_receiver),
            @ptrCast(*const anyopaque, arg_receiver_func),
            @ptrCast(*const anyopaque, arg_userdata),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_queue_edited_resource_preview, base, cargs, result);
    }

    pub fn queueResourcePreview(self: *const Self, arg_path: *const godot.String, arg_receiver: *const godot.Object, arg_receiver_func: *const godot.String, arg_userdata: *const godot.Variant) !void {
        if (mbind_queue_resource_preview == null) {
            mbind_queue_resource_preview = try api.createMethod("EditorResourcePreview", "queue_resource_preview");
        }

        var result: ?*anyopaque = null;
        var args: [4]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_path),
            @ptrCast(*const anyopaque, arg_receiver),
            @ptrCast(*const anyopaque, arg_receiver_func),
            @ptrCast(*const anyopaque, arg_userdata),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_queue_resource_preview, base, cargs, result);
    }

    pub fn removePreviewGenerator(self: *const Self, arg_generator: *const godot.EditorResourcePreviewGenerator) !void {
        if (mbind_remove_preview_generator == null) {
            mbind_remove_preview_generator = try api.createMethod("EditorResourcePreview", "remove_preview_generator");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_generator),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_remove_preview_generator, base, cargs, result);
    }
};