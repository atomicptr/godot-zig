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
        try std.fmt.format(buffer.writer(), "pub const {s} = {s};\n", .{
            names.toZigConstant(constant.key),
            constant.value
        });
    }

    return buffer.toOwnedSlice();
}

pub fn createClassFile(allocator: std.mem.Allocator, class: *const godot.Class) ![]const u8 {
    var buffer = std.ArrayList(u8).init(allocator);
    defer buffer.deinit();

    try buffer.appendSlice(headerComment);

    const defaultImports =
        \\const godot = @import("{s}");
        \\const c_api = @import("../c_api.zig");
        \\// Class: {s}
        ;

    try std.fmt.format(buffer.writer(), defaultImports, .{
        config.imports_file_filename,
        class.name
    });

    return buffer.toOwnedSlice();
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
