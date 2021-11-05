//
//  User.swift
//  Uber-clone
//
//  Created by Nihad on 1/5/21.
//

import CoreLocation

enum AccountType: Int {
    case passenger
    case driver
}

struct User {

    let fullname: String
    let email: String
    var accountType: AccountType!
    var location: CLLocation?
    let uid: String
    
    init(uid: String, dictionary: [String: Any]) {
        self.uid = uid
        fullname = dictionary["fullname"] as? String ?? ""
        email = dictionary["email"] as? String ?? ""
        
        if let index = dictionary["accountType"] as? Int {
            accountType = AccountType(rawValue: index)
        }
    }
}
