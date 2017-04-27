//
//  WeatherCell.swift
//  RainyShinyCloudy
//
//  Created by Allen Boynton on 4/27/17.
//  Copyright © 2017 ABtech Applications. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var weatherTypeLabel: UILabel!
    @IBOutlet weak var highTempLabel: UILabel!
    @IBOutlet weak var lowTempLabel: UILabel!

    func configureCell(forecast: Forecast) {
        lowTempLabel.text = "Low: \(forecast.lowTemp)°"
        highTempLabel.text = "High: \(forecast.highTemp)°"
        weatherTypeLabel.text = forecast.weatherType
        weatherIcon.image = UIImage(named: forecast.weatherType)
        dayLabel.text = forecast.date
    }
}
