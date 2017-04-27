//
//  RoundedImageView.swift
//  MVCTest
//
//  Created by Allen Boynton on 4/18/17.
//  Copyright © 2017 ABtech Applications. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {

    override func awakeFromNib() {
        self.layer.cornerRadius = 5
        self.clipsToBounds = true
    }

}
