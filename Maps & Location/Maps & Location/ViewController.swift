//
//  ViewController.swift
//  Maps & Location
//
//  Created by Divine Davis on 9/15/15.
//  Copyright (c) 2015 Juniper Street. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        39.966622, -76.737153
        var latitude:CLLocationDegrees = 39.966622
        var longitude:CLLocationDegrees = -76.737153
        var latDelta:CLLocationDegrees = 0.01
        var longDelta:CLLocationDegrees = 0.01
        var span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        var annotation = MKPointAnnotation()
        
        annotation.coordinate = location
        annotation.title = "Home"
        annotation.subtitle = "I'm barely there though"
    
        mapView.addAnnotation(annotation)
        mapView.setRegion(region, animated: true)
        
        var longPressGesture = UILongPressGestureRecognizer(target: self, action: "action:")
        
        longPressGesture.minimumPressDuration = 2.0
        
        mapView.addGestureRecognizer(longPressGesture)
        
    }
    
    func action(gestureRecognizer:UIGestureRecognizer) {
        
        var touchPoint = gestureRecognizer.locationInView(self.mapView)
        var newCoordinate:CLLocationCoordinate2D = mapView.convertPoint(touchPoint, toCoordinateFromView: self.mapView)
        var newAnnotation = MKPointAnnotation()
        
        newAnnotation.coordinate = newCoordinate
        newAnnotation.title = "Home"
        newAnnotation.subtitle = "I'm barely there though"
        
        mapView.addAnnotation(newAnnotation)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

