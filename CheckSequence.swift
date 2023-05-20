//
//  CheckSequence.swift
//
//  Given an array of Integers.
//  Return the True, if there is a sequence of at least three consecutive numbers
//
//  Написать функцию, которая будет возвращать true, если поданный на вход массив целых чисел содержит 3 и более последовательных числа в любом месте
//
//  Examples
//
//  Input: [1, 3, 5, 6, 7]
//  Output: true
//
//  Input: [1, 2, 5]
//  Output: false

import Foundation

class Solution {

    func findSequence(_ numbers: [Int]) -> Bool {
        guard numbers.count >= 3 else {
            return false
        }

        var count = 0

        for i in 0..<numbers.count - 1 {
            if numbers[i] + 1 == numbers[i + 1] {
                count += 1
                if count >= 2 {
                    return true
                }
            } else {
                count = 0
            }
        }
        return false
    }
}
