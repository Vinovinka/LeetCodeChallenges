//: [Previous](@previous)

import Foundation

/*
 Given an array of Int. Return the array of Int without duplicates.

 Input: [1, 1, 2, 4, 0, 5, 3, 4, 0]
 Output: [1, 2, 4, 0, 5, 3]
 */

func removeDuplicates(numbers: [Int]) -> [Int] {

    var result = [Int]()

    for i in numbers {
        if !result.contains(i) {
            result.append(i)
        }
    }

    return result
}

removeDuplicates(numbers: [1, 1, 2, 4, 0, 5, 3, 4, 0])


func removeDuplicatesWithSet(numbers: [Int]) -> [Int] {
    return Array(Set(numbers))
}

removeDuplicatesWithSet(numbers: [-1, 1, -2, 4, 0, 5, 3, 4, 0])

//: [Next](@next)
