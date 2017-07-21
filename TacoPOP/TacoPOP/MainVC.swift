//
//  MainVC.swift
//  TacoPOP
//
//  Created by Allen Boynton on 7/20/17.
//  Copyright © 2017 Allen Boynton. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var headerView: HeaderView!

    override func viewDidLoad() {
        super.viewDidLoad()

        headerView.addDropShadow()
    }

}
