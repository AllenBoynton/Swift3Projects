//
//  ViewController.swift
//  MiraclePill
//
//  Created by Allen Boynton on 4/12/17.
//  Copyright © 2017 ABtech Applications. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var pillLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var streetLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    
    @IBOutlet weak var stateButton: UIButton!
    @IBOutlet weak var buyNowButton: UIButton!
    @IBOutlet weak var doneButton: UIButton!
    
    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var successView: UIView!
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var streetTF: UITextField!
    @IBOutlet weak var cityTF: UITextField!
    @IBOutlet weak var zipTF: UITextField!
    @IBOutlet weak var countryTF: UITextField!
    
    
    // Local constants
    let stateNames = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado",
                      "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois",
                      "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland",
                      "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana",
                      "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York",
                      "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania",
                      "Rhode Island","South Carolina","South Dakota", "Tennessee", "Texas", "Utah",
                      "Vermont", "Virginia","Washington", "West Virginia", "Wisconsin", "Wyoming"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set backgroundColor
//        self.view.backgroundColor = UIColor.purple
        
        // Set picker dataSource
        statePicker.dataSource = self
        statePicker.delegate = self
        
        // Set label text
        pillLabel.text = "MIRACLE PILLS"
        priceLabel.text = "$150"
        fullNameLabel.text = "FULL NAME"
        streetLabel.text = "STREET ADDRESS"
        cityLabel.text = "CITY"
        stateLabel.text = "STATE"
        zipLabel.text = "Zip Code"
        countryLabel.text = "Country"
        
        // Done button attributes
        doneButton.layer.cornerRadius = 4
    }

    @IBAction func stateButtonPressed(_ sender: UIButton) {
        statePicker.isHidden = false
        zipLabel.isHidden = true
        countryLabel.isHidden = true
        zipTF.isHidden = true
        countryTF.isHidden = true
        buyNowButton.isHidden = true
//        hideViews(hide: true)
    }
    
    // Set how many columns
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // Set how many rows
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return stateNames.count
    }
    
    // Set names of states
    internal func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return stateNames[row]
    }
    
    // Method to select row
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        stateButton.setTitle(stateNames[row], for: UIControlState.normal)
        statePicker.isHidden = true
        zipLabel.isHidden = false
        countryLabel.isHidden = false
        zipTF.isHidden = false
        countryTF.isHidden = false
        buyNowButton.isHidden = false
//        hideViews(hide: false)
    }
    
    @IBAction func buyButton(_ sender: UIButton) {
        successView.isHidden = false
    }
    
    @IBAction func doneBtn(_ sender: UIButton) {
        successView.isHidden = true
        nameTF.text = ""
        streetTF.text = ""
        cityTF.text = ""
        zipTF.text = ""
        countryTF.text = ""
    }
    
    // Hide method to minimize code
//    func hideViews(hide: Bool) {
//        zipLabel.isHidden = true
//        countryLabel.isHidden = true
//        zipTF.isHidden = true
//        countryTF.isHidden = true
//        buyNowButton.isHidden = true
//    }
}

