//
//  ButtonAction.swift
//  Uber-clone
//
//  Created by Nihad on 11/5/21.
//

import Foundation

enum ButtonAction: CustomStringConvertible {
    case requestRide
    case cancel
    case getDirections
    case pickup
    case dropOff

    var description: String {
        switch self {
        case .requestRide:
            return "CONFIRM UBERX"
        case .cancel:
            return "CANCEL RIDE"
        case .getDirections:
            return "GET DIRECTIONS"
        case .pickup:
            return "PICKUP PASSENGER"
        case .dropOff:
            return "DROP OFF PASSENGER"
        }
    }

    init() {
        self = .requestRide
    }
}
