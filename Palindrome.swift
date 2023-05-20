//
//  Palindrome.swift
//  
//A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.
//
//Given a string s, return true if it is a palindrome, or false otherwise.
//
//Input: s = "A man, a plan, a canal: Panama"
//Output: true
//Explanation: "amanaplanacanalpanama" is a palindrome.
//
//Input: s = "race a car"
//Output: false
//Explanation: "raceacar" is not a palindrome.


import Foundation

class Solution {

    // Solution with .replacingOccurrences
    func isPalindrome(_ string: String) -> Bool {

        let formattedString = string.lowercased().replacingOccurrences(of: "[^a-zA-Z0-9]", with: "", options: [.regularExpression])

        return String(formattedString.reversed()) == formattedString

    }
}

