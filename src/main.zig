const std = @import("std");
//const c = @import("c.zig");

pub fn main() !void {
    //_ = c.SDL_Init(c.SDL_INIT_VIDEO);
    var stdout = std.io.bufferedWriter(std.io.getStdOut().writer());
    const writer = stdout.writer();
    try writer.print("SDL3 has been initialized!\n", .{});
    try stdout.flush();
    //c.SDL_Quit();
}
