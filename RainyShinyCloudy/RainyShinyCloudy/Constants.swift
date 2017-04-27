//
//  Constants.swift
//  RainyShinyCloudy
//
//  Created by Allen Boynton on 4/26/17.
//  Copyright © 2017 ABtech Applications. All rights reserved.
//

import Foundation

    
let API_KEY = "0e0fbc755f17d01e4fc181b4d1fb968c"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=\(API_KEY)"

let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&appid=\(API_KEY)"
