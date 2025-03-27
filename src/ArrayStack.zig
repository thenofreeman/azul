const std = @import("std");

pub fn ArrayStack(comptime T: type) type {
    return struct {
        const Self = @This();

        items: []T,
        capacity: usize,
        step: usize,
        length: usize,

        allocator: std.mem.Allocator,

        pub fn init(allocator: std.mem.Allocator) !ArrayStack(T) {
            return try initCapacityStep(allocator, 10, 10);
        }

        pub fn initCapacity(allocator: std.mem.Allocator, capacity: usize) !ArrayStack(T) {
            return try initCapacityStep(allocator, capacity, capacity);
        }

        pub fn initCapacityStep(allocator: std.mem.Allocator, capacity: usize, step: usize) !ArrayStack(T) {
            var buf = try allocator.alloc(T, capacity);

            return .{
                .items = buf[0..],
                .capacity = capacity,
                .step = step,
                .length = 0,
                .allocator = allocator,
            };
        }

        pub fn deinit(self: *Self) void {
            self.allocator.free(self.items);

            self.capacity = 0;
            self.length = 0;
        }

        pub fn push(self: *Self, value: T) !void {
            if ((self.length + 1) > self.capacity) {
                const newCapacity = self.capacity + self.step;
                var alloc_buf = try self.allocator.alloc(
                    T,
                    newCapacity,
                );

                @memcpy(alloc_buf[0..self.capacity], self.items);

                self.allocator.free(self.items);
                self.items = alloc_buf;
                self.capacity = newCapacity;
            }

            self.items[self.length] = value;
            self.length += 1;
        }

        pub fn pop(self: *Self) void {
            if (self.length == 0) return;

            self.items[self.length - 1] = undefined;
            self.length -= 1;
        }
    };
}
