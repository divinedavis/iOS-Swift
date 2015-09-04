//
//  ViewController.swift
//  Images
//
//  Created by Divine Davis on 9/4/15.
//  Copyright (c) 2015 Divine's Ideas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 1


    @IBOutlet weak var drumerImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonHoldDown(sender: AnyObject) {
        
        counter++
        
        if (counter == 5) {
            counter = 1
        }
            drumerImage.image = UIImage(named: "Drumer\(counter).png")
        
        
    }

}

