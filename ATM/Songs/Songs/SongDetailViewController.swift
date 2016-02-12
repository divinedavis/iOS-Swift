//
//  SongDetailViewController.swift
//  Songs
//
//  Created by Divine Davis on 2/10/16.
//  Copyright © 2016 Divine. All rights reserved.
//

import UIKit

class SongDetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    var song : Song?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    func updateView() {
        titleLabel.text = song?.title
        artistLabel.text = song?.artist
        ratingLabel.text = "\(song?.rating)/ 5 stars"
    }
    
    
    
    
        
}
