//
//  ViewController.swift
//  Inheritance Based Game Layout
//
//  Created by Divine Davis on 8/31/15.
//  Copyright (c) 2015 Divine's Ideas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    class GameObject: NSObject {
        func update(deltaTime : Float) {
            
            //'deltaTime' is the number of second sence this was last called
            
            //This method is overriden by sublasses to update the object's state - position, direction, and so on.
        }
    }
    
    class Monster: GameObject {
        var hitPoints : Int = 10 //how much health we have
        var target : GameObject? //the game object we're attacking
        
        override func update(deltaTime: Float) {
            super.update(deltaTime)
            
            // Do some monster - specific updating
        }
    }
    
    class TimeKeeper: NSObject {
        var lastFrameTime : Double = 0

        func update(currentTime : Double) {

            // Calbulate the time since this method was last called
            let deltaTime = currentTime - lastFrameTime
            
            // Move at 3 units per second 
            let movementSpeed = 3.0
            
            // Multiply by deltaTime to work out how far an object needs to move this frame
            let someMovingObject.move(distance: movementSpeed * deltaTime)
            
            // Set last frame time to current time, so that we can calculate the delta time when we're next called
            
        }
    
        
    }
    
    


}

