const std = @import("std");
const json = @import("json");

const GodotError = error{
    InvalidFileFormat,
};

pub const Class = struct {
    name: []const u8,
    base_class: []const u8,
    api_type: []const u8,
    singleton: bool,
    singleton_name: []const u8,
    instanciable: bool,
    is_reference: bool,
    constants: []KeyValuePair,
    properties: []Property,
    signals: []Signal,
    methods: []Method,
    enums: []Enum,

    pub fn fromJson(allocator: std.mem.Allocator, val: json.Value) !Class {
        return Class{
            .name = val.get("name").?.String,
            .base_class = val.get("base_class").?.String,
            .api_type = val.get("api_type").?.String,
            .singleton = val.get("singleton").?.Bool,
            .singleton_name = val.get("singleton_name").?.String,
            .instanciable = val.get("instanciable").?.Bool,
            .is_reference = val.get("is_reference").?.Bool,
            .constants = try Class.keyValuePairsFromObject(allocator, val.get("constants")),
            .properties = try Class.propertiesFromArray(allocator, val.get("properties")),
            .signals = try Class.signalsFromArray(allocator, val.get("signals")),
            .methods = try Class.methodsFromArray(allocator, val.get("methods")),
            .enums = try Class.enumsFromArray(allocator, val.get("enums")),
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

    fn methodsFromArray(allocator: std.mem.Allocator, val: ?json.Value) ![]Method {
        var list = &std.ArrayList(Method).init(allocator);
        defer list.deinit();

        for (val.?.Array) |method_val| {
            try list.append(Method{
                .name = method_val.get("name").?.String,
                .return_type = method_val.get("return_type").?.String,
                .is_editor = method_val.get("is_editor").?.Bool,
                .is_noscript = method_val.get("is_noscript").?.Bool,
                .is_const = method_val.get("is_const").?.Bool,
                .is_reverse = method_val.get("is_reverse").?.Bool,
                .is_virtual = method_val.get("is_virtual").?.Bool,
                .has_varargs = method_val.get("has_varargs").?.Bool,
                .is_from_script = method_val.get("is_from_script").?.Bool,
                .arguments = try Class.methodArgumentsFromArray(allocator, method_val.get("arguments")),
            });
        }

        return list.toOwnedSlice();
    }

    fn methodArgumentsFromArray(allocator: std.mem.Allocator, val: ?json.Value) ![]MethodArgument {
        var list = &std.ArrayList(MethodArgument).init(allocator);
        defer list.deinit();

        for (val.?.Array) |method_argument_val| {
            try list.append(MethodArgument{
                .name = method_argument_val.get("name").?.String,
                .type_name = method_argument_val.get("type").?.String,
                .has_default_value = method_argument_val.get("has_default_value").?.Bool,
                .default_value = method_argument_val.get("default_value").?.String,
            });
        }

        return list.toOwnedSlice();
    }

    fn signalsFromArray(allocator: std.mem.Allocator, val: ?json.Value) ![]Signal {
        var list = &std.ArrayList(Signal).init(allocator);
        defer list.deinit();

        for (val.?.Array) |signal_val| {
            try list.append(Signal{
                .name = signal_val.get("name").?.String,
                .arguments = try Class.methodArgumentsFromArray(allocator, signal_val.get("arguments")),
            });
        }

        return list.toOwnedSlice();
    }

    fn propertiesFromArray(allocator: std.mem.Allocator, val: ?json.Value) ![]Property {
        var list = &std.ArrayList(Property).init(allocator);
        defer list.deinit();

        for (val.?.Array) |property_val| {
            try list.append(Property{
                .name = property_val.get("name").?.String,
                .type_name = property_val.get("type").?.String,
                .getter = property_val.get("getter").?.String,
                .setter = property_val.get("setter").?.String,
                .index = property_val.get("index").?.Int,
            });
        }

        return list.toOwnedSlice();
    }

    fn enumsFromArray(allocator: std.mem.Allocator, val: ?json.Value) ![]Enum {
        var list = &std.ArrayList(Enum).init(allocator);
        defer list.deinit();

        for (val.?.Array) |enum_val| {
            try list.append(Enum{
                .name = enum_val.get("name").?.String,
                .values = try Class.keyValuePairsFromObject(allocator, enum_val.get("values")),
            });
        }

        return list.toOwnedSlice();
    }
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

const KeyValuePair = struct { key: []const u8, value: KeyValuePairValue };

const Method = struct {
    name: []const u8,
    return_type: []const u8,
    is_editor: bool,
    is_noscript: bool,
    is_const: bool,
    is_reverse: bool,
    is_virtual: bool,
    has_varargs: bool,
    is_from_script: bool,
    arguments: []MethodArgument,
};

const MethodArgument = struct {
    name: []const u8,
    type_name: []const u8,
    has_default_value: bool,
    default_value: []const u8,
};

const Signal = struct {
    name: []const u8,
    arguments: []MethodArgument,
};

const Property = struct {
    name: []const u8,
    type_name: []const u8,
    getter: []const u8,
    setter: []const u8,
    index: i64,
};

const Enum = struct {
    name: []const u8,
    values: []KeyValuePair,
};
