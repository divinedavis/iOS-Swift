//: Playground - noun: a place where people can play

import UIKit


enum Suit {
    
    case one, two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    case ace
    
    
    
    func isFaceCard() -> Bool {
        switch self {
        case .jack, .queen, .king, .ace:
            return true
        default:
            return false
        }
    }
    
}




let cardSelected = Suit.jack

switch cardSelected {
case .jack:
    print("You have selected a \(cardSelected). ")
default:
    print("You have selected a \(cardSelected).")
}





