//: [Previous](@previous)

import Foundation

func runningSum(_ nums: [Int]) -> [Int] {
    var result = [Int]()
    var sum = 0
    
    for i in nums {
        sum += i
        result.append(sum)
    }

    return result
}

runningSum([1, 2, 3])

//: [Next](@next)
