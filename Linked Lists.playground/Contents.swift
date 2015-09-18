//: Playground - noun: a place where people can play

import UIKit

class LLNode<T> {
    var key: T!
    var next: LLNode?
    var previous: LLNode?
}

func printAllKeys() {
    
    var current: LLNode! = head
    
    //assign the next instance
    while (current != nil) {
        print("link item is: \(current.key)")
        current = current.next
    }
    
}

class LinkedList<T: Equatable> {
    
    var head: LLNode<T> = LLNode<T>()
    
    //append a new item
    func addLink(key: T) {
        
        if (head.key == nil) {
            head.key = key
            return
        }
        
        //establish loop variables
        var current: LLNode? = head
        
        while (current != nil) {
            
            if (current?.next == nil) {
                
                var childToUse: LLNode = LLNode<T>()
                
                childToUse.key = key
                childToUse.previous = current
                current!.next = childToUse
                break
            }
            
            else {
                current = current?.next
            }
            
        }
        
    }

}

func removeLinkAtIndex(index: Int) {

    //check for nil conditions
    if ((index < 0) || (index > (self.count - 1)) || (head.key == nil)) {
        print("link index does not exist..")
        return
    }
    
    var current: LLNode<T>? = head
    var trailer: LLNode<T>?
    var listIndex: Int = 0
    
    //determine if the removal is at the head
    if (index == 0) {
        current = current?.next
        head = current!
        return
    }
    
    //iterate through the remaining items
    while (current != nil) {
        
        if (listIndex == index) {
            
            //redirect the trailer and next pointers
            trailer!.next = current?.next
            current = nil
            break
        }
        
        //update the assignments
        trailer = current
        
        current = current?.next
        listIndex++
    }
}







