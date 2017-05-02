//
//  PokeCell.swift
//  PokeDex
//
//  Created by Allen Boynton on 4/27/17.
//  Copyright © 2017 ABtech Applications. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5
    }
    
    func configureCell(pokemon: Pokemon) {
        
        self.pokemon = pokemon
        
        thumbImage.image = UIImage(named: "\(self.pokemon.pokedexId)")
        nameLabel.text = self.pokemon.name.capitalized
        
    }
}
