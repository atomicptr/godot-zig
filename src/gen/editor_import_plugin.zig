// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// base class
const ResourceImporter = @import("resource_importer.zig").ResourceImporter;

// method bindings
var mbind_editor_import_plugin_constructor: ?fn () ?*c_api.godot_object = null;

pub const EditorImportPlugin = struct {
    const Self = @This();
    const BaseClass = ResourceImporter;

    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_editor_import_plugin_constructor == null) {
            mbind_editor_import_plugin_constructor = try api.createConstructor("EditorImportPlugin");
        }
        return api.createObject(Self, mbind_editor_import_plugin_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }
};