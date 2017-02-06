//
//  Food.swift
//  ArchivingObjects
//
//  Created by Divine Davis on 2/6/17.
//  Copyright © 2017 Divine Davis. All rights reserved.
//

import Foundation
import UIKit

class Food: NSObject, NSCoding {
    
    var name : String
    var servingSize : String
    var calories : Float
    var protein : Float
    var carbs : Float
    var fats : Float
    
    init(name:String, servingSize:String, calories:Float, protein:Float, carbs:Float, fats:Float) {
        
        self.name = name
        self.servingSize = servingSize
        self.calories = calories
        self.protein = protein
        self.carbs = carbs
        self.fats = fats
        
        super.init()
    }
    
    required convenience init(coder aDecoder:NSCoder) {
        let name = aDecoder.decodeObject(forKey: "name") as! String
        let servingSize = aDecoder.decodeObject(forKey: "servingSize") as! String
        let calories = aDecoder.decodeObject(forKey: "calories") as! Float
        let protein = aDecoder.decodeObject(forKey: "protein") as! Float
        let carbs = aDecoder.decodeObject(forKey: "carbs") as! Float
        let fats = aDecoder.decodeObject(forKey: "fats") as! Float
        
        self.init(name:name, servingSize:servingSize, calories:calories, protein:protein, carbs:carbs, fats:fats)
    }
    
    
    func encode(with aCoder: NSCoder) {
        
        aCoder.encode(self.name, forKey: "name")
        aCoder.encode(self.servingSize, forKey: "servingSize")
        aCoder.encode(self.calories, forKey: "calories")
        aCoder.encode(self.protein, forKey: "protein")
        aCoder.encode(self.carbs, forKey: "carbs")
        aCoder.encode(self.fats, forKey: "fats")
        
    }
    
    
    
    
    
    

}
