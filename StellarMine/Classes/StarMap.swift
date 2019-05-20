//
//  StarMap.swift
//  StellarMine
//
//  Created by Pieter Montoulieu on 5/19/19.
//  Copyright © 2019 Pieter Montoulieu. All rights reserved.
//

import UIKit

class StarMap {
    let systems = [
        "SOL": StarSystem(
            name: "Solar System",
            planets: [
                CBPlanet(
                    satellites: [],
                    name: "Mercury",
                    mass: 0.055,
                    elements: ["Fe"]
                ),
                CBPlanet(
                    satellites: [
                        CBSatellite(
                            name: "Moon",
                            mass: 0.0123000371,
                            elements: ["Ti"]
                        )
                    ],
                    name: "Venus",
                    mass: 0.815,
                    elements: ["Fe"]
                ),
                CBPlanet(
                    satellites: [
                        CBSatellite(
                            name: "Moon",
                            mass: 0.0123000371,
                            elements: ["Fe", "Ti", "Ni"]
                        )
                    ],
                    name: "Earth",
                    mass: 1,
                    elements: ["Fe"]
                ),
            ],
            playerLevelMinimum: 1,
            shipLevelMinimum: 1
        ),
        "PC": StarSystem(
            name: "Proxima Centuari",
            planets: [
                CBPlanet(
                    satellites: [],
                    name: "Mercury",
                    mass: 0.055,
                    elements: ["Fe"]
                ),
                CBPlanet(
                    satellites: [
                        CBSatellite(
                            name: "Moon",
                            mass: 0.0123000371,
                            elements: ["Ti"]
                        )
                    ],
                    name: "Venus",
                    mass: 0.815,
                    elements: ["Fe"]
                ),
                CBPlanet(
                    satellites: [
                        CBSatellite(
                            name: "Moon",
                            mass: 0.0123000371,
                            elements: ["Fe", "Ti", "Ni"]
                        )
                    ],
                    name: "Earth",
                    mass: 1,
                    elements: ["Fe"]
                ),
            ],
            playerLevelMinimum: 10,
            shipLevelMinimum: 10
        ),
        "YZ": StarSystem(
            name: "YZ Ceti",
            planets: [
                CBPlanet(
                    satellites: [],
                    name: "Mercury",
                    mass: 0.055,
                    elements: ["Fe"]
                ),
                CBPlanet(
                    satellites: [
                        CBSatellite(
                            name: "Moon",
                            mass: 0.0123000371,
                            elements: ["Ti"]
                        )
                    ],
                    name: "Venus",
                    mass: 0.815,
                    elements: ["Fe"]
                ),
                CBPlanet(
                    satellites: [
                        CBSatellite(
                            name: "Moon",
                            mass: 0.0123000371,
                            elements: ["Fe", "Ti", "Ni"]
                        )
                    ],
                    name: "Earth",
                    mass: 1,
                    elements: ["Fe"]
                ),
            ],
            playerLevelMinimum: 20,
            shipLevelMinimum: 20
        )
    ]
}
