//
//  CelestialBody.swift
//  StellarMine
//
//  Created by Pieter Montoulieu on 5/19/19.
//  Copyright © 2019 Pieter Montoulieu. All rights reserved.
//

import UIKit

class CelestialBody {
    let name: String
    let mass: Double
    let elements: [String]
    
    init(name: String, mass: Double, elements: [String]) {
        self.name = name
        self.mass = mass
        self.elements = elements
    }
}
