//
//  ViewController.swift
//  ATM
//
//  Created by Divine Davis on 10/28/15.
//  Copyright © 2015 Divine Davis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
        
        moneyLeftLabel.text = "200"
        
        let initialBalance = Int(moneyLeftLabel.text!)! - Int(withdrawAmount.text!)!
        
        let transferredAmount = Int(withdrawAmount.text!)!
        
        moneyLeftLabel.text = String(initialBalance)
        
        transferLabel.text = String(transferredAmount)
        
        if Int(moneyLeftLabel.text!) < 0 {
            
            detailLabel.text = "You don't have enough funds, you broke"
        }
        
    }
    
    @IBAction func withdrawButton(sender: AnyObject) {
        
        detailLabel.text = ""
        
        let withdrawn = Int(withdrawAmount.text!)!
        
        let amountLeft = 200 - withdrawn
    
        if withdrawn > 200 {
            
            detailLabel.text = "You don't have enough funds"
            
            moneyLeftLabel.text = "200"
        } else {
            moneyLeftLabel.text = String(amountLeft)
        }
    }
    

    @IBAction func depositButton(sender: AnyObject) {
        
        detailLabel.text = ""
        
        let deposit = Int(withdrawAmount.text!)!
        let addedAmount = deposit + 200
        moneyLeftLabel.text = String(addedAmount)
        
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }


}

