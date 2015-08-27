//: Playground - noun: a place where people can play

import UIKit

class Player {
    //properties
    var name : String?
    var score : Int?
    
    //methods
    func description() -> String {
        return("Player \(name!) has a score of \(score!)")
    }
    
}

//instatiate a new Player object
var jake = Player()

//use dot syntax
jake.name = "Jake"
jake.score = 1000
println(jake.description())
