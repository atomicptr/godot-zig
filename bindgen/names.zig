const std = @import("std");

pub fn toZigConstant(name: []const u8) []const u8 {
    var buffer: [4096]u8 = undefined;
    var index: usize = 0;
    var parts = std.mem.split(u8, name, "_");
    while (parts.next()) |part| {
        for (part) |char, i| {
            var transform_func = std.ascii.toLower;
            if (i == 0) {
                transform_func = std.ascii.toUpper;
            }
            buffer[index] = transform_func(char);
            index += 1;
        }
    }
    return buffer[0..index];
}

pub fn toZigFilename(name: []const u8) []const u8 {
    var buffer: [4096]u8 = undefined;
    const basename = camelCaseToSnakeCase(name);
    const extname = ".zig";
    std.mem.copy(u8, buffer[0..], basename);
    std.mem.copy(u8, buffer[basename.len..], extname);
    return buffer[0..basename.len+extname.len];
}

pub fn camelCaseToSnakeCase(name: []const u8) []const u8 {
    var buffer: [4096]u8 = undefined;
    var index: usize = 0;
    var parts = upperCaseSplit(name);
    while (parts.next()) |part| {
        for (part) |char| {
            buffer[index] = std.ascii.toLower(char);
            index += 1;
        }
        buffer[index] = '_';
        index += 1;
    }
    // remove the last '_';
    index -= 1;
    return buffer[0..index];
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

test "convert godot constant names to Zig constant names" {
    try std.testing.expectEqualStrings("MyVeryCoolConstantName", toZigConstant("MY_VERY_COOL_CONSTANT_NAME"));
    try std.testing.expectEqualStrings("PropertyUsageRestartIfChanged", toZigConstant("PROPERTY_USAGE_RESTART_IF_CHANGED"));
}

test "splitting a string on upper cases: mySuperGreatTest" {
    var parts = upperCaseSplit("mySuperGreatTest");
    const expected: [4][]const u8 = .{"my", "Super", "Great", "Test"};
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
    const expected: [3][]const u8 = .{"Mesh", "Instance", "3D"};
    var i: usize = 0;
    while (parts.next()) |part| {
        try std.testing.expectEqualStrings(expected[i], part);
        i += 1;
    }
}

test "splitting a string on upper cases: ARVRPositionalTracker" {
    var parts = upperCaseSplit("ARVRPositionalTracker");
    const expected: [2][]const u8 = .{"ARVRPositional", "Tracker"};
    var i: usize = 0;
    while (parts.next()) |part| {
        try std.testing.expectEqualStrings(expected[i], part);
        i += 1;
    }
}

test "convert camel case string to snake case" {
    try std.testing.expectEqualStrings("my_super_great_test", camelCaseToSnakeCase("mySuperGreatTest"));
    try std.testing.expectEqualStrings("urlresolver", camelCaseToSnakeCase("URLResolver"));
    try std.testing.expectEqualStrings("mesh_instance_3d", camelCaseToSnakeCase("MeshInstance3D"));
    try std.testing.expectEqualStrings("arvrpositional_tracker", camelCaseToSnakeCase("ARVRPositionalTracker"));
}

test "convert godot class name to .zig filename" {
    try std.testing.expectEqualStrings("mesh_instance_3d.zig", toZigFilename("MeshInstance3D"));
}
