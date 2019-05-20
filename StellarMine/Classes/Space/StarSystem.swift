//
//  StarSystem.swift
//  StellarMine
//
//  Created by Pieter Montoulieu on 5/19/19.
//  Copyright © 2019 Pieter Montoulieu. All rights reserved.
//

import UIKit

class StarSystem {
    let name: String
    let planets: [CBPlanet]
    let playerLevelMinimum: Int
    let shipLevelMinimum: Int
    
    init(name: String, planets: [CBPlanet], playerLevelMinimum: Int, shipLevelMinimum: Int) {
        self.name = name
        self.planets = planets
        self.playerLevelMinimum = playerLevelMinimum
        self.shipLevelMinimum = shipLevelMinimum
    }
}
