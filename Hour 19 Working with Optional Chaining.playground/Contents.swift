//: Playground - noun: a place where people can play

import UIKit

class Person {
    var dog : Dog?
}

class Dog {
    var name : String
    init(name : String) { self.name = name }
}

let susie = Person()
let dogsName = susie.dog?.name

let bobby = Person()
bobby.dog = Dog(name: "Pee")
let dogsNames = bobby.dog?.name

class Site {
    var title : String
    var libraries : [Library]?
    init(title : String) { self.title = title }
    func addNewLibrary(title : String) -> Library {
        var library = Library(title : title)
        if libraries == nil {
            libraries = []
        }
        libraries?.append(library)
        return library
    }
    
}

class Library {
    var title : String
    var documents : [Document]?
    init(title :String) { self.title = title }
    func addNewDocument(title : String) -> Document {
        var document = Document(title : title)
        if documents == nil {
            documents = []
        }
        documents?.append(document)
        return document
    }
}

class Document {
    var title : String
    var checkedOut = false
    init(title : String) { self.title = title }
    func checkOut() { checkedOut = true }
    func checkIn() { checkedOut = false }
}

let acctSite = Site(title: "Accounting")

let auditLibrary = Library(title: "Audit Library")
acctSite.libraries = []
acctSite.libraries?.append(auditLibrary)

let document = Document(title : "Audit Report November 2014.txt")
auditLibrary.documents = []
auditLibrary.documents?.append(document)

let addDoc = acctSite.libraries?.first?.addNewDocument("Audit Report")
let checkout = acctSite.libraries?.first?.documents?.first?.checkOut() 

let docName = acctSite.libraries?[0].documents?[0].title

if let name = docName {
    print("Document name is \(name).")
} else {
    print("Could not retrieve document name.")
}

var bowlingScores = ["Jane" : [190, 180, 172], "John" : [165, 156, 214]]

bowlingScores

bowlingScores["Jane"]?[2]++

bowlingScores




















