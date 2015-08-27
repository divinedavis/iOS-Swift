//: Playground - noun: a place where people can play

import UIKit

extension String {
    func reverseWords() -> String {
        let wordsArray = self.componentsSeparatedByString(" ")
        let reversedArray = wordsArray.reverse()
        var newString = ""
        for eachWord in reversedArray {
            newString += eachWord + " "
        }
        return newString
    }
}

var message = "I want to reverse all the words in this string"
message.reverseWords()