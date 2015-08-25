//: Playground - noun: a place where people can play

import UIKit

class Player {
    //properties
    var name : String
    var score : Int
    
    //methods
    func description() -> String {
        return("Player \(name) has a score of \(score)")
    }
    
    init() {
        name = "John Doe"
        score = 0
    }
    
    //initializer with parameter
    init(name : String) {
        self.name = name
        self.score = 0
    }
    
    deinit {
        //any necesary cleanup code
    }
    
}

var firstPlayer = Player() // init() is automatically called
println(firstPlayer.description())

//use custome initializer
var secondPlayer = Player(name: "Alice")
println(secondPlayer.description())

// default initializer

