//: Playground - noun: a place where people can play

import UIKit

//enum GradesKto5 : String {
//    case Kindergarden = "K", First = "1st"
//    case Second = "2nd", Third = "3rd"
//    case Fourth = "4th", Fifth = "5th"
//    
//}
//
//var myKid = GradesKto5.Kindergarden
//myKid.rawValue
//
enum PhoneNumber {
    case TollFree(Int, Int, Int)
    case InternalExtension(Int)
    
    func ext() -> String {
        var resultExtension = ""
        
        switch self {
        
        case .TollFree( _, _, let xtnsn):
            resultExtension = "Toll-free extension, \(xtnsn)"
        case .InternalExtension(let xtnsn):
            resultExtension = "Internal extension, \(xtnsn)"
        }
        
        return resultExtension
    }
}

var number = PhoneNumber.TollFree(800, 555, 1212)
number.ext()

number = PhoneNumber.InternalExtension(7757)
number.ext()


//let customerService = PhoneNumber.TollFree(areaCode: 803, exchange: 333, ext: 3434)
//
//switch customerService {
//case .TollFree(_, _, let ext):
//    print("Toll-free number, extension: \(ext)")
//case .InternalExtension(let ext):
//    print("Internal extension: \(ext)")
//}



//enum GradesKTo5 {
//    case Kindergarten, First, Second, Third, Fourth, Fifth
//}
//
//let firstGrade = GradesKTo5.First
//let secondGrade = GradesKTo5.Second
//let thirdGrade = GradesKTo5.Third
//let fourthGrade = GradesKTo5.Fourth
//
//switch secondGrade {
//    
//case .Kindergarten:
//    print("Welcome to Kindergarten")
//case .First:
//    print("Welcome to first grade")
//case .Second:
//    print("Welcome to second grade")
//case .Third:
//    print("Welcome to third grade")
//case .Fourth:
//    print("Welcome to fourth grade")
//case .Fifth:
//    print("Welcome to fifth grade")
//    
//}
//
//enum STYOptional<T> {
//    case None
//    case some(T)
//}



























