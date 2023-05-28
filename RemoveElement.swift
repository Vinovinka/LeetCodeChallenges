//
//  RemoveElement.swift
//  Given an integer array nums and an integer val, remove all occurrences of val in nums in-place. The order of the elements may be changed. Then return the number of elements in nums which are not equal to val.
//
//  Consider the number of elements in nums which are not equal to val be k, to get accepted, you need to do the following things:
//
//  Change the array nums such that the first k elements of nums contain the elements which are not equal to val. The remaining elements of nums are not important as well as the size of nums.
//  Return k.
//
//  Input: nums = [0,1,2,2,3,0,4,2], val = 2
//  Output: 5, nums = [0,1,4,0,3,_,_,_]

import Foundation

class Solution {

    // Two pointers
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var i = 0

        for j in 0..<nums.count {
            if nums[j] != val {
                nums[i] = nums[j]
                i += 1
            }
        }
        return i
    }

    //  Two pointers - when elements to remove are rare
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var i = 0
        var n = nums.count

        while i < n {
            if nums[i] == val {
                nums[i] = nums[n - 1]
                n -= 1
            } else {
                i += 1
            }
        }
        return n
    }

}
