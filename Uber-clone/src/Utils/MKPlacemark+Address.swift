//
//  MKPlacemark+Address.swift
//  Uber-clone
//
//  Created by Nihad on 11/5/21.
//

import Foundation
import MapKit

extension MKPlacemark {
    var address: String? {
        get {
            guard let subThoroughfare = subThoroughfare,
                  let thoroughfare = thoroughfare,
                  let locality = locality,
                  let adminArea = administrativeArea else {
                return nil
            }

            return "\(subThoroughfare) \(thoroughfare), \(locality), \(adminArea)"
        }
    }
}
