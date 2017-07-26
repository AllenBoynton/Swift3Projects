//
//  DataService.swift
//  TacoPOP
//
//  Created by Allen Boynton on 7/20/17.
//  Copyright © 2017 Allen Boynton. All rights reserved.
//

import Foundation

// Singleton - allows one instance to access data from anywhere
class DataService {
    static let instance = DataService()
    
    var tacoArray: Array<Taco> = []
    
    func loadTacoData() {
        // Chicken tacos
        
    }
}
