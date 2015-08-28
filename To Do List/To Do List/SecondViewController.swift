//
//  SecondViewController.swift
//  To Do List
//
//  Created by Divine Davis on 8/28/15.
//  Copyright (c) 2015 Divine's Ideas. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var toDoItem: UITextField!
    
    @IBAction func addItemButton(sender: UIButton) {
        
        toDoItems.append(toDoItem.text)
        
        println(toDoItems)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }


}

