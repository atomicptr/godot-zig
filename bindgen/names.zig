const std = @import("std");

pub fn toZigConstant(allocator: std.mem.Allocator, name: []const u8) ![]const u8 {
    return try snakeCaseToCamelCase(allocator, name, true);
}

pub fn toZigFilename(allocator: std.mem.Allocator, name: []const u8) ![]const u8 {
    var buffer = std.ArrayList(u8).init(allocator);
    defer buffer.deinit();

    const basename = try camelCaseToSnakeCase(allocator, name);
    try std.fmt.format(
        buffer.writer(),
        "{s}.zig",
        .{basename},
    );

    return buffer.toOwnedSlice();
}

pub fn snakeCaseToCamelCase(allocator: std.mem.Allocator, name: []const u8, first_char_capitalized: bool) ![]const u8 {
    var buffer = std.ArrayList(u8).init(allocator);
    defer buffer.deinit();

    var first_char_processed = false;

    var parts = std.mem.split(u8, name, "_");
    while (parts.next()) |part| {
        for (part) |char, i| {
            if (!first_char_processed and !first_char_capitalized) {
                try buffer.append(std.ascii.toLower(char));
                first_char_processed = true;
                continue;
            }

            const transform_func = if (i == 0) std.ascii.toUpper else std.ascii.toLower;
            try buffer.append(transform_func(char));

            first_char_processed = true;
        }
    }

    return buffer.toOwnedSlice();
}

pub fn camelCaseToSnakeCase(allocator: std.mem.Allocator, name: []const u8) ![]const u8 {
    var buffer = std.ArrayList(u8).init(allocator);
    defer buffer.deinit();

    var parts = upperCaseSplit(name);
    while (parts.next()) |part| {
        for (part) |char| {
            try buffer.append(std.ascii.toLower(char));
        }
        try buffer.append('_');
    }

    // remove the last '_';
    try buffer.resize(buffer.items.len - 1);

    return buffer.toOwnedSlice();
}

fn upperCaseSplit(name: []const u8) UpperCaseSplitIterator {
    return .{
        .buffer = name,
        .index = 0,
    };
}

const UpperCaseSplitIterator = struct {
    buffer: []const u8,
    index: ?usize,

    const Self = @This();

    pub fn next(self: *Self) ?[]const u8 {
        const start = self.index orelse return null;
        const firstLowerCaseIndex = for (self.buffer[start..]) |char, i| {
            if (std.ascii.isLower(char)) {
                break i;
            }
        } else self.buffer.len;
        const end = for (self.buffer[start..]) |char, i| {
            // ignore characters until the first lower case appears to avoid issues like: URL becoming U, R, L
            if (i < firstLowerCaseIndex) {
                continue;
            }
            if (std.ascii.isUpper(char) or std.ascii.isDigit(char)) {
                self.index = start + i;
                break start + i;
            }
        } else blk: {
            self.index = null;
            break :blk self.buffer.len;
        };

        return self.buffer[start..end];
    }
};

const test_allocator = std.heap.page_allocator;

test "convert godot constant names to Zig constant names" {
    try std.testing.expectEqualStrings("MyVeryCoolConstantName", try toZigConstant(test_allocator, "MY_VERY_COOL_CONSTANT_NAME"));
    try std.testing.expectEqualStrings("PropertyUsageRestartIfChanged", try toZigConstant(test_allocator, "PROPERTY_USAGE_RESTART_IF_CHANGED"));
}

test "splitting a string on upper cases: mySuperGreatTest" {
    var parts = upperCaseSplit("mySuperGreatTest");
    const expected: [4][]const u8 = .{ "my", "Super", "Great", "Test" };
    var i: usize = 0;
    while (parts.next()) |part| {
        try std.testing.expectEqualStrings(expected[i], part);
        i += 1;
    }
}

test "splitting a string on upper cases: URLResolver" {
    try std.testing.expectEqualStrings("URLResolver", upperCaseSplit("URLResolver").next().?);
}

test "splitting a string on upper cases: MeshInstance3D" {
    var parts = upperCaseSplit("MeshInstance3D");
    const expected: [3][]const u8 = .{ "Mesh", "Instance", "3D" };
    var i: usize = 0;
    while (parts.next()) |part| {
        try std.testing.expectEqualStrings(expected[i], part);
        i += 1;
    }
}

test "splitting a string on upper cases: ARVRPositionalTracker" {
    var parts = upperCaseSplit("ARVRPositionalTracker");
    const expected: [2][]const u8 = .{ "ARVRPositional", "Tracker" };
    var i: usize = 0;
    while (parts.next()) |part| {
        try std.testing.expectEqualStrings(expected[i], part);
        i += 1;
    }
}

test "convert camel case string to snake case" {
    try std.testing.expectEqualStrings("my_super_great_test", try camelCaseToSnakeCase(test_allocator, "mySuperGreatTest"));
    try std.testing.expectEqualStrings("urlresolver", try camelCaseToSnakeCase(test_allocator, "URLResolver"));
    try std.testing.expectEqualStrings("mesh_instance_3d", try camelCaseToSnakeCase(test_allocator, "MeshInstance3D"));
    try std.testing.expectEqualStrings("arvrpositional_tracker", try camelCaseToSnakeCase(test_allocator, "ARVRPositionalTracker"));
}

test "convert snake case string to camel case" {
    try std.testing.expectEqualStrings("mySuperGreatTest", try snakeCaseToCamelCase(test_allocator, "my_super_great_test", false));
    try std.testing.expectEqualStrings("urlResolver", try snakeCaseToCamelCase(test_allocator, "url_resolver", false));
    try std.testing.expectEqualStrings("MeshInstance", try snakeCaseToCamelCase(test_allocator, "mesh_instance", true));
}

test "convert godot class name to .zig filename" {
    try std.testing.expectEqualStrings("mesh_instance_3d.zig", try toZigFilename(test_allocator, "MeshInstance3D"));
}
