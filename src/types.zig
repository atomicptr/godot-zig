const c_api = @import("c_api.zig");

pub const ConstructorFunc = fn () ?*c_api.godot_object;
