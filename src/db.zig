const sqlite = @import("sqlite");
const std = @import("std");

pub fn initConnection() !sqlite.Db {
    return try sqlite.Db.init(.{
        .mode = sqlite.Db.Mode{ .File = "/home/jakes/cecs/forfun/zig/server/mydb.db" },
        .open_flags = .{
            .write = true,
            .create = true,
        },
        .threading_mode = .MultiThread,
    });
}

pub fn createDbTable(db: *sqlite.Db) !void {
    try db.exec("CREATE TABLE IF NOT EXISTS feed(id integer primary key, name text, message text, timestamp datetime)", .{}, .{});
}

pub const Tweet = struct {
    id: usize,
    username: []u8,
    message: []u8,
    timestamp: std.time.timestamp(),
};

pub fn getDbFeed(arenaAlloc: std.heap.ArenaAllocator, db: *sqlite.Db) !std.ArrayList(Tweet) {
    var tweets = std.ArrayList(Tweet).init(arenaAlloc);

    var stmt = try db.prepare("SELECT * FROM feed LIMIT 100;");
    defer stmt.deinit();

    var iter = try stmt.iterator(Tweet);

    while (try iter.next(.{})) |tweet| {
        tweets.append(tweet);
    }

    return tweets;
}
