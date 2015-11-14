//: Playground - noun: a place where people can play

import UIKit

func printHelloWorld() {
    print("Hello, world")
}

printHelloWorld()

func printHelloTimes(times : Int) {
    for _ in 1...times {
        print("Hello to you!")
    }
}

printHelloTimes(5)

func printWord(word : String, numberOfTimes : Int) {
    for _ in 1...numberOfTimes {
        print("Hello \(word)")
    }
}

printWord("world", numberOfTimes: 8)

func addVariadicNumbers(numbers : Int...) -> Int {
    var results = 0
    for eachNum in numbers {
        results += eachNum
    }
    return results
}

let sum = addVariadicNumbers(2,4)
sum
addVariadicNumbers(1, 2, 3, 4, 8)
addVariadicNumbers(sum + 1,2,3,4)


    

// External parameter names
func multiply(thisNumber num1 : Int, byAnotherNumber num2 : Int) -> Int {
    return num1 * num2
}
let result = multiply(thisNumber: 4, byAnotherNumber: 8)

// More readable
func multiplyThisNumber(num1 : Int, byAnotherNumber num2 : Int) -> Int {
    return num1 * num2
}

multiplyThisNumber(3, byAnotherNumber: 99)

func append(lastName lastName : String, toFirstName firstName : String) -> String {
    return firstName + " " + lastName
}

let fullName = append(lastName: "Divine", toFirstName: "Davis")

func addExercise(exercise : String = "Hi", withDuration duration : Int = 20) {
    print("You did \(exercise) for \(duration)")
}

addExercise("Football", withDuration: 200)

func reverseWords(inout firstWord : String, inout secondWord : String) {
    var tempWord = firstWord
    firstWord = secondWord
    secondWord = tempWord
}
var first = "I am first"
var second = "I am second"
reverseWords(&first, secondWord: &second)
print(first)
print(second)

func displayCurrentStock(forStock forStock : Int, andTheStock andTheStock : Int = 878) {
    
    print("Your stock for APPL is \(forStock), and your stock for YAHOO is \(andTheStock)")
}

displayCurrentStock(forStock: 455, andTheStock: 999)

//func someFunc() -> (Int) -> String {
//    
//}









