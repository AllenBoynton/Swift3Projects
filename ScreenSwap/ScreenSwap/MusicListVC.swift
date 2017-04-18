//
//  MusicListVC.swift
//  ScreenSwap
//
//  Created by Allen Boynton on 4/14/17.
//  Copyright © 2017 ABtech Applications. All rights reserved.
//

import UIKit

// Segue identifiers
let segueTo3rd = "PlaySongVC"

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func backButtonPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func load3rdScreenPressed(_ sender: AnyObject) {
        let songTitle = "Stairway To Heaven"
        performSegue(withIdentifier: segueTo3rd, sender: songTitle)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            if let song = sender as? String {
                destination.selectedSong = song
            }
        }
    }
}
