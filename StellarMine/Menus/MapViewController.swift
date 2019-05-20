//
//  MapViewController.swift
//  StellarMine
//
//  Created by Pieter Montoulieu on 5/19/19.
//  Copyright © 2019 Pieter Montoulieu. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {
    
    var currentSystem = 0
    var currentPlanet = 2
    var currentSatellite = 0
    let starMap = StarMap.init()
    
    @IBOutlet weak var systemLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    
        systemLabel.text = starMap.systems[currentSystem].name
    }
}
