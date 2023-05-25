//
//  DuplicateNumber.swift
//  
//
//  Given an array of integers nums containing n + 1 integers where each integer is in the range [1, n] inclusive.
//  There is only one repeated number in nums, return this repeated number.
//  You must solve the problem without modifying the array nums and uses only constant extra space.
//
//  Example
//  Input: nums = [1,3,4,2,2]
//  Output: 2
//
import Foundation

class DuplicateNumber {

    // with Set

    func findDuplicate(_ nums: [Int]) -> Int {
        var seen = Set<Int>()

        for i in nums {
            if seen.contains(i) {
                return i
            }
            seen.insert(i)
        }
        return -1
    }

    // with sort array
    func findDuplicateWithSort(_ nums: [Int]) -> Int {

        let sortArr = nums.sorted()

        for i in 0..<sortArr.count - 1{
            if sortArr[i] == sortArr[i+1] {
                return sortArr[i]
            }
        }
        return -1
    }

    // with binary search
    func findDuplicateWithSplit(_ nums: [Int]) -> Int {
        var low = 1, high = nums.count - 1
        while low < high {
            let mid = low + (high - low) / 2
            var count = 0
            for num in nums {
                if num <= mid {
                    count += 1
                }
            }
            if count > mid {
                high = mid
            } else {
                low = mid + 1
            }
        }
        return low
    }
}
