//
//  WeatherVC.swift
//  RainyShinyCloudy
//
//  Created by Allen Boynton on 4/25/17.
//  Copyright © 2017 ABtech Applications. All rights reserved.
//

import UIKit
import Alamofire

let weatherCell = "weatherCell"

class WeatherVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var currentWeather: CurrentWeather!
    var forecast: Forecast!
    var forecasts = [Forecast]()

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var currentImage: UIImageView!
    @IBOutlet weak var currentWeatherLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        currentWeather = CurrentWeather()
        
        currentWeather.downloadWeatherDetails {
            // Code to update UI
            self.downloadForecastData {
                self.updateMainUI()
            }
        }
    }
    
    func downloadForecastData(completed: @escaping DownloadComplete) {
        // Downloading forecast weather data for tableview
        let forecastURL = URL(string: FORECAST_URL)!
        Alamofire.request(forecastURL).responseJSON { response in
            let result = response.result
            
            if let dict = result.value as? Dictionary<String, AnyObject> {
                
                if let list = dict["list"] as? [Dictionary<String, AnyObject>] {
                    
                    for obj in list {
                        let forecast = Forecast(weatherDict: obj)
                        self.forecasts.append(forecast)
                        print(obj)
                    }
                    self.forecasts.remove(at: 0)
                    self.tableView.reloadData()
                }
            }
            completed()
        }
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return forecasts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: weatherCell, for: indexPath) as? WeatherCell {
            let forecast = forecasts[indexPath.row]
            cell.configureCell(forecast: forecast)
            return cell
        }
        else {
            return WeatherCell()
        }
        
    }
    
    func updateMainUI() {
        dateLabel.text = currentWeather.date
        tempLabel.text = "\(currentWeather.currentTemp)°"
        locationLabel.text = currentWeather.cityName
        currentImage.image = UIImage(named: currentWeather.weatherType)
        currentWeatherLabel.text = currentWeather.weatherType
    }
}








