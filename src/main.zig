const std = @import("std");
const httpz = @import("httpz");

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();

    // More advance cases will use a custom "Handler" instead of "void".
    // The last parameter is our handler instance, since we have a "void"
    // handler, we passed a void ({}) value.
    var server = try httpz.Server(void).init(allocator, .{ .port = 5882 }, {});
    defer {
        // clean shutdown, finishes serving any live request
        server.stop();
        server.deinit();
    }

    var router = try server.router(.{});
    router.get("/api/feed/:user", getFeed, .{});

    // blocks
    try server.listen();
}

fn getFeed(req: *httpz.Request, res: *httpz.Response) !void {
    res.status = 200;
    try res.json(.{ .user = req.param("user").?, .chats = [_][]const u8{ "hi", "hello", "hey there" } }, .{});
}
