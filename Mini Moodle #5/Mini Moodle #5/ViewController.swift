//
//  ViewController.swift
//  Mini Moodle #5
//
//  Created by Divine Davis on 11/19/15.
//  Copyright © 2015 Divine. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelToLogInViewController(segue:UIStoryboardSegue) {
    }



}

