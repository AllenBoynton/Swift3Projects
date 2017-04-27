//
//  Location.swift
//  RainyShinyCloudy
//
//  Created by Allen Boynton on 4/27/17.
//  Copyright © 2017 ABtech Applications. All rights reserved.
//

import CoreLocation

class Location {
    
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
}
