//! API for others to include SDL3 into their project
//! Since you can import the build.zig of a dependency, we make linking easier by making this
//! build.zig a structure you can use to link this library to your project
const std = @import("std");

/// Handle examples, testing, and docs
pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});
    const dummy = b.addExecutable(.{
        .name = "dummy",
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
    });
    //var out_code: u8 = undefined;
    //const out = b.runAllowFail(&.{ "pkg-config", "--list-all" }, &out_code, .Ignore) catch unreachable;
    //std.debug.print("{s}", .{ out });
    dummy.root_module.linkSystemLibrary("sdl3", .{ .use_pkg_config = .yes });
    //dummy.root_module.addLibraryPath(.{ .cwd_relative = "/opt/homebrew/lib" });
    b.installArtifact(dummy);
}
