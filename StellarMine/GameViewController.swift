//
//  GameViewController.swift
//  StellarMine
//
//  Created by Pieter Montoulieu on 5/18/19.
//  Copyright © 2019 Pieter Montoulieu. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    var location = "Lunar Spaceport"
    var level = 1
    var exp = 0
    var crewMembers: Float = 3
    var credits: Float = 0
    var resources: Float = 0
    var maxResources: Float = 300
    
    @IBOutlet weak var creditsLabel: UILabel!
    @IBOutlet weak var resourcesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadState()
        
        // Initializes location in title bar
        let navigationBar = navigationController!.navigationBar
        navigationBar.topItem?.title = location
        
        // TODO: Move state saving to AppDelegate
        let notificationCenter = NotificationCenter.default
        notificationCenter.addObserver(self, selector: #selector(appMovedToBackground), name: UIApplication.willResignActiveNotification, object: nil)
        
        let saveTimer = Timer(timeInterval: 1, target: self, selector: #selector(saveState), userInfo: nil, repeats: true)
        RunLoop.current.add(saveTimer, forMode: .common)
        
        let timer = Timer(timeInterval: 0.5, target: self, selector: #selector(acquireResources), userInfo: nil, repeats: true)
        RunLoop.current.add(timer, forMode: .common)
    }
    
    @IBAction func acquireResources() {
        if resources < maxResources {
            resources += (1 + (crewMembers * 0.25)).rounded()
            resourcesLabel.text = "\(Int(resources)) res"
        }
    }
    
    @objc func appMovedToBackground() {
        saveState()
    }
    
    @IBAction func saveState() {
        UserDefaults.standard.set(Int(credits), forKey: "credits")
        UserDefaults.standard.set(Int(resources), forKey: "resources")
    }
    
    func loadState() {
        credits = Float(UserDefaults.standard.integer(forKey: "credits"))
        resources = Float(UserDefaults.standard.integer(forKey: "resources"))
        resourcesLabel.text = "\(Int(resources)) res"
    }
}
