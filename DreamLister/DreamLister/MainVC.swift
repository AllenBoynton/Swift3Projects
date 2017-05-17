//
//  MainVC.swift
//  DreamLister
//
//  Created by Allen Boynton on 5/16/17.
//  Copyright © 2017 ABtech Applications. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "DreamCell", for: indexPath) as? ListViewCell {
            
            return cell
            
        } else {
            
            return ListViewCell()
        }
    }

}

