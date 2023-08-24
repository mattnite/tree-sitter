const std = @import("std");

pub fn build(b: *std.Build) void {
    var lib = b.addStaticLibrary(.{
        .name = "tree-sitter",
        .target = b.standardTargetOptions(.{}),
        .optimize = b.standardOptimizeOption(.{}),
    });

    lib.linkLibC();
    lib.addCSourceFile(.{
        .file = .{ .path = "lib/src/lib.c" },
        .flags = &.{
            "-std=gnu99",
            "-fvisibility=hidden",
            "-Wall",
            "-Werxtra",
            "-Wshadow",
        },
    });
    lib.addIncludePath(.{ .path = "lib/include" });
    lib.addIncludePath(.{ .path = "lib/src" });

    lib.installHeader("lib/include/tree_sitter/api.h", "tree_sitter/api.h");
    lib.installHeader("lib/include/tree_sitter/parser.h", "tree_sitter/parser.h");

    b.installArtifact(lib);
}
