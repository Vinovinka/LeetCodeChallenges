import UIKit

//Напишите программу, которая выводит на экран числа от 1 до 100. При этом вместо чисел, кратных трем,
//программа должна выводить слово «Fizz», а вместо чисел, кратных пяти — слово «Buzz».
//Если число кратно и 3, и 5, то программа должна выводить слово «FizzBuzz».
//
func printFizzBuzz() {
    for i in 1...100 {
        if i % 15 == 0 {
            print("FizzBuzz")
        } else if i % 3 == 0 {
            print("Fizz")
        } else if i % 5 == 0 {
            print("Buzz")
        } else {
            print(i)
        }
    }
}

//printFizzBuzz()

// with switchCase

func printFizzBuzzSwithch() {

    for i in 1...100 {
        switch (i % 3 == 0, i % 5 == 0) {
        case (true, false):
            print("Fizz")
        case (false, true):
            print("Buzz")
        case (true, true):
            print("FizzBuzz")
        case  (false, false):
            print(i)
        }
    }
}

//printFizzBuzzSwithch()

func printFizzBuzzLeetCodeSolution() {

    var answer = [String]()

    for i in 1...100 {

        var currentStr = ""

        if i % 3 == 0 {
            currentStr += "Fizz"
        }

        if i % 5 == 0 {
            currentStr += "Buzz"
        }

        if currentStr == "" {
            currentStr += String(i)
        }
        answer.append(currentStr)
    }

    print(answer)
}
