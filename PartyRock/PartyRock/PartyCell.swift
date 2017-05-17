//
//  PartyCell.swift
//  PartyRock
//
//  Created by Allen Boynton on 4/17/17.
//  Copyright © 2017 ABtech Applications. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {
    
    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    func updateUI(partyRock: PartyRock) {
        
        // Creates title in table view row
        videoTitle.text = partyRock.videoTitle
        
        // Run asyc - get pic from web
        let url = URL(string: partyRock.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            }
            catch {
                // Handle the error
            }
        }
        
    }

    
}
