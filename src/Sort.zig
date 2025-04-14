const std = @import("std");

/// Insertion Sort
///
/// Time Complexity Bounds
/// -- Upper: Ο(n^2)
/// -- Average: Θ(n^2)
/// -- Lower: Ω(n)
pub fn insertionSort(comptime ListType: type, list: *ListType) void {
    const ValueType = list.ValueType;

    var j = 0;
    var i = 1;
    while (i < list.size()) : (i += 1) {
        const temp: ValueType = list.atIndex(i);

        j = i;
        while (j > 0) : (j -= 1) {
            if (temp.compareTo(list.atIndex(j - 1)) >= 0) {
                break;
            }

            list.setIndex(j, list.atIndex(j - 1));
        }

        list.setIndex(j, temp);
    }
}

pub fn selectionSort(comptime ListType: type, list: *ListType) void {
    _ = list;
    @panic("Not Implemented");
}

pub fn bubbleSort(comptime ListType: type, list: *ListType) void {
    _ = list;
    @panic("Not Implemented");
}

pub fn shellSort(comptime ListType: type, list: *ListType) void {
    _ = list;
    @panic("Not Implemented");
}

pub fn quickSort(comptime ListType: type, list: *ListType) void {
    _ = list;
    @panic("Not Implemented");
}

pub fn mergeSort(comptime ListType: type, list: *ListType) void {
    _ = list;
    @panic("Not Implemented");
}

pub fn heapSort(comptime ListType: type, list: *ListType) void {
    _ = list;
    @panic("Not Implemented");
}

pub fn radixSort(comptime ListType: type, list: *ListType) void {
    _ = list;
    @panic("Not Implemented");
}

pub fn bucketSort(comptime ListType: type, list: *ListType) void {
    _ = list;
    @panic("Not Implemented");
}

pub fn bogoSort(comptime ListType: type, list: *ListType) void {
    _ = list;
    @panic("Not Implemented");
}
