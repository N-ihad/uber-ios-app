//
//  LocationHandler.swift
//  Uber-clone
//
//  Created by Nihad on 1/5/21.
//

import CoreLocation

final class LocationHandler: NSObject, CLLocationManagerDelegate {
    
    static let shared = LocationHandler()

    private var location: CLLocation?
    var locationManager: CLLocationManager!
    
    override init() {
        super.init()
        
        locationManager = CLLocationManager()
        locationManager.delegate = self
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        if manager.authorizationStatus == .authorizedWhenInUse {
            locationManager.requestWhenInUseAuthorization()
        }
    }
}
