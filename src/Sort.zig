const std = @import("std");

/// Insertion Sort
///
/// ...how it works
///
/// Time Complexity
/// -- Upper: Ο(n^2)
/// -- Average: Θ(n^2)
/// -- Lower: Ω(n)
///
/// Runtime of Insertion Sort is O(n + I), where I is the number of inversions performed.
pub fn insertionSort(comptime ListType: type, list: *ListType) void {
    var i: usize = 1;
    var j: usize = 1;

    while (i < list.length()) : (i += 1) {
        const temp = list.atIndex(i);

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

/// Shell Sort
///
/// ...how it works
///
/// Time Complexity Bounds
/// -- Upper: Ο()
/// -- Average: Θ()
/// -- Lower: Ω()
///
/// ...
pub fn shellSort(comptime ListType: type, list: *ListType) void {
    var i: usize = 0;
    var j: usize = 0;
    var gap: usize = list.length() / 2;

    while (gap > 0) : (gap /= 2) {
        while (i < list.length()) : (i += 1) {
            const temp = list.atIndex(i);

            while (j >= gap) : (j -= gap) {
                if (temp.compareTo(list.atIndex(j - gap)) >= 0) {
                    break;
                }

                list.setIndex(j, list.atIndex(j - gap));
            }

            list.setIndex(j, temp);
        }
    }

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
