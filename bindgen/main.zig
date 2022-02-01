const std = @import("std");
const json = @import("json");
const godot = @import("godot.zig");
const render = @import("render.zig");
const names = @import("names.zig");
const config = @import("config.zig");


pub fn main() anyerror!void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();

    try generateApi(allocator);
}

fn generateApi(allocator: std.mem.Allocator) !void {
    // delete the old output directory
    try std.fs.cwd().deleteTree(config.output_dir);

    // create and open a new one...
    var target_dir = try std.fs.cwd().makeOpenPath(config.output_dir, .{
        .access_sub_paths = false,
    });
    defer target_dir.close();

    // read the api.json file from godot-headers...
    var api_file = try std.fs.cwd().openFile(config.api_json_filepath, .{
        .read = true,
    });
    defer api_file.close();

    const classes = try parseApiFile(allocator, api_file);

    var files_to_import = try allocator.alloc(u8, classes.len*4096);
    defer allocator.free(files_to_import);

    var index: usize = 0;

    for (classes) |class| {
        const filename = names.toZigFilename(class.name);
        std.log.info("generating {s}...", .{filename});

        std.mem.copy(u8, files_to_import[index..], filename);
        index += filename.len;
        files_to_import[index] = '|';
        index += 1;

        const file = try target_dir.createFile(filename, .{});
        defer file.close();

        if (std.mem.eql(u8, class.name, "GlobalConstants")) {
            try file.writeAll(try render.createConstantsFile(allocator, class.constants));
            continue;
        }
        try file.writeAll(try render.createClassFile(allocator, &class));
    }

    // remove the last '|'
    index -= 1;

    const imports_file = try target_dir.createFile(config.imports_file_filename, .{});
    defer imports_file.close();

    try imports_file.writeAll(try render.createImportsFile(allocator, files_to_import[0..index]));
    std.log.info("Done!", .{});
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
