const std = @import("std");

// Create 
pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const sdl3_lib = b.addStaticLibrary(.{
        .name = "sdl3",
        .root_source_file = "src/sdl.zig",
        .target = target,
        .optimize = b.standardOptimizeOption(.{}),
    });
    
    
}
