//
//  RansomNote.swift
//  
//  Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise.
//
//  Each letter in magazine can only be used once in ransomNote.
//

import Foundation

class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var magazineLetters = [Character: Int]()

        for i in magazine {
            magazineLetters[i, default: 0] += 1
        }

        for i in ransomNote {
            if let count = magazineLetters[i], count > 0 {
                magazineLetters[i] = count - 1
            } else {
                return false
            }
        }

        return true
    }
}
