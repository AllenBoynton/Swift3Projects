//
//  Pokemon.swift
//  PokeDex
//
//  Created by Allen Boynton on 4/27/17.
//  Copyright © 2017 ABtech Applications. All rights reserved.
//

import UIKit
import Alamofire

class Pokemon {
    
    var _name: String!
    var _pokedexId: Int!
    
    var name: String {
        return _name
    }
    
    var pokedexId: Int {
        return _pokedexId
    }
    
    init(name: String, pokedexId: Int) {
        _name = name
        _pokedexId = pokedexId
        
        self._pokemonURL = "\(URL_BASE)\(URL_POKEMON)\(self.pokedexId)/"
    }
    
    func downloadPokemonDetail(completed: @escaping DownloadComplete) {
        
        Alamofire.request(_pokemonURL).responseJSON { response in
            
            if let dict = response.result.value as? Dictionary<String, AnyObject> {
                
                if let weight = dict["weight"] as? String {
                    self._weight = weight
                }
                
                if let height = dict["height"] as? String {
                    self._height = height
                }
                
                if let attack = dict["attack"] as? Int {
                    self._attack = attack
                }
                
                if let defense = dict["defense"] as? Int {
                    self._defense = defense
                }
            }
    }
}
