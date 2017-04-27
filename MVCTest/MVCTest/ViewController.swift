//
//  ViewController.swift
//  MVCTest
//
//  Created by Allen Boynton on 4/18/17.
//  Copyright © 2017 ABtech Applications. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var renameField: UITextField!
    
    @IBOutlet weak var renameBtn: UIButton!
    
    let person = Person(first: "Howie", last: "Mandel")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullName.text = person.fullName
        
        renameBtn.layer.cornerRadius = 5
    }

    @IBAction func renameButton(_ sender: Any) {
        if let txt = renameField.text {
            person.firstName = txt
            fullName.text = person.fullName
        }
    }
}

