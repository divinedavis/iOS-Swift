//
//  ViewController.swift
//  ArchivingObjects
//
//  Created by Divine Davis on 2/6/17.
//  Copyright © 2017 Divine Davis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var foodObjectGraph : [Food]?
    
    @IBAction func archiveTapped(sender: AnyObject) {
    
        //create archive
        
        let archivedData = NSKeyedArchiver.archivedData(withRootObject: self.foodObjectGraph!)
        
        //store in NSUserDefaults
        UserDefaults.standard.set(archivedData, forKey: "foodObjectGraph")
        
        //empty
        foodObjectGraph = [Food]()
        
        print("Food array archived and stored")
        
    }
    @IBAction func unarchiveTapped(sender: AnyObject) {
    
        if let archivedData = UserDefaults.standard.object(forKey: "foodObjectGraph") {
            
            let data = archivedData as! NSData
            
            let foods = NSKeyedUnarchiver.unarchiveObject(with: data as Data) as! [Food]
            
            foodObjectGraph = foods
            
            for food:Food in foodObjectGraph! {
                print("bla: \(food.name)")
            }
            
            print("Food unarchived and restored")
            
        }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        foodObjectGraph = [Food]()
        
        self.addFoodsToGraph()
        
        print("Food Object graph set")
    }
    
    func addFoodsToGraph() {
    
        let apple = Food(name: "Apple", servingSize: "1 small", calories: 50, protein: 0, carbs: 21, fats: 0)
        let banana = Food(name: "Banana", servingSize: "1 medium", calories: 23, protein: 1, carbs: 23, fats: 0)
        let beans = Food(name: "Beans", servingSize: "28g", calories: 75, protein: 6, carbs: 17, fats: 0)
        let egg = Food(name: "Egg", servingSize: "1 medium", calories: 100, protein: 5, carbs: 0, fats: 4)
        
        foodObjectGraph?.append(apple)
        foodObjectGraph?.append(banana)
        foodObjectGraph?.append(beans)
        foodObjectGraph?.append(egg)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

