const std = @import("std");
const godot = @import("godot.zig");
const names = @import("names.zig");
const config = @import("config.zig");

const headerComment = "// This file was automatically generated by godot-zig, please do not edit it.\n";

pub fn createConstantsFile(allocator: std.mem.Allocator, constants: []godot.KeyValuePair) ![]const u8 {
    var buffer = std.ArrayList(u8).init(allocator);
    defer buffer.deinit();

    try buffer.appendSlice(headerComment);

    for (constants) |constant| {
        try std.fmt.format(buffer.writer(), "pub const {s} = {s};\n", .{ try names.toZigConstant(allocator, constant.key), constant.value });
    }

    return buffer.toOwnedSlice();
}

pub fn createClassFile(allocator: std.mem.Allocator, class: *const godot.Class) ![]const u8 {
    var buffer = std.ArrayList(u8).init(allocator);
    defer buffer.deinit();

    // add header
    try buffer.appendSlice(headerComment);

    try std.fmt.format(
        buffer.writer(),
        \\const godot = @import("{s}");
        \\const types = @import("../types.zig");
        \\const api = @import("../api.zig");
        \\const c_api = @import("../c_api.zig");
        \\
        \\
    ,
        .{
            config.imports_file_filename,
        },
    );

    const has_base_class = class.base_class.len > 0;
    if (has_base_class) {
        try std.fmt.format(
            buffer.writer(),
            \\// base class
            \\const {s} = @import("{s}").{s};
            \\
            \\
        ,
            .{
                class.base_class,
                try names.toZigFilename(allocator, class.base_class),
                class.base_class,
            },
        );
    }

    // add method bindings
    const has_methods = class.methods.len > 0;
    if (has_methods) {
        try buffer.appendSlice("// method bindings\n");
    }

    for (class.methods) |method| {
        if (method.is_virtual) {
            continue;
        }

        try std.fmt.format(
            buffer.writer(),
            "var mbind_{s}: ?*c_api.godot_method_bind = null;\n",
            .{
                method.name,
            },
        );
    }

    // add constructor method bind
    const class_name_snake_case = names.camelCaseToSnakeCase(allocator, class.name);
    try std.fmt.format(
        buffer.writer(),
        "var mbind_{s}_constructor: ?types.ConstructorFunc = null;\n",
        .{
            class_name_snake_case,
        },
    );

    // add struct
    try std.fmt.format(
        buffer.writer(),
        "\npub const {s} = struct {{\n",
        .{
            class.name,
        },
    );

    try buffer.appendSlice("    const Self = @This();\n");

    if (has_base_class) {
        try std.fmt.format(
            buffer.writer(),
            "    const BaseClass = {s};\n",
            .{
                class.base_class,
            },
        );
    }

    // properties
    try buffer.appendSlice("\n    //base: *BaseClass,\n");

    // methods
    try std.fmt.format(buffer.writer(),
        \\
        \\    pub fn init() !*Self {{
        \\        if (mbind_{s}_constructor == null) {{
        \\            mbind_{s}_constructor = api.createConstructor("{s}");
        \\        }}
        \\        return api.createObject(Self, mbind_{s}_constructor.?);
        \\    }}
        \\
        \\    pub fn deinit(self: *Self) void {{
        \\        _ = api.core.?.godot_object_destroy.?(@ptrCast(*c_api.godot_object, self));
        \\    }}
        \\
    , .{
        class_name_snake_case,
        class_name_snake_case,
        class.name,
        class_name_snake_case,
    });

    for (class.methods) |method| {
        if (method.is_virtual) {
            continue;
        }
        try appendMethod(allocator, &buffer, &method, has_base_class);
    }

    try buffer.appendSlice("};");

    return buffer.toOwnedSlice();
}

fn appendMethod(allocator: std.mem.Allocator, buffer: *std.ArrayList(u8), method: *const godot.Method, has_base_class: bool) !void {
    _ = has_base_class;

    const method_name = try names.snakeCaseToCamelCase(allocator, method.name, false);
    const return_type = try toZigType(allocator, method.return_type);

    try std.fmt.format(buffer.writer(), "\n    pub fn {s}(self: *const Self", .{method_name});

    for (method.arguments) |arg, i| {
        if (i + 1 <= method.arguments.len) {
            try buffer.appendSlice(", ");
        }

        const arg_type_name = try toZigType(allocator, arg.type_name);

        try buffer.appendSlice(arg.name); // TODO: escape
        try buffer.appendSlice(": ");

        // if its a godot struct, make the argument a const pointer
        if (std.mem.startsWith(u8, arg_type_name, "godot.")) {
            try buffer.appendSlice("*const ");
        }
        try buffer.appendSlice(arg_type_name);
    }

    try std.fmt.format(buffer.writer(), ") {s} {{\n", .{return_type});

    // TODO: method body
    try buffer.appendSlice("        // here could be your method body\n");

    try buffer.appendSlice("    }\n");
}

fn toZigType(allocator: std.mem.Allocator, name: []const u8) ![]const u8 {
    if (std.mem.startsWith(u8, name, "enum")) {
        return "i32";
    }

    inline for (.{ "bool", "int", "float", "void" }) |type_name| {
        if (std.mem.eql(u8, name, type_name)) {
            return name;
        }
    } else {
        const prefix = "godot.";
        return try concatString(allocator, prefix, name);
    }
}

fn concatString(allocator: std.mem.Allocator, a: []const u8, b: []const u8) ![]u8 {
    const res = try allocator.alloc(u8, a.len + b.len);
    std.mem.copy(u8, res, a);
    std.mem.copy(u8, res[a.len..], b);
    return res;
}

pub fn createImportsFile(allocator: std.mem.Allocator, fileNames: []const u8) ![]const u8 {
    var buffer = std.ArrayList(u8).init(allocator);
    defer buffer.deinit();

    try buffer.appendSlice(headerComment);

    var files = std.mem.split(u8, fileNames, "|");

    while (files.next()) |fileName| {
        try std.fmt.format(buffer.writer(), "pub usingnamespace @import(\"{s}\");\n", .{fileName});
    }

    return buffer.toOwnedSlice();
}
