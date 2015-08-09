//
//  ViewController.swift
//  Demo
//
//  Created by Divine Davis on 8/7/15.
//  Copyright (c) 2015 Juniper Street Games. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let devCourses = [
        ("iOS App Dev with Swift Essential Training","Simon Allardice"),
        ("iOS 8 SDK New Features","Lee Brimelow"),
        ("Data Visualization with D3.js","Ray Villalobos"),
        ("Swift Essential Training","Simon Allardice"),
        ("Up and Running with AngularJS","Ray Villalobos"),
        ("MySQL Essential Training","Bill Weinman"),
        ("Building Adaptive Android Apps with Fragments","David Gassner"),
        ("Advanced Unity 3D Game Programming","Michael House"),
        ("Up and Running with Ubuntu Desktop Linux","Scott Simpson"),
        ("Up and Running with C","Dan Gookin") ]
    
    let webCourses = [
        ("HTML Essential Training","James Williamson"),
        ("Building a Responsive Single-Page Design","Ray Villalobos"),
        ("Muse Essential Training","Justin Seeley"),
        ("WordPress Essential Training","Morten Rand-Hendriksen"),
        ("Installing and Running Joomla! 3: Local and Web-Hosted Sites","Jen Kramer"),
        ("Managing Records in SharePoint","Toni Saddler-French"),
        ("Design the Web: SVG Rollovers with CSS","Chris Converse"),
        ("Up and Running with Ember.js","Kai Gittens"),
        ("HTML5 Game Development with Phaser","Joseph Labrecque"),
        ("Responsive Media","Christopher Schmitt") ]

    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return devCourses.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        let (courseTitle, courseAuthor) = devCourses[indexPath.row]
        cell.textLabel?.text = courseTitle
        cell.detailTextLabel?.text = courseAuthor
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

