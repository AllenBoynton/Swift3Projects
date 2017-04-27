//
//  Constants.swift
//  RainyShinyCloudy
//
//  Created by Allen Boynton on 4/26/17.
//  Copyright © 2017 ABtech Applications. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"

let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "0e0fbc755f17d01e4fc181b4d1fb968c"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)34.8526\(LONGITUDE)-82.3941\(APP_ID)\(API_KEY)"

let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=34.8526&lon=-82.3941&cnt=10&appid=0e0fbc755f17d01e4fc181b4d1fb968c"
