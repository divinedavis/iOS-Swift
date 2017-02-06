//
//  ViewController.swift
//  WorkingWithPropertyLists
//
//  Created by Divine Davis on 2/6/17.
//  Copyright © 2017 Divine Davis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var favColorLabel: UILabel!
    @IBOutlet weak var favNumberLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.loadFavorites()
    }
    
    func loadFavorites() {
        
        if let path = Bundle.main.url(forResource: "favList", withExtension: "plist") {
            
            let list = NSDictionary(contentsOf: path)
            
            if let _ = list?.object(forKey: "demoDisplayFavAtStart") {
                
                if let favNumber = list?.object(forKey: "demoFavNumber") {
                    favNumberLabel.text = "\(favNumber)"
                }
                
                if let favColor = list?.object(forKey: "demoFavColor") {
                    favColorLabel.text = "\(favColor)"
                }
            }
            
            else {
                print("not displaying favorites")
            }
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

