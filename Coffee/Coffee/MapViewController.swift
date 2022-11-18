//
//  MapViewController.swift
//  Coffee
//
//  Created by Ahmed Elkady on 12/09/2022.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController  , CLLocationManagerDelegate{
    
    @IBOutlet var mapView : MKMapView!
    let manager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        let intialLoc = CLLocation(latitude: 30.005493, longitude: 31.477898)
        setStartingLocation(location: intialLoc, distance: 11000)
        addAnnotation()
        

        
    }
    func setStartingLocation(location : CLLocation , distance:CLLocationDistance){
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: distance, longitudinalMeters: distance)
        mapView.setRegion(region, animated: true)
        mapView.setCameraBoundary(MKMapView.CameraBoundary(coordinateRegion: region), animated: true)
    }
    
    
    func addAnnotation(){
        let pin = MKPointAnnotation()
        pin.coordinate = CLLocationCoordinate2D(latitude: 30.005493, longitude: 31.477898)
        pin.title="Starbucks"
        pin.subtitle = "Coffe shop"
        mapView.addAnnotation(pin)
        
        let pin2 = MKPointAnnotation()
        pin2.coordinate = CLLocationCoordinate2D(latitude: 30.05493, longitude: 31.479898)
        pin2.title="Costa cafe"
        pin2.subtitle = "Coffe shop"
        mapView.addAnnotation(pin2)
        
        
    }
//    override func viewDidAppear(_ animated: Bool) {
//        manager.desiredAccuracy = kCLLocationAccuracyBest
//        manager.delegate = self
//        manager.requestWhenInUseAuthorization()
//        manager.startUpdatingLocation()
//    }
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        if let location = locations.first{
//            manager.startUpdatingLocation()
//            render(location)
//        }
//    }
//
//    func render(_ location: CLLocation){
//        let Coordinate = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
//
//        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
//
//        let region = MKCoordinateRegion(center: Coordinate, span: span)
//        mapView.setRegion(region, animated: true)
//    }

}
