// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_get_accessors: ?*c_api.godot_method_bind = null;
var mbind_get_animation_player: ?*c_api.godot_method_bind = null;
var mbind_get_animation_players_count: ?*c_api.godot_method_bind = null;
var mbind_get_animations: ?*c_api.godot_method_bind = null;
var mbind_get_buffer_views: ?*c_api.godot_method_bind = null;
var mbind_get_buffers: ?*c_api.godot_method_bind = null;
var mbind_get_cameras: ?*c_api.godot_method_bind = null;
var mbind_get_glb_data: ?*c_api.godot_method_bind = null;
var mbind_get_images: ?*c_api.godot_method_bind = null;
var mbind_get_json: ?*c_api.godot_method_bind = null;
var mbind_get_lights: ?*c_api.godot_method_bind = null;
var mbind_get_major_version: ?*c_api.godot_method_bind = null;
var mbind_get_materials: ?*c_api.godot_method_bind = null;
var mbind_get_meshes: ?*c_api.godot_method_bind = null;
var mbind_get_minor_version: ?*c_api.godot_method_bind = null;
var mbind_get_nodes: ?*c_api.godot_method_bind = null;
var mbind_get_root_nodes: ?*c_api.godot_method_bind = null;
var mbind_get_scene_name: ?*c_api.godot_method_bind = null;
var mbind_get_scene_node: ?*c_api.godot_method_bind = null;
var mbind_get_skeleton_to_node: ?*c_api.godot_method_bind = null;
var mbind_get_skeletons: ?*c_api.godot_method_bind = null;
var mbind_get_skins: ?*c_api.godot_method_bind = null;
var mbind_get_textures: ?*c_api.godot_method_bind = null;
var mbind_get_unique_animation_names: ?*c_api.godot_method_bind = null;
var mbind_get_unique_names: ?*c_api.godot_method_bind = null;
var mbind_get_use_named_skin_binds: ?*c_api.godot_method_bind = null;
var mbind_set_accessors: ?*c_api.godot_method_bind = null;
var mbind_set_animations: ?*c_api.godot_method_bind = null;
var mbind_set_buffer_views: ?*c_api.godot_method_bind = null;
var mbind_set_buffers: ?*c_api.godot_method_bind = null;
var mbind_set_cameras: ?*c_api.godot_method_bind = null;
var mbind_set_glb_data: ?*c_api.godot_method_bind = null;
var mbind_set_images: ?*c_api.godot_method_bind = null;
var mbind_set_json: ?*c_api.godot_method_bind = null;
var mbind_set_lights: ?*c_api.godot_method_bind = null;
var mbind_set_major_version: ?*c_api.godot_method_bind = null;
var mbind_set_materials: ?*c_api.godot_method_bind = null;
var mbind_set_meshes: ?*c_api.godot_method_bind = null;
var mbind_set_minor_version: ?*c_api.godot_method_bind = null;
var mbind_set_nodes: ?*c_api.godot_method_bind = null;
var mbind_set_root_nodes: ?*c_api.godot_method_bind = null;
var mbind_set_scene_name: ?*c_api.godot_method_bind = null;
var mbind_set_skeleton_to_node: ?*c_api.godot_method_bind = null;
var mbind_set_skeletons: ?*c_api.godot_method_bind = null;
var mbind_set_skins: ?*c_api.godot_method_bind = null;
var mbind_set_textures: ?*c_api.godot_method_bind = null;
var mbind_set_unique_animation_names: ?*c_api.godot_method_bind = null;
var mbind_set_unique_names: ?*c_api.godot_method_bind = null;
var mbind_set_use_named_skin_binds: ?*c_api.godot_method_bind = null;
var mbind_gltfstate_constructor: ?fn () ?*c_api.godot_object = null;

pub const GLTFState = struct {
    const Self = @This();
    pub const BaseClass = godot.Resource;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_gltfstate_constructor == null) {
            mbind_gltfstate_constructor = try api.createConstructor("GLTFState");
        }
        return api.createObject(Self, mbind_gltfstate_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn getAccessors(self: *const Self) !godot.Array {
        if (mbind_get_accessors == null) {
            mbind_get_accessors = try api.createMethod("GLTFState", "get_accessors");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_accessors, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getAnimationPlayer(self: *const Self, arg_idx: i32) !godot.AnimationPlayer {
        if (mbind_get_animation_player == null) {
            mbind_get_animation_player = try api.createMethod("GLTFState", "get_animation_player");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_animation_player, base, cargs, result);
        return @ptrCast(*godot.AnimationPlayer, @alignCast(@alignOf(&godot.AnimationPlayer), result)).*;
    }

    pub fn getAnimationPlayersCount(self: *const Self, arg_idx: i32) !i32 {
        if (mbind_get_animation_players_count == null) {
            mbind_get_animation_players_count = try api.createMethod("GLTFState", "get_animation_players_count");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_animation_players_count, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getAnimations(self: *const Self) !godot.Array {
        if (mbind_get_animations == null) {
            mbind_get_animations = try api.createMethod("GLTFState", "get_animations");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_animations, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getBufferViews(self: *const Self) !godot.Array {
        if (mbind_get_buffer_views == null) {
            mbind_get_buffer_views = try api.createMethod("GLTFState", "get_buffer_views");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_buffer_views, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getBuffers(self: *const Self) !godot.Array {
        if (mbind_get_buffers == null) {
            mbind_get_buffers = try api.createMethod("GLTFState", "get_buffers");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_buffers, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getCameras(self: *const Self) !godot.Array {
        if (mbind_get_cameras == null) {
            mbind_get_cameras = try api.createMethod("GLTFState", "get_cameras");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_cameras, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getGlbData(self: *const Self) !godot.PoolByteArray {
        if (mbind_get_glb_data == null) {
            mbind_get_glb_data = try api.createMethod("GLTFState", "get_glb_data");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_glb_data, base, cargs, result);
        return @ptrCast(*godot.PoolByteArray, @alignCast(@alignOf(&godot.PoolByteArray), result)).*;
    }

    pub fn getImages(self: *const Self) !godot.Array {
        if (mbind_get_images == null) {
            mbind_get_images = try api.createMethod("GLTFState", "get_images");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_images, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getJson(self: *const Self) !godot.Dictionary {
        if (mbind_get_json == null) {
            mbind_get_json = try api.createMethod("GLTFState", "get_json");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_json, base, cargs, result);
        return @ptrCast(*godot.Dictionary, @alignCast(@alignOf(&godot.Dictionary), result)).*;
    }

    pub fn getLights(self: *const Self) !godot.Array {
        if (mbind_get_lights == null) {
            mbind_get_lights = try api.createMethod("GLTFState", "get_lights");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_lights, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getMajorVersion(self: *const Self) !i32 {
        if (mbind_get_major_version == null) {
            mbind_get_major_version = try api.createMethod("GLTFState", "get_major_version");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_major_version, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getMaterials(self: *const Self) !godot.Array {
        if (mbind_get_materials == null) {
            mbind_get_materials = try api.createMethod("GLTFState", "get_materials");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_materials, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getMeshes(self: *const Self) !godot.Array {
        if (mbind_get_meshes == null) {
            mbind_get_meshes = try api.createMethod("GLTFState", "get_meshes");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_meshes, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getMinorVersion(self: *const Self) !i32 {
        if (mbind_get_minor_version == null) {
            mbind_get_minor_version = try api.createMethod("GLTFState", "get_minor_version");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_minor_version, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getNodes(self: *const Self) !godot.Array {
        if (mbind_get_nodes == null) {
            mbind_get_nodes = try api.createMethod("GLTFState", "get_nodes");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_nodes, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getRootNodes(self: *const Self) !godot.Array {
        if (mbind_get_root_nodes == null) {
            mbind_get_root_nodes = try api.createMethod("GLTFState", "get_root_nodes");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_root_nodes, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getSceneName(self: *const Self) !godot.String {
        if (mbind_get_scene_name == null) {
            mbind_get_scene_name = try api.createMethod("GLTFState", "get_scene_name");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_scene_name, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getSceneNode(self: *const Self, arg_idx: i32) !godot.Node {
        if (mbind_get_scene_node == null) {
            mbind_get_scene_node = try api.createMethod("GLTFState", "get_scene_node");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_scene_node, base, cargs, result);
        return @ptrCast(*godot.Node, @alignCast(@alignOf(&godot.Node), result)).*;
    }

    pub fn getSkeletonToNode(self: *const Self) !godot.Dictionary {
        if (mbind_get_skeleton_to_node == null) {
            mbind_get_skeleton_to_node = try api.createMethod("GLTFState", "get_skeleton_to_node");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_skeleton_to_node, base, cargs, result);
        return @ptrCast(*godot.Dictionary, @alignCast(@alignOf(&godot.Dictionary), result)).*;
    }

    pub fn getSkeletons(self: *const Self) !godot.Array {
        if (mbind_get_skeletons == null) {
            mbind_get_skeletons = try api.createMethod("GLTFState", "get_skeletons");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_skeletons, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getSkins(self: *const Self) !godot.Array {
        if (mbind_get_skins == null) {
            mbind_get_skins = try api.createMethod("GLTFState", "get_skins");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_skins, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getTextures(self: *const Self) !godot.Array {
        if (mbind_get_textures == null) {
            mbind_get_textures = try api.createMethod("GLTFState", "get_textures");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_textures, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getUniqueAnimationNames(self: *const Self) !godot.Array {
        if (mbind_get_unique_animation_names == null) {
            mbind_get_unique_animation_names = try api.createMethod("GLTFState", "get_unique_animation_names");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_unique_animation_names, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getUniqueNames(self: *const Self) !godot.Array {
        if (mbind_get_unique_names == null) {
            mbind_get_unique_names = try api.createMethod("GLTFState", "get_unique_names");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_unique_names, base, cargs, result);
        return @ptrCast(*godot.Array, @alignCast(@alignOf(&godot.Array), result)).*;
    }

    pub fn getUseNamedSkinBinds(self: *const Self) !bool {
        if (mbind_get_use_named_skin_binds == null) {
            mbind_get_use_named_skin_binds = try api.createMethod("GLTFState", "get_use_named_skin_binds");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_use_named_skin_binds, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setAccessors(self: *const Self, arg_accessors: *const godot.Array) !void {
        if (mbind_set_accessors == null) {
            mbind_set_accessors = try api.createMethod("GLTFState", "set_accessors");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_accessors),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_accessors, base, cargs, result);
    }

    pub fn setAnimations(self: *const Self, arg_animations: *const godot.Array) !void {
        if (mbind_set_animations == null) {
            mbind_set_animations = try api.createMethod("GLTFState", "set_animations");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_animations),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_animations, base, cargs, result);
    }

    pub fn setBufferViews(self: *const Self, arg_buffer_views: *const godot.Array) !void {
        if (mbind_set_buffer_views == null) {
            mbind_set_buffer_views = try api.createMethod("GLTFState", "set_buffer_views");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_buffer_views),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_buffer_views, base, cargs, result);
    }

    pub fn setBuffers(self: *const Self, arg_buffers: *const godot.Array) !void {
        if (mbind_set_buffers == null) {
            mbind_set_buffers = try api.createMethod("GLTFState", "set_buffers");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_buffers),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_buffers, base, cargs, result);
    }

    pub fn setCameras(self: *const Self, arg_cameras: *const godot.Array) !void {
        if (mbind_set_cameras == null) {
            mbind_set_cameras = try api.createMethod("GLTFState", "set_cameras");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_cameras),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_cameras, base, cargs, result);
    }

    pub fn setGlbData(self: *const Self, arg_glb_data: *const godot.PoolByteArray) !void {
        if (mbind_set_glb_data == null) {
            mbind_set_glb_data = try api.createMethod("GLTFState", "set_glb_data");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_glb_data),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_glb_data, base, cargs, result);
    }

    pub fn setImages(self: *const Self, arg_images: *const godot.Array) !void {
        if (mbind_set_images == null) {
            mbind_set_images = try api.createMethod("GLTFState", "set_images");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_images),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_images, base, cargs, result);
    }

    pub fn setJson(self: *const Self, arg_json: *const godot.Dictionary) !void {
        if (mbind_set_json == null) {
            mbind_set_json = try api.createMethod("GLTFState", "set_json");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_json),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_json, base, cargs, result);
    }

    pub fn setLights(self: *const Self, arg_lights: *const godot.Array) !void {
        if (mbind_set_lights == null) {
            mbind_set_lights = try api.createMethod("GLTFState", "set_lights");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_lights),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_lights, base, cargs, result);
    }

    pub fn setMajorVersion(self: *const Self, arg_major_version: i32) !void {
        if (mbind_set_major_version == null) {
            mbind_set_major_version = try api.createMethod("GLTFState", "set_major_version");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_major_version),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_major_version, base, cargs, result);
    }

    pub fn setMaterials(self: *const Self, arg_materials: *const godot.Array) !void {
        if (mbind_set_materials == null) {
            mbind_set_materials = try api.createMethod("GLTFState", "set_materials");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_materials),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_materials, base, cargs, result);
    }

    pub fn setMeshes(self: *const Self, arg_meshes: *const godot.Array) !void {
        if (mbind_set_meshes == null) {
            mbind_set_meshes = try api.createMethod("GLTFState", "set_meshes");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_meshes),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_meshes, base, cargs, result);
    }

    pub fn setMinorVersion(self: *const Self, arg_minor_version: i32) !void {
        if (mbind_set_minor_version == null) {
            mbind_set_minor_version = try api.createMethod("GLTFState", "set_minor_version");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_minor_version),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_minor_version, base, cargs, result);
    }

    pub fn setNodes(self: *const Self, arg_nodes: *const godot.Array) !void {
        if (mbind_set_nodes == null) {
            mbind_set_nodes = try api.createMethod("GLTFState", "set_nodes");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_nodes),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_nodes, base, cargs, result);
    }

    pub fn setRootNodes(self: *const Self, arg_root_nodes: *const godot.Array) !void {
        if (mbind_set_root_nodes == null) {
            mbind_set_root_nodes = try api.createMethod("GLTFState", "set_root_nodes");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_root_nodes),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_root_nodes, base, cargs, result);
    }

    pub fn setSceneName(self: *const Self, arg_scene_name: *const godot.String) !void {
        if (mbind_set_scene_name == null) {
            mbind_set_scene_name = try api.createMethod("GLTFState", "set_scene_name");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_scene_name),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_scene_name, base, cargs, result);
    }

    pub fn setSkeletonToNode(self: *const Self, arg_skeleton_to_node: *const godot.Dictionary) !void {
        if (mbind_set_skeleton_to_node == null) {
            mbind_set_skeleton_to_node = try api.createMethod("GLTFState", "set_skeleton_to_node");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_skeleton_to_node),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_skeleton_to_node, base, cargs, result);
    }

    pub fn setSkeletons(self: *const Self, arg_skeletons: *const godot.Array) !void {
        if (mbind_set_skeletons == null) {
            mbind_set_skeletons = try api.createMethod("GLTFState", "set_skeletons");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_skeletons),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_skeletons, base, cargs, result);
    }

    pub fn setSkins(self: *const Self, arg_skins: *const godot.Array) !void {
        if (mbind_set_skins == null) {
            mbind_set_skins = try api.createMethod("GLTFState", "set_skins");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_skins),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_skins, base, cargs, result);
    }

    pub fn setTextures(self: *const Self, arg_textures: *const godot.Array) !void {
        if (mbind_set_textures == null) {
            mbind_set_textures = try api.createMethod("GLTFState", "set_textures");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_textures),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_textures, base, cargs, result);
    }

    pub fn setUniqueAnimationNames(self: *const Self, arg_unique_animation_names: *const godot.Array) !void {
        if (mbind_set_unique_animation_names == null) {
            mbind_set_unique_animation_names = try api.createMethod("GLTFState", "set_unique_animation_names");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_unique_animation_names),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_unique_animation_names, base, cargs, result);
    }

    pub fn setUniqueNames(self: *const Self, arg_unique_names: *const godot.Array) !void {
        if (mbind_set_unique_names == null) {
            mbind_set_unique_names = try api.createMethod("GLTFState", "set_unique_names");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_unique_names),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_unique_names, base, cargs, result);
    }

    pub fn setUseNamedSkinBinds(self: *const Self, arg_use_named_skin_binds: bool) !void {
        if (mbind_set_use_named_skin_binds == null) {
            mbind_set_use_named_skin_binds = try api.createMethod("GLTFState", "set_use_named_skin_binds");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_use_named_skin_binds),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_use_named_skin_binds, base, cargs, result);
    }
};