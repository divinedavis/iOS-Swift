//
//  ViewController.swift
//  ATM
//
//  Created by Divine Davis on 10/28/15.
//  Copyright © 2015 Divine Davis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var withdrawAmount: UITextField!
    @IBOutlet weak var moneyLeftLabel: UILabel!
    
    @IBAction func transferButton(sender: AnyObject) {
        
        
        
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

