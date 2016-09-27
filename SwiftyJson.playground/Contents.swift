//: Playground - noun: a place where people can play

import Foundation
import XCPlayground
 //XCPSetExecutionShouldContinueIndefinitely()
/**
* Paste all the code from the following file
- https://github.com/lingoer/SwiftyJSON/blob/master/SwiftyJSON/SwiftyJSON.swift
**/

let urlPath = "http://api.topcoder.com/v2/challenges?pageSize=2"

let url: NSURL = NSURL(string: urlPath)!

let session = NSURLSession.sharedSession()

let task = session.dataTaskWithURL(url, completionHandler: {data, response, error -> Void in
    if error != nil {
        // If there is an error in the web request, print it to the console
        print(error!.localizedDescription)
    }
    var err: NSError?
    
    var jsonResult = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &err) as NSDictionary
    
    if err != nil {
        // If there is an error parsing JSON, print it to the console
        print("JSON Error \(err!.localizedDescription)")
    }
    let json = JSONValue(jsonResult)
    
    let count: Int? = json["data"].array?.count
    
    print("found \(count!) challenges")
    
    if let ct = count {
        for index in 0...ct-1 {
    
            // println(json["data"][index]["challengeName"].string!)
            
            if let name = json["data"][index]["challengeName"].string {
                println(name)
            }
        }
    }
})
task.resume()