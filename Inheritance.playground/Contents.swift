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
}

class PremierPlayer: Player {
    //additional properties
    var memberLevel : String = "Gold"
    override init() {
        memberLevel = "Gold"
        super.init()
    }
    
    override func description() -> String {
        let originalMessage = super.description()
        return("\(originalMessage) and is a \(memberLevel)")
    }
    
    
    //additional methods
    func calculateBonus() {
        self.score += 1000
        println("New core is \(self.score)")
    }
}
var newPlayer = PremierPlayer()
newPlayer.description()
//newPlayer.calculateBonus()

var jake = Player()
println(jake.description())