const std = @import("std");
const json = @import("json");
const godot = @import("godot.zig");

const outputDir = "./godot";
const apiJsonFilePath = "./godot-headers/api.json";

pub fn main() anyerror!void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();

    generateApi(allocator) catch |err| {
        std.log.info("Could not generate bindings: {s}", .{err});
    };
}

fn generateApi(allocator: std.mem.Allocator) !void {
    // delete the old output directory
    try std.fs.cwd().deleteTree(outputDir);

    // create and open a new one...
    var target_dir = try std.fs.cwd().makeOpenPath(outputDir, .{
        .access_sub_paths = false,
    });
    defer target_dir.close();

    // read the api.json file from godot-headers...
    var api_file = try std.fs.cwd().openFile(apiJsonFilePath, .{
        .read = true,
    });
    defer api_file.close();

    const classes = try parseApiFile(allocator, api_file);

    std.log.info("{d}", .{classes.len});

    for (classes) |class| {
        std.log.info("class {s}({s})", .{ class.name, class.base_class });

        if (class.constants.len > 0) {
            std.log.info("\tConstants:", .{});
            for (class.constants) |constant| {
                std.log.info("\t\t{s}: {s}", .{ constant.key, constant.value });
            }
        }

        if (class.properties.len > 0) {
            std.log.info("\tProperties:", .{});
            for (class.properties) |property| {
                std.log.info("\t\t{s}: {s}", .{ property.name, property.type_name });
            }
        }

        if (class.methods.len > 0) {
            std.log.info("\tMethods:", .{});
            for (class.methods) |method| {
                std.log.info("\t\t{s}({d} args): {s}", .{ method.name, method.arguments.len, method.return_type });
            }
        }

        if (class.signals.len > 0) {
            std.log.info("\tSignals:", .{});
            for (class.signals) |signal| {
                std.log.info("\t\t{s}({d} args)", .{ signal.name, signal.arguments.len });
            }
        }

        if (class.enums.len > 0) {
            std.log.info("\tEnums:", .{});
            for (class.enums) |e| {
                std.log.info("\t\t{s}", .{ e.name });
            }
        }
    }
}

fn parseApiFile(allocator: std.mem.Allocator, file: std.fs.File) ![]godot.Class {
    const out = try readFile(allocator, file);

    const api = try json.parse(allocator, out);
    const root = api.get(.{}).?.Array;

    const classes = &std.ArrayList(godot.Class).init(allocator);
    defer classes.deinit();

    for (root) |classJson| {
        try classes.append(try godot.Class.fromJson(allocator, classJson));
    }

    return classes.toOwnedSlice();
}

fn readFile(allocator: std.mem.Allocator, file: std.fs.File) ![]u8 {
    var buffered_reader = std.io.bufferedReader(file.reader());
    var in_stream = buffered_reader.reader();

    const stat = try file.stat();

    var out = try allocator.alloc(u8, stat.size);
    // TODO: need to deallocate you somewhere... maybe
    // defer allocator.free(out);

    var index: usize = 0;
    var buffer: [1024]u8 = undefined;
    while (try in_stream.readUntilDelimiterOrEof(&buffer, '\n')) |line| {
        std.mem.copy(u8, out[index..], line);
        index += line.len;
    }

    return out;
}

test "basic bindgen tests" {
    try std.testing.expectEqual(10, 3 + 7);
}
