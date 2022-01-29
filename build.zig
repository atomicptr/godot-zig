const std = @import("std");
const deps = @import("./deps.zig");

pub fn build(b: *std.build.Builder) void {
    // Standard target options allows the person running `zig build` to choose
    // what target to build for. Here we do not override the defaults, which
    // means any target is allowed, and the default is native. Other options
    // for restricting supported target set are available.
    const target = b.standardTargetOptions(.{});

    // Standard release options allow the person running `zig build` to select
    // between Debug, ReleaseSafe, ReleaseFast, and ReleaseSmall.
    const mode = b.standardReleaseOptions();

    // library
    const lib = b.addStaticLibrary("godot-zig", "src/main.zig");
    lib.setBuildMode(mode);
    lib.addIncludeDir("./godot-headers");
    lib.linkLibC();
    lib.install();
    deps.addAllTo(lib);

    // bindings generator
    const bindgen = b.addExecutable("godot-zig-bindgen", "bindgen/main.zig");
    bindgen.setTarget(target);
    bindgen.setBuildMode(mode);
    bindgen.install();
    deps.addAllTo(bindgen);

    const bindgen_cmd = bindgen.run();
    bindgen_cmd.step.dependOn(b.getInstallStep());
    if (b.args) |args| {
        bindgen_cmd.addArgs(args);
    }

    // tests
    const testFiles = [_][]const u8{
        "src/main.zig",
        "bindgen/main.zig",
        "bindgen/names.zig",
    };

    // define steps
    const test_step = b.step("test", "Run tests");
    for (testFiles) |file| {
        const t = b.addTest(file);
        t.setBuildMode(mode);
        test_step.dependOn(&t.step);
    }

    const bindgen_step = b.step("generate", "Generate Godot bindings");
    bindgen_step.dependOn(&bindgen_cmd.step);
}
