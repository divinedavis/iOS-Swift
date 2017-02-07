//
//  ViewController.swift
//  WorkingWithSQLite
//
//  Created by Divine Davis on 2/6/17.
//  Copyright © 2017 Divine Davis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var databasePath : String?
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var colorTextField: UITextField!
    @IBOutlet weak var descTextField: UITextField!

    @IBOutlet weak var statusLabel: UILabel!
    
    @IBAction func addTapped(_ sender: Any) {
        
        self.insertFood()
        
    }
    
    @IBAction func queryTapped(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if self.initializeDatabase() {
            print("Database initialized")
        }
        
    }
    
    func initializeDatabase() -> Bool {
        
        var isInitialized = false
        
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let docDir = paths[0]
        let fileManager = FileManager.default
        let foodDbPath = docDir.appending("foods.db")
        
        databasePath = foodDbPath
        
        if !fileManager.fileExists(atPath: foodDbPath) {
            //create
            let foodDB = FMDatabase(path:foodDbPath)
            
            if foodDB == nil {
                print("Error creating DB \(foodDB.lastErrorMessage())")
                isInitialized = false
                return isInitialized
            }
            
            if foodDB.open() {
                //create a food table
                
                let statement = "CREATE TABLE IF NOT EXISTS FOODS (ID INTEGER PRIMARY KEY AUTOINCREMENT, NAME TEXT, COLOR TEXT, DESCRIPTION TEXT)"
                
                if !foodDB.executeStatements(statement) {
                    print("Error creating table \(foodDB.lastErrorMessage())")
                    
                    isInitialized = false
                    
                    return isInitialized
                }
                
                print("Database and table initialized")
                
                foodDB.close()
                
                isInitialized = true
                
                return isInitialized
                
            }
            else {
                print("Error opening DB \(foodDB.lastErrorMessage())")
                isInitialized = false
                return isInitialized
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

