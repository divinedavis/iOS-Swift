//
//  FirstViewController.swift
//  To Do List
//
//  Created by Divine Davis on 8/28/15.
//  Copyright (c) 2015 Divine's Ideas. All rights reserved.
//

import UIKit

var toDoItems:[String] = []

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tasksTable:UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoItems.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        
        cell.textLabel?.text = toDoItems[indexPath.row]
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        if var storedToDoItems = NSUserDefaults.standardUserDefaults().objectForKey("toDoItems") as? [String] {
            
            toDoItems = []
            
            for var i = 0; i < storedToDoItems.count; ++i {
                toDoItems.append(storedToDoItems[i])
            }
        }
        
        tasksTable?.reloadData()
    }


}

