//
//  LetterCounting.swift
//  
//
//  Created by Victoria Vinogradova on 20.05.2023.
//
//  Given a string and a letter.
//  Count how many times the letter occures in the string regardless the case
//
//  Example
//
//  Input: "Hello", "L"
//  Output: 2

import Foundation

class Solution {

    // Solution with forIn
    func letterCounting(_ string: String, _ char: Character) -> Int {

        let lowercasedString = string.lowercased()
        let lowercasedChar = char.lowercased()

        var count = 0

        for letter in string {
            if String(letter) == lowercasedChar {
                count += 1
            }
        }

        return count
    }

    // Another solution with .components
    func numberOfOccurencies(_ str: String, _ char: Character) -> Int {
        let lowString = str.lowercased()
        let lowChar = char.lowercased()

        return lowString.components(separatedBy: lowChar).count - 1
    }
}
