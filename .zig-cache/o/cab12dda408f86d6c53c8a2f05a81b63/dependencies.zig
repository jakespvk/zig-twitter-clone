pub const packages = struct {
    pub const @"N-V-__8AACpFpwCXJZXXDaM9adUZOSdCSCy5dik1zsuZkk4x" = struct {
        pub const build_root = "/home/jakes/.cache/zig/p/N-V-__8AACpFpwCXJZXXDaM9adUZOSdCSCy5dik1zsuZkk4x";
        pub const deps: []const struct { []const u8, []const u8 } = &.{};
    };
    pub const @"N-V-__8AAHOzAQBh8wB371GN1DXTl1mKs8Rdqj0sJea0U4P7" = struct {
        pub const build_root = "/home/jakes/.cache/zig/p/N-V-__8AAHOzAQBh8wB371GN1DXTl1mKs8Rdqj0sJea0U4P7";
        pub const build_zig = @import("N-V-__8AAHOzAQBh8wB371GN1DXTl1mKs8Rdqj0sJea0U4P7");
        pub const deps: []const struct { []const u8, []const u8 } = &.{};
    };
    pub const @"httpz-0.0.0-PNVzrK6uBgBYP4D-QGrd_g1A6ZS86NQcLJZEPZyRFFoH" = struct {
        pub const build_root = "/home/jakes/.cache/zig/p/httpz-0.0.0-PNVzrK6uBgBYP4D-QGrd_g1A6ZS86NQcLJZEPZyRFFoH";
        pub const build_zig = @import("httpz-0.0.0-PNVzrK6uBgBYP4D-QGrd_g1A6ZS86NQcLJZEPZyRFFoH");
        pub const deps: []const struct { []const u8, []const u8 } = &.{
            .{ "metrics", "N-V-__8AAHOzAQBh8wB371GN1DXTl1mKs8Rdqj0sJea0U4P7" },
            .{ "websocket", "websocket-0.1.0-ZPISdXNIAwCXG7oHBj4zc1CfmZcDeyR6hfTEOo8_YI4r" },
        };
    };
    pub const @"sqlite-3.48.0-F2R_a_uGDgCfOH5UEJYjuOCe-HixnLjToxOdEGAEM3xk" = struct {
        pub const build_root = "/home/jakes/.cache/zig/p/sqlite-3.48.0-F2R_a_uGDgCfOH5UEJYjuOCe-HixnLjToxOdEGAEM3xk";
        pub const build_zig = @import("sqlite-3.48.0-F2R_a_uGDgCfOH5UEJYjuOCe-HixnLjToxOdEGAEM3xk");
        pub const deps: []const struct { []const u8, []const u8 } = &.{
            .{ "sqlite", "N-V-__8AACpFpwCXJZXXDaM9adUZOSdCSCy5dik1zsuZkk4x" },
        };
    };
    pub const @"websocket-0.1.0-ZPISdXNIAwCXG7oHBj4zc1CfmZcDeyR6hfTEOo8_YI4r" = struct {
        pub const build_root = "/home/jakes/.cache/zig/p/websocket-0.1.0-ZPISdXNIAwCXG7oHBj4zc1CfmZcDeyR6hfTEOo8_YI4r";
        pub const build_zig = @import("websocket-0.1.0-ZPISdXNIAwCXG7oHBj4zc1CfmZcDeyR6hfTEOo8_YI4r");
        pub const deps: []const struct { []const u8, []const u8 } = &.{
        };
    };
};

pub const root_deps: []const struct { []const u8, []const u8 } = &.{
    .{ "httpz", "httpz-0.0.0-PNVzrK6uBgBYP4D-QGrd_g1A6ZS86NQcLJZEPZyRFFoH" },
    .{ "sqlite", "sqlite-3.48.0-F2R_a_uGDgCfOH5UEJYjuOCe-HixnLjToxOdEGAEM3xk" },
};
