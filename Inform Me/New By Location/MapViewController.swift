//
//  MapViewController.swift
//  New By Location
//
//  Created by Divine Davis on 11/7/15.
//  Copyright © 2015 HackDuke. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nigeria = MKPointAnnotation()
        let algeria = MKPointAnnotation()
        let angola = MKPointAnnotation()
        let benin = MKPointAnnotation()
        let botswana = MKPointAnnotation()
        let burkinaFaso = MKPointAnnotation()
        let burundi = MKPointAnnotation()
        let caboVerde = MKPointAnnotation()
        let cameroon = MKPointAnnotation()
        let centralAfricanRepublic = MKPointAnnotation()
        let chad = MKPointAnnotation()
        let comoros = MKPointAnnotation()
        let republicOfTheCongo = MKPointAnnotation()
        let democraticRepublicOfTheCongo = MKPointAnnotation()
        let cotedIvoire = MKPointAnnotation()
        let djibouti = MKPointAnnotation()
        let egypt = MKPointAnnotation()
        let equatorialGuinea = MKPointAnnotation()
        let eritrea = MKPointAnnotation()
        let ethiopia = MKPointAnnotation()
        let gabon = MKPointAnnotation()
        let gambia = MKPointAnnotation()
        let ghana = MKPointAnnotation()
        let guinea = MKPointAnnotation()
        let guineaBissau = MKPointAnnotation()
        let kenya = MKPointAnnotation()
        let lesotho = MKPointAnnotation()
        let liberia = MKPointAnnotation()
        let libya = MKPointAnnotation()
        let madagascar = MKPointAnnotation()
        let malawi = MKPointAnnotation()
        let mali = MKPointAnnotation()
        let mauritania = MKPointAnnotation()
        let mauritius = MKPointAnnotation()
        let morocco = MKPointAnnotation()
        let mozambique = MKPointAnnotation()
        let namibia = MKPointAnnotation()
        let niger = MKPointAnnotation()
        let rwanda = MKPointAnnotation()
        let saoTomeandPrincipe = MKPointAnnotation()
        let senegal = MKPointAnnotation()
        let seychelles = MKPointAnnotation()
        let sierraLeone = MKPointAnnotation()
        let somalia = MKPointAnnotation()
        let southAfrica = MKPointAnnotation()
        let southSudan = MKPointAnnotation()
        let sudan = MKPointAnnotation()
        let swaziland = MKPointAnnotation()
        let tanzania = MKPointAnnotation()
        let togo = MKPointAnnotation()
        let tunisia = MKPointAnnotation()
        let uganda = MKPointAnnotation()
        let zambia = MKPointAnnotation()
        let zimbabwe = MKPointAnnotation()

        nigeria.coordinate = CLLocationCoordinate2D(latitude: 8.0000, longitude: 10.0000)
        nigeria.title = "Nigeria, Africa"
        nigeria.subtitle = "Top News: "
        
        algeria.coordinate = CLLocationCoordinate2D(latitude: 28.0000, longitude: 4.0000)
        algeria.title = "Algeria, Africa"
        algeria.subtitle = "Top News: "
        
        angola.coordinate = CLLocationCoordinate2D(latitude: 8.8333, longitude: 13.3333)
        angola.title = "Angola, Africa"
        angola.subtitle = "Top News: "
        
        benin.coordinate = CLLocationCoordinate2D(latitude: 6.4667, longitude: 2.6000)
        benin.title = "Benin, Africa"
        benin.subtitle = "Top News: "
        
        botswana.coordinate = CLLocationCoordinate2D(latitude: 24.6583, longitude: 25.9083)
        botswana.title = "Botswana, Africa"
        botswana.subtitle = "Top News: "
        
        burkinaFaso.coordinate = CLLocationCoordinate2D(latitude: 12.3333, longitude: 1.6667)
        burkinaFaso.title = "Burkin Faso, Africa"
        burkinaFaso.subtitle = "Top News: "
        
        burundi.coordinate = CLLocationCoordinate2D(latitude: 3.5000, longitude: 30.0000)
        burundi.title = "Burundi, Africa"
        burundi.subtitle = "Top News: "
        
        caboVerde.coordinate = CLLocationCoordinate2D(latitude: 15.1111, longitude: 23.6167)
        caboVerde.title = "Cabo Verde, Africa"
        caboVerde.subtitle = "Top News: "
        
        cameroon.coordinate = CLLocationCoordinate2D(latitude: 3.8667, longitude: 11.5167)
        cameroon.title = "Cameroon, Africa"
        cameroon.subtitle = "Top News: "
        
        centralAfricanRepublic.coordinate = CLLocationCoordinate2D(latitude: 4.3667, longitude: 18.5833)
        centralAfricanRepublic.title = "Central Africa Republic, Africa"
        centralAfricanRepublic.subtitle = "Top News: "
        
        democraticRepublicOfTheCongo.coordinate = CLLocationCoordinate2D(latitude: 28.8800, longitude: 23.6560)
        democraticRepublicOfTheCongo.title = "Democratic Republic of the Congo, Africa"
        democraticRepublicOfTheCongo.subtitle = "Top News: "
        
        cotedIvoire.coordinate = CLLocationCoordinate2D(latitude: 6.8500, longitude: 5.3000)
        cotedIvoire.title = "Coted D'ivoire, Africa"
        cotedIvoire.subtitle = "Top News: "
        
        benin.coordinate = CLLocationCoordinate2D(latitude: 6.4667, longitude: 2.6000)
        benin.title = "Benin, Africa"
        benin.subtitle = "Top News: "
        
        botswana.coordinate = CLLocationCoordinate2D(latitude: 24.6583, longitude: 25.9083)
        botswana.title = "Botswana, Africa"
        botswana.subtitle = "Top News: "
        
        burkinaFaso.coordinate = CLLocationCoordinate2D(latitude: 12.3333, longitude: 1.6667)
        burkinaFaso.title = "Burkin Faso, Africa"
        burkinaFaso.subtitle = "Top News: "
        
        burundi.coordinate = CLLocationCoordinate2D(latitude: 3.5000, longitude: 30.0000)
        burundi.title = "Burundi, Africa"
        burundi.subtitle = "Top News: "
        
        caboVerde.coordinate = CLLocationCoordinate2D(latitude: 15.1111, longitude: 23.6167)
        caboVerde.title = "Cabo Verde, Africa"
        caboVerde.subtitle = "Top News: "
        
        cameroon.coordinate = CLLocationCoordinate2D(latitude: 3.8667, longitude: 11.5167)
        cameroon.title = "Cameroon, Africa"
        cameroon.subtitle = "Top News: "
        
        
        
        
        
        
        
        
        
        let countriesInAfrica = [nigeria, zimbabwe, zambia, uganda, tunisia, togo, tanzania, swaziland, sudan, southAfrica, southSudan, somalia, sierraLeone, seychelles, senegal, saoTomeandPrincipe, rwanda, niger, namibia, mozambique, morocco, mauritania, mauritius, mali, malawi, madagascar, libya, liberia, lesotho, kenya, guinea, guineaBissau, ghana, gambia, gabon, ethiopia, equatorialGuinea, egypt, djibouti, cotedIvoire, eritrea, democraticRepublicOfTheCongo, republicOfTheCongo, comoros, chad, centralAfricanRepublic, cameroon, caboVerde, burundi, burkinaFaso, botswana, benin, angola, algeria]
        
        mapView.addAnnotations(countriesInAfrica)
        
        let myRegion = MKCoordinateRegionMakeWithDistance(nigeria.coordinate, 5500000, 5500000)
        
        mapView.setRegion(myRegion, animated: true)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        let pin = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "pinIdentifier")
        pin.canShowCallout = true
        
        return pin
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
