//
//  ListViewCell.swift
//  DreamLister
//
//  Created by Allen Boynton on 5/16/17.
//  Copyright © 2017 ABtech Applications. All rights reserved.
//

import UIKit

class ListViewCell: UITableViewCell {

    @IBOutlet weak var dreamImage: UIImageView!
    @IBOutlet weak var itemTitle: UILabel!
    @IBOutlet weak var itemPrice: UILabel!
    @IBOutlet weak var itemDetail: UILabel!
    
    

    func configureCell(item: Item) {
        itemTitle.text = "Tesla Model S"
        itemPrice.text = "$80,000"
        itemDetail.text = "Someday my dreams will come true and I will own this car. Just you wait!"
//        dreamImage.image = UIImage(named: item.item)
    }

}
