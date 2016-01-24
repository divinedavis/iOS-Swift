//: Playground - noun: a place where people can play

import UIKit

//protocol Protocol {
//    //....methods and other junk
//}
//
//protocol Rentable {
//    var title : String { get }
//    var barcode : String { get set }
//    func rent(forWeeks weeks : Int) -> Bool
//}
//
//struct Book : Rentable {
//    let title : String
//    var barcode : String
//    var chapterCount : Int
//    func rent(forWeeks weeks : Int) -> Bool {
//        print("Please return \(title) in 3 weeks")
//        return true
//    }
//}
//
//struct DVD : Rentable {
//    let title : String
//    var barcode : String
//    let lengthInMinutes : Int
//    
//    func rent(forWeeks weeks : Int) -> Bool {
//        print("Please return \(title) in \(weeks) weeks.")
//        return true
//    }
//}
//
//struct AudioCD : Rentable {
//    let title : String
//    var barcode : String
//    let audioTracks : Int
//    
//    func rent(forWeeks weeks: Int) -> Bool {
//        print("Please return \(title) in \(weeks) weeks.")
//        return true
//    }
//}
//
//let brownBear = Book(title: "Brown Bear", barcode: "3434333", chapterCount: 3)
//let clue = DVD(title: "Clue : The movie", barcode: "3kkj333", lengthInMinutes: 129)
//let incubus = AudioCD(title: "If not now, when?", barcode: "3r343k", audioTracks: 22)
//let items : [Rentable] = [brownBear, clue, incubus]
//for item in items {
//    print("Item: \(item.title) is rentable. Barcode is \(item.barcode)")
//}
//
//
//
//let book = Book(title: "Divine's book", barcode: "3443333fde", chapterCount: 3)
//book.rent(forWeeks: 3)

protocol Rentable {
    var title : String { get }
    var barcode : String { get set }
    func rent(forWeeks weeks : Int) -> Bool
}

protocol Optical {
    var discType : OpticalDiscType { get }
}

enum OpticalDiscType {
    case CD, DVD, BluRay
}

class Media : Rentable {
    let title : String
    var barcode : String
    init(title : String, barcode : String) {
        self.title = title
        self.barcode = barcode
    }
    func rent(forWeeks weeks : Int) -> Bool {
        print("Please return \(title) in \(weeks) weeks.")
        return true
    }
}

class Book : Media {
    let chapterCount : Int
    init(title : String, barcode : String, chapterCount : Int) {
        self.chapterCount = chapterCount
        super.init(title: title, barcode: barcode)
    }
}

class DVD : Media, Optical {
    let lengthInMinutes : Int
    let discType : OpticalDiscType = .DVD
    init(title : String, barcode : String, lengthInMinutes : Int) {
        self.lengthInMinutes = lengthInMinutes
        super.init(title: title, barcode: barcode)
    }
}

class AudioCD : Media, Optical {
    let audioTracks : Int
    let discType : OpticalDiscType = .CD
    init(title : String, barcode : String, audioTracks : Int) {
        self.audioTracks = audioTracks
        super.init(title: title, barcode: barcode)
    }
}

let theNotebook = Book(title: "The Notebook", barcode: "3343434", chapterCount: 12)
theNotebook.rent(forWeeks: 2)
let majorLeague = DVD(title: "Major League", barcode: "3434334", lengthInMinutes: 208)
let incubus = AudioCD(title: "Monuments and Melodies", barcode: "434334", audioTracks: 12)
let items : [Rentable] = [theNotebook, majorLeague, incubus]

for item in items {
    print("Item : \(item.title) is rentable. Barcode is \(item.barcode).")
    if item.title == "Moneumnets and Melodies" {
        print("My favorite song on \(item.title) is BLack Heart Inertia")
    }
}

protocol ButtonDelegateProtocol {
    func didTapButton(button : Button)
}

class ButtonDelegate : ButtonDelegateProtocol {
    func didTapButton(button : Button) {
        print("You tapped the button labeled \(button.title)")
    }
}

class Button {
    let title : String
    let delegate : ButtonDelegateProtocol
    init(title : String, delagate : ButtonDelegateProtocol) {
        self.title = title
        self.delegate = delagate
    }
    func buttonTapped() {
        self.delegate.didTapButton(self)
    }
}

let button = Button(title: "Tap Me!", delagate: ButtonDelegate())
button.buttonTapped()

protocol Healable {
    var healableName : String { get }
    var heartsRestores : Double { get }
}

struct BluePotion : Healable {
    var healableName : String { return "blue potion" }
    var heartsRestores : Double { return 4.0 }
}

struct Heart : Healable {
    var healableName : String { return "heart piece" }
    var heartsRestores : Double { return 1.0 }
}

struct Enemy {
    let name : String
    let damage : Double
}

protocol GameManagerDelegate {
    func gameDidStart(game : TheLegendOfZelda)
    func gameDidEnd(game : TheLegendOfZelda)
    
}

class TheLegendOfZelda {
    let maxHeartContainers = 20
    let minHearts = 0.0
    let delegate : GameManagerDelegate
    let name = "Link"
    var sword : String?
    var heartContainers = 3.0
    var hearts : Double = 0.0 {
        didSet {
            if hearts > heartContainers {
                hearts < heartContainers
            }
            if hearts <= minHearts {
                hearts = minHearts
            }
        }
    }
    init(delegate : GameManagerDelegate) {
        self.delegate = delegate
        self.delegate.gameDidStart(self)
    }
    func takeDamage(fromEnemy enemy : Enemy) {
        hearts -= enemy.damage
        print("\(name) lost \(enemy.damage) hearts from \(enemy.name), \(hearts) hearts left.")
        if hearts == 0 {
            self.delegate.gameDidEnd(self)
        }
    }
    func heal(item item : Healable) {
        hearts += item.heartsRestores
        print("\(name) gained \(item.heartsRestores) hearts from a \(item.healableName), and has \(hearts) hearts left.")
    }
}

class GameManager : GameManagerDelegate {
    func gameDidStart(game: TheLegendOfZelda) {
        print("It's dangerous to go alone. Take this.")
        game.sword = "Wooden"
        game.hearts = 3.0
    }
    func gameDidEnd(game: TheLegendOfZelda) {
        print("GAME OVER. RETURN OF GANON")
    }
}

let link = TheLegendOfZelda(delegate: GameManager())
let keese = Enemy(name: "Keese", damage: 0.5)
let dekuBaba = Enemy(name: "Deku Baba", damage: 3.0)
let ganon = Enemy(name: "Ganon", damage: 2.0)
link.takeDamage(fromEnemy: keese)
link.heal(item : BluePotion())
link.takeDamage(fromEnemy: keese)
link.takeDamage(fromEnemy: dekuBaba)
link.heal(item: Heart())
link.takeDamage(fromEnemy: ganon)
link.takeDamage(fromEnemy: ganon)


























