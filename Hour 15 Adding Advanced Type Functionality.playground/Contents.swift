//: Playground - noun: a place where people can play

import UIKit
import Foundation

struct Square {
    static let numberOfSides = 4
    var length : Int
    var area : Int {
        return Square.numberOfSides * length
    }
}

let sides = Square.numberOfSides
sides
let square = Square.init(length: 4)
square.area

class AClass {
    class func aClassMethod() {
        print("I am a class method")
    }
    class func bClassMethod() {
        aClassMethod()
    }
    func anInstanceMethod() {
        print("anInstanceMethod. Calling bClassMethod().")
        AClass.bClassMethod()
    }
}

AClass.aClassMethod()
let aClass = AClass()
aClass.anInstanceMethod()

struct Counter {
    static var count = 0
    static func increaseCountByOne() {
        ++count
    }
}

Counter.count
Counter.increaseCountByOne()
Counter.count

struct Volume {
    static let minVolume = 0
    static let maxVolume = 25
    
    var volume : Int = 0 {
        didSet {
            if volume > Volume.maxVolume || volume < Volume.minVolume {
                volume > oldValue
            }
        }
    }
    mutating func turnItUp() {
        ++volume
    }
    mutating func turnItDown() {
        --volume
    }
}

var volume = Volume()
volume.volume = 1
volume.turnItUp()
volume.volume

typealias ArrayCompletion = ([Int]?) -> ()

func downloadLotsOfData(completion : ArrayCompletion) {
    var someData : [Int]?
    //download lots of data
    completion(someData)
}

struct CubeANum {
    subscript(num : Int) -> Int {
    return num * num * num
    }
    subscript(num : Double) -> Double {
        return num * num * num
    }
}

let cubeANum = CubeANum()
cubeANum[2]
cubeANum[9]
cubeANum[4.5]

struct Paper {
    let student : String
    let topic : String
}

class StackOfPapers {
    var papers = [Paper]()
    func push(paper : Paper) {
        papers.append(paper)
    }
    func pop() -> Paper {
        return papers.removeLast()
    }
    subscript(number : Int) -> [Paper] {
        var tempPapers = [Paper]()
        for _ in 0..<number {
            tempPapers.append(self.pop())
        }
        return tempPapers
    }
    var count : Int {
        return papers.count
    }
}

let stack = StackOfPapers()
stack.push(Paper(student: "Susie", topic: "Sea Creatures"))
stack.push(Paper(student: "Bobby", topic: "Music"))
stack.push(Paper(student: "Madelline", topic: "Jungle Cats"))
stack.push(Paper(student: "Blake", topic: "Soccer"))
stack.push(Paper(student: "Cole", topic: "Bicycling"))
stack.push(Paper(student: "Marion", topic: "Boating"))

stack.count
stack[3]

stack.count
stack[3]

stack.count

class Instrument {
    var name : String
    init(name : String) {
        self.name = name
    }
}

class Brass : Instrument {
    let valves : Int
    init(name : String, valves : Int) {
        self.valves = valves
        super.init(name : name)
    }
}

class Woodwind : Instrument {
    let keys : Int
    init(name : String, keys : Int) {
        self.keys = keys
        super.init(name : name)
    }
}

let marchingInstruments = [
    Brass(name: "Trumpet", valves: 3),
    Brass(name: "Trombone", valves: 0),
    Brass(name: "Clarinet", valves: 18),
    Brass(name: "Alto Sax", valves: 22),
    Brass(name: "Piccolo Trumpet", valves: 4),
]

var brassCount = 0, woodwindCount = 0

for instrument in marchingInstruments {
    if instrument is Brass {
        ++brassCount
    } else if instrument is Woodwind {
        ++woodwindCount
    }
}

brassCount
woodwindCount

func displayInstrumentInfo(instrument : Instrument) {
    if let brass = instrument as? Brass {
        print("Brass: \(brass.name). Valves: \(brass.valves)")
    } else if let woodwind = instrument as? Woodwind {
        print("Woodwind: \(woodwind.name). Keys: \(woodwind.keys)")
    }
}

displayInstrumentInfo(marchingInstruments[0])
displayInstrumentInfo(marchingInstruments[2])




















