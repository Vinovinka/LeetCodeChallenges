//
//  FindMedian.swift
//
//  Given an array of integers.
//  Find the median of the array.
//
//  Examples:
//  Input: [1, 2, 3, 4, 5]
//  Output: 3
//
//  Input: [1, 2, 4, 5, 6, 7]
//  Output: 4,5

import Foundation

class Solution {

    func findMedian(array: [Int]) -> Double {
        var output: Double

        let sortedArr = array.sorted()
        let middle = sortedArr.count / 2

        if sortedArr.count % 2 == 0 {
            output = Double(sortedArr[middle] + sortedArr[middle - 1]) / 2
        } else {
            output = Double(sortedArr[middle])
        }

        return output
    }
}
