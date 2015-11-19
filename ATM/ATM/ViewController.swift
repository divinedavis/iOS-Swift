//
//  ViewController.swift
//  ATM
//
//  Created by Divine Davis on 10/28/15.
//  Copyright © 2015 Divine Davis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var balance = 200
    
    //Display additional information to the user
    @IBOutlet weak var detailLabel: UILabel!
    
    //Where you enter your amount as an INT
    @IBOutlet weak var withdrawAmount: UITextField!
    
    //How much you have left after you deposit, withdraw or transfer
    @IBOutlet weak var moneyLeftLabel: UILabel!
    
    //Shows how much money you have transferred
    @IBOutlet weak var transferLabel: UILabel!
    
    //Money transfers when you touch the button
    @IBAction func transferButton(sender: AnyObject) {
        
        
    }
    
    @IBAction func withdrawButton(sender: AnyObject) {
        
        var withdraw = Int(withdrawAmount.text!)
        
        if withdraw > balance {
            
            balance = balance - withdraw!
            
            print(balance)
        }
        
}
    

    @IBAction func depositButton(sender: AnyObject) {
        
           }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }


}

