//
//  CountInput.swift
//
//  Дан непустой массив целых чисел и число
//
//  Вычислить, сколько раз целое число встречается в массиве целых чисел
//
//  Input: [1, 2, 3, 3, 4, 5], 3
//  Output: 2

import Foundation

class CountInput {

    func inputCount(_ listOfNumbers: [Int], _ number: Int) -> Int {

        var result = 0

        for i in listOfNumbers {
            if i == number {
                result += 1
            }
        }
        return result
    }

    func inputCountWithFilter (_ listOfNumbers: [Int], _ number: Int) -> Int {
        listOfNumbers.filter { $0 == number }.count
    }

}
