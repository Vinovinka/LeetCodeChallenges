//
//Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
//
//You must implement a solution with a linear runtime complexity and use only constant extra space.
//Example
//Input: nums = [2,2,1]
//Output: 1
//
//Input: nums = [4,1,2,1,2]
//Output: 4

import Foundation

class Solution {

    //Solution with forIn
    func unique(array: [Int]) -> Int? {
        var last: Int?

        for element in array {
            if last == nil {
                last = element
            } else if last == element {
                last = nil
            } else {
                break
            }
        }
        return last
    }

    //Solution with XOR
    func findUnique(array: [Int]) -> Int {
        array.reduce(0) { $0 ^ $1 }
    }

    //Solution with split array
    func uniqueNumber(in array: [Int]) -> Int {
        guard array.count > 1 else { return array[0] }

        let middleIndex = array.count / 2

        let leftHalf = Array(array[..<(middleIndex)])
        var leftSet = Set(leftHalf)

        var rightHalf = Array(array[(middleIndex)...])
        var rightSet = Set(rightHalf)

        guard leftSet.count != rightSet.count else {
            return uniqueNumber(in: leftHalf)
        }

        if leftHalf.last == rightHalf.first {
            rightHalf.removeFirst()
        } else if rightHalf.count == 2 {
            return array[0]
        }

        return uniqueNumber(in: rightHalf)
    }
}
