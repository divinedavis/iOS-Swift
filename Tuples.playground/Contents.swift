//: Playground - noun: a place where people can play

import UIKit

var str = "hello"
var num = 1000

var myTuple = (str, num)
var myOtherTuple = (str, num, 12345, "Some text")

//standard function, returning a string

func getCurrentSong() -> String {
    return ("Moonligh in Vermont")
}

//returning a tuple
func getCurrentSongAndDuration() -> (name:String, length:Int) {
    return ("Hi", 4)
}

let (name, length) = getCurrentSongAndDuration()
println("The song is \(name) & the length is \(length) seconds long")

////call function
//let result = getCurrentSongAndDuration()
////decomposing - option 1
//println("The song is \(result.name) and it's \(result.length) seconds")
//
