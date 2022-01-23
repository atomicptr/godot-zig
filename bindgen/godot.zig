const std = @import("std");
const json = @import("json");

const GodotError = error{
    InvalidFileFormat,
};

const KeyValuePairValue = union(enum) {
    int: i64,
    float: f64,
    boolean: bool,
    string: []const u8,

    pub fn format(self: KeyValuePairValue, comptime fmt: []const u8, options: std.fmt.FormatOptions, writer: anytype) @TypeOf(writer).Error!void {
        _ = fmt;
        _ = options;

        switch (self) {
            .int => try writer.print("{d}", .{self.int}),
            .float => try writer.print("{d}", .{self.float}),
            .boolean => try writer.print("{b}", .{self.boolean}),
            .string => try writer.print("{s}", .{self.string}),
        }
    }
};

pub const KeyValuePair = struct { key: []const u8, value: KeyValuePairValue };

pub const Class = struct {
    name: []const u8,
    base_class: []const u8,
    api_type: []const u8,
    singleton: bool,
    singleton_name: []const u8,
    instanciable: bool,
    is_reference: bool,
    constants: []KeyValuePair,
    // properties: []u8,
    // signals: []u8,
    // methods: []u8,
    // enums: []u8,

    pub fn fromJson(allocator: std.mem.Allocator, val: json.Value) !Class {
        var constants = try Class.keyValuePairsFromObject(allocator, val.get("constants"));

        return Class{
            .name = val.get("name").?.String,
            .base_class = val.get("base_class").?.String,
            .api_type = val.get("api_type").?.String,
            .singleton = val.get("singleton").?.Bool,
            .singleton_name = val.get("singleton_name").?.String,
            .instanciable = val.get("instanciable").?.Bool,
            .is_reference = val.get("is_reference").?.Bool,
            .constants = constants,
        };
    }

    fn keyValuePairsFromObject(allocator: std.mem.Allocator, val: ?json.Value) ![]KeyValuePair {
        var list = &std.ArrayList(KeyValuePair).init(allocator);
        defer list.deinit();

        for (val.?.Object) |obj| {
            try list.append(KeyValuePair{
                .key = obj.key,
                .value = switch (obj.value) {
                    json.Value.Int => KeyValuePairValue{ .int = obj.value.Int },
                    json.Value.Float => KeyValuePairValue{ .float = obj.value.Float },
                    json.Value.Bool => KeyValuePairValue{ .boolean = obj.value.Bool },
                    json.Value.String => KeyValuePairValue{ .string = obj.value.String },
                    else => return GodotError.InvalidFileFormat,
                },
            });
        }

        return list.toOwnedSlice();
    }
};

pub const Method = struct {
    name: []const u8,
    return_type: []const u8,
    is_editor: bool,
    is_noscript: bool,
    is_const: bool,
    is_reverse: bool,
    is_virtual: bool,
    has_varargs: bool,
    is_from_script: bool,
    // arguments: []MethodArgument,
};
