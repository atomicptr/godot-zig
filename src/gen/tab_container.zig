// This file was automatically generated by godot-zig, please do not edit it.
const godot = @import("__import.zig");
const api = @import("../api.zig");
const c_api = @import("../c_api.zig");

// method bindings
var mbind_are_tabs_visible: ?*c_api.godot_method_bind = null;
var mbind_get_current_tab: ?*c_api.godot_method_bind = null;
var mbind_get_current_tab_control: ?*c_api.godot_method_bind = null;
var mbind_get_drag_to_rearrange_enabled: ?*c_api.godot_method_bind = null;
var mbind_get_popup: ?*c_api.godot_method_bind = null;
var mbind_get_previous_tab: ?*c_api.godot_method_bind = null;
var mbind_get_tab_align: ?*c_api.godot_method_bind = null;
var mbind_get_tab_control: ?*c_api.godot_method_bind = null;
var mbind_get_tab_count: ?*c_api.godot_method_bind = null;
var mbind_get_tab_disabled: ?*c_api.godot_method_bind = null;
var mbind_get_tab_hidden: ?*c_api.godot_method_bind = null;
var mbind_get_tab_icon: ?*c_api.godot_method_bind = null;
var mbind_get_tab_idx_at_point: ?*c_api.godot_method_bind = null;
var mbind_get_tab_title: ?*c_api.godot_method_bind = null;
var mbind_get_tabs_rearrange_group: ?*c_api.godot_method_bind = null;
var mbind_get_use_hidden_tabs_for_min_size: ?*c_api.godot_method_bind = null;
var mbind_is_all_tabs_in_front: ?*c_api.godot_method_bind = null;
var mbind_set_all_tabs_in_front: ?*c_api.godot_method_bind = null;
var mbind_set_current_tab: ?*c_api.godot_method_bind = null;
var mbind_set_drag_to_rearrange_enabled: ?*c_api.godot_method_bind = null;
var mbind_set_popup: ?*c_api.godot_method_bind = null;
var mbind_set_tab_align: ?*c_api.godot_method_bind = null;
var mbind_set_tab_disabled: ?*c_api.godot_method_bind = null;
var mbind_set_tab_hidden: ?*c_api.godot_method_bind = null;
var mbind_set_tab_icon: ?*c_api.godot_method_bind = null;
var mbind_set_tab_title: ?*c_api.godot_method_bind = null;
var mbind_set_tabs_rearrange_group: ?*c_api.godot_method_bind = null;
var mbind_set_tabs_visible: ?*c_api.godot_method_bind = null;
var mbind_set_use_hidden_tabs_for_min_size: ?*c_api.godot_method_bind = null;
var mbind_tab_container_constructor: ?fn () ?*c_api.godot_object = null;

pub const TabContainer = struct {
    const Self = @This();
    pub const BaseClass = godot.Container;

    // Pointers to zero-sized types are also zero-sized,
    // therefore we need to add some data to make it not zero-sized :)
    _data: u8,
    base: *BaseClass,

    pub fn init() !*Self {
        if (mbind_tab_container_constructor == null) {
            mbind_tab_container_constructor = try api.createConstructor("TabContainer");
        }
        return api.createObject(Self, mbind_tab_container_constructor.?);
    }

    pub fn deinit(self: *Self) void {
        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
    }

    pub fn areTabsVisible(self: *const Self) !bool {
        if (mbind_are_tabs_visible == null) {
            mbind_are_tabs_visible = try api.createMethod("TabContainer", "are_tabs_visible");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_are_tabs_visible, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getCurrentTab(self: *const Self) !i32 {
        if (mbind_get_current_tab == null) {
            mbind_get_current_tab = try api.createMethod("TabContainer", "get_current_tab");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_current_tab, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getCurrentTabControl(self: *const Self) !godot.Control {
        if (mbind_get_current_tab_control == null) {
            mbind_get_current_tab_control = try api.createMethod("TabContainer", "get_current_tab_control");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_current_tab_control, base, cargs, result);
        return @ptrCast(*godot.Control, @alignCast(@alignOf(&godot.Control), result)).*;
    }

    pub fn getDragToRearrangeEnabled(self: *const Self) !bool {
        if (mbind_get_drag_to_rearrange_enabled == null) {
            mbind_get_drag_to_rearrange_enabled = try api.createMethod("TabContainer", "get_drag_to_rearrange_enabled");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_drag_to_rearrange_enabled, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getPopup(self: *const Self) !godot.Popup {
        if (mbind_get_popup == null) {
            mbind_get_popup = try api.createMethod("TabContainer", "get_popup");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_popup, base, cargs, result);
        return @ptrCast(*godot.Popup, @alignCast(@alignOf(&godot.Popup), result)).*;
    }

    pub fn getPreviousTab(self: *const Self) !i32 {
        if (mbind_get_previous_tab == null) {
            mbind_get_previous_tab = try api.createMethod("TabContainer", "get_previous_tab");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_previous_tab, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getTabAlign(self: *const Self) !i32 {
        if (mbind_get_tab_align == null) {
            mbind_get_tab_align = try api.createMethod("TabContainer", "get_tab_align");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_tab_align, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getTabControl(self: *const Self, arg_tab_idx: i32) !godot.Control {
        if (mbind_get_tab_control == null) {
            mbind_get_tab_control = try api.createMethod("TabContainer", "get_tab_control");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_tab_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_tab_control, base, cargs, result);
        return @ptrCast(*godot.Control, @alignCast(@alignOf(&godot.Control), result)).*;
    }

    pub fn getTabCount(self: *const Self) !i32 {
        if (mbind_get_tab_count == null) {
            mbind_get_tab_count = try api.createMethod("TabContainer", "get_tab_count");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_tab_count, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getTabDisabled(self: *const Self, arg_tab_idx: i32) !bool {
        if (mbind_get_tab_disabled == null) {
            mbind_get_tab_disabled = try api.createMethod("TabContainer", "get_tab_disabled");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_tab_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_tab_disabled, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getTabHidden(self: *const Self, arg_tab_idx: i32) !bool {
        if (mbind_get_tab_hidden == null) {
            mbind_get_tab_hidden = try api.createMethod("TabContainer", "get_tab_hidden");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_tab_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_tab_hidden, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn getTabIcon(self: *const Self, arg_tab_idx: i32) !godot.Texture {
        if (mbind_get_tab_icon == null) {
            mbind_get_tab_icon = try api.createMethod("TabContainer", "get_tab_icon");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_tab_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_tab_icon, base, cargs, result);
        return @ptrCast(*godot.Texture, @alignCast(@alignOf(&godot.Texture), result)).*;
    }

    pub fn getTabIdxAtPoint(self: *const Self, arg_point: *const godot.Vector2) !i32 {
        if (mbind_get_tab_idx_at_point == null) {
            mbind_get_tab_idx_at_point = try api.createMethod("TabContainer", "get_tab_idx_at_point");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_point),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_tab_idx_at_point, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getTabTitle(self: *const Self, arg_tab_idx: i32) !godot.String {
        if (mbind_get_tab_title == null) {
            mbind_get_tab_title = try api.createMethod("TabContainer", "get_tab_title");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_tab_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_tab_title, base, cargs, result);
        return @ptrCast(*godot.String, @alignCast(@alignOf(&godot.String), result)).*;
    }

    pub fn getTabsRearrangeGroup(self: *const Self) !i32 {
        if (mbind_get_tabs_rearrange_group == null) {
            mbind_get_tabs_rearrange_group = try api.createMethod("TabContainer", "get_tabs_rearrange_group");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_tabs_rearrange_group, base, cargs, result);
        return @ptrCast(*i32, @alignCast(@alignOf(&i32), result)).*;
    }

    pub fn getUseHiddenTabsForMinSize(self: *const Self) !bool {
        if (mbind_get_use_hidden_tabs_for_min_size == null) {
            mbind_get_use_hidden_tabs_for_min_size = try api.createMethod("TabContainer", "get_use_hidden_tabs_for_min_size");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_get_use_hidden_tabs_for_min_size, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn isAllTabsInFront(self: *const Self) !bool {
        if (mbind_is_all_tabs_in_front == null) {
            mbind_is_all_tabs_in_front = try api.createMethod("TabContainer", "is_all_tabs_in_front");
        }

        var result: ?*anyopaque = null;
        var cargs: ?*?*const anyopaque = null;

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_is_all_tabs_in_front, base, cargs, result);
        return @ptrCast(*bool, @alignCast(@alignOf(&bool), result)).*;
    }

    pub fn setAllTabsInFront(self: *const Self, arg_is_front: bool) !void {
        if (mbind_set_all_tabs_in_front == null) {
            mbind_set_all_tabs_in_front = try api.createMethod("TabContainer", "set_all_tabs_in_front");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_is_front),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_all_tabs_in_front, base, cargs, result);
    }

    pub fn setCurrentTab(self: *const Self, arg_tab_idx: i32) !void {
        if (mbind_set_current_tab == null) {
            mbind_set_current_tab = try api.createMethod("TabContainer", "set_current_tab");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_tab_idx),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_current_tab, base, cargs, result);
    }

    pub fn setDragToRearrangeEnabled(self: *const Self, arg_enabled: bool) !void {
        if (mbind_set_drag_to_rearrange_enabled == null) {
            mbind_set_drag_to_rearrange_enabled = try api.createMethod("TabContainer", "set_drag_to_rearrange_enabled");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enabled),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_drag_to_rearrange_enabled, base, cargs, result);
    }

    pub fn setPopup(self: *const Self, arg_popup: *const godot.Node) !void {
        if (mbind_set_popup == null) {
            mbind_set_popup = try api.createMethod("TabContainer", "set_popup");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, arg_popup),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_popup, base, cargs, result);
    }

    pub fn setTabAlign(self: *const Self, arg_align: i32) !void {
        if (mbind_set_tab_align == null) {
            mbind_set_tab_align = try api.createMethod("TabContainer", "set_tab_align");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_align),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_tab_align, base, cargs, result);
    }

    pub fn setTabDisabled(self: *const Self, arg_tab_idx: i32, arg_disabled: bool) !void {
        if (mbind_set_tab_disabled == null) {
            mbind_set_tab_disabled = try api.createMethod("TabContainer", "set_tab_disabled");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_tab_idx),
            @ptrCast(*const anyopaque, *arg_disabled),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_tab_disabled, base, cargs, result);
    }

    pub fn setTabHidden(self: *const Self, arg_tab_idx: i32, arg_hidden: bool) !void {
        if (mbind_set_tab_hidden == null) {
            mbind_set_tab_hidden = try api.createMethod("TabContainer", "set_tab_hidden");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_tab_idx),
            @ptrCast(*const anyopaque, *arg_hidden),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_tab_hidden, base, cargs, result);
    }

    pub fn setTabIcon(self: *const Self, arg_tab_idx: i32, arg_icon: *const godot.Texture) !void {
        if (mbind_set_tab_icon == null) {
            mbind_set_tab_icon = try api.createMethod("TabContainer", "set_tab_icon");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_tab_idx),
            @ptrCast(*const anyopaque, arg_icon),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_tab_icon, base, cargs, result);
    }

    pub fn setTabTitle(self: *const Self, arg_tab_idx: i32, arg_title: *const godot.String) !void {
        if (mbind_set_tab_title == null) {
            mbind_set_tab_title = try api.createMethod("TabContainer", "set_tab_title");
        }

        var result: ?*anyopaque = null;
        var args: [2]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_tab_idx),
            @ptrCast(*const anyopaque, arg_title),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_tab_title, base, cargs, result);
    }

    pub fn setTabsRearrangeGroup(self: *const Self, arg_group_id: i32) !void {
        if (mbind_set_tabs_rearrange_group == null) {
            mbind_set_tabs_rearrange_group = try api.createMethod("TabContainer", "set_tabs_rearrange_group");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_group_id),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_tabs_rearrange_group, base, cargs, result);
    }

    pub fn setTabsVisible(self: *const Self, arg_visible: bool) !void {
        if (mbind_set_tabs_visible == null) {
            mbind_set_tabs_visible = try api.createMethod("TabContainer", "set_tabs_visible");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_visible),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_tabs_visible, base, cargs, result);
    }

    pub fn setUseHiddenTabsForMinSize(self: *const Self, arg_enabled: bool) !void {
        if (mbind_set_use_hidden_tabs_for_min_size == null) {
            mbind_set_use_hidden_tabs_for_min_size = try api.createMethod("TabContainer", "set_use_hidden_tabs_for_min_size");
        }

        var result: ?*anyopaque = null;
        var args: [1]?*const anyopaque = []?*const anyopaque {
            @ptrCast(*const anyopaque, *arg_enabled),
        };

        var cargs: ?*?*const anyopaque = &args[0];

        const base = @ptrCast(*c_api.godot_object, @alignCast(@alignOf(*c_api.godot_object), self.base));
        _ = api.core.?.godot_method_bind_ptrcall.?(mbind_set_use_hidden_tabs_for_min_size, base, cargs, result);
    }
};