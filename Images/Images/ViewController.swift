//
//  ViewController.swift
//  Images
//
//  Created by Divine Davis on 9/4/15.
//  Copyright (c) 2015 Divine's Ideas. All rights reserved.
//

import UIKit
import Foundation

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
    
    //Where the image will end up AFTER 'viewDidAppear' is called
    override func viewDidLayoutSubviews() {
        drumerImage.center = CGPointMake(drumerImage.center.x + 400, drumerImage.center.y + 200)
    }
    
    //Where the view is placed at runtime.
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(3, animations: {
            
            self.drumerImage.center = CGPointMake(self.drumerImage.center.x - 400, self.drumerImage.center.y - 200)
            
        })
    }

}

