//
//  ViewController.swift
//  location
//
//  Created by Emma Wu on 10/18/16.
//  Copyright © 2016 Emma Wu. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    var locationManager = CLLocationManager()
    var annotation = MKPointAnnotation()
    
    
    override func viewDidLoad() {
        let location = CLLocationCoordinate2D(
            latitude: 39.7503,
            longitude: -104.9492
        )
        let span = MKCoordinateSpanMake(0.05, 0.05)
        //area spand AKA accuratecy
        let region = MKCoordinateRegion (center: location, span: span)
        mapView.setRegion(region, animated: true)
        let annotation = MKPointAnnotation()
        annotation.coordinate=location
        //sets the coordinates of the annotation
        annotation.title="Denver Zoo"
        //Having the title to be Empire State Building
        annotation.subtitle="Close to Natural and Science Museum"
        //the subtitle
        mapView.addAnnotation(annotation)
        //adds the annotation to the mapview
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    //called when a new location value is available
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let span = MKCoordinateSpanMake(0.05, 0.05)
        //defines the area spanned by a map region
        let region = MKCoordinateRegionMake(manager.location!.coordinate, span)
        //region of the map to be displayed
        mapView.setRegion(region, animated: true)
        //animates changing the currently visible region
        
        //annotations
        annotation.coordinate=manager.location!.coordinate
        annotation.title="You are here"
        annotation.subtitle="Latitude: \(manager.location!.coordinate.latitude), Longitude: \(manager.location!.coordinate.longitude)"
        mapView.addAnnotation(annotation)
        
    }
    
    //called when the authorization status for the application changed.
    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        if status==CLAuthorizationStatus.AuthorizedWhenInUse {
            locationManager.startUpdatingLocation()
            //starts the location manager
        }
    }
    
    //called when a location cannot be determined
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        var errorType=String()
        if let clError=CLError(rawValue: error.code) {
            if clError == .Denied {
                errorType="access denied"
                let alert=UIAlertController(title: "Error", message: errorType, preferredStyle: UIAlertControllerStyle.Alert)
                let okAction:UIAlertAction=UIAlertAction(title: "OK", style:UIAlertActionStyle.Default, handler: nil)
                alert.addAction(okAction)
                presentViewController(alert, animated: true, completion: nil)
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

