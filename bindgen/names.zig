const std = @import("std");

pub fn toZigConstant(name: []const u8) []const u8 {
    var buffer: [4096]u8 = undefined;
    var index: usize = 0;
    var parts = std.mem.split(u8, name, "_");
    while (parts.next()) |p| {
        for (p) |c, j| {
            var transform_func = std.ascii.toLower;
            if (j == 0) {
                transform_func = std.ascii.toUpper;
            }
            buffer[index] = transform_func(c);
            index += 1;
        }
    }
    return buffer[0..index];
}

test "names.toZigConstant" {
    try std.testing.expectEqualStrings("MyVeryCoolConstantName", toZigConstant("MY_VERY_COOL_CONSTANT_NAME"));
    try std.testing.expectEqualStrings("PropertyUsageRestartIfChanged", toZigConstant("PROPERTY_USAGE_RESTART_IF_CHANGED"));
}
