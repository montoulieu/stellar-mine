//
//  GameViewController.swift
//  StellarMine
//
//  Created by Pieter Montoulieu on 5/18/19.
//  Copyright © 2019 Pieter Montoulieu. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    
    @IBOutlet weak var scrollMenu: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let navigationBar = navigationController!.navigationBar
        navigationBar.barTintColor = UIColor.black
        navigationBar.isTranslucent = false
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
    }
    
    @IBAction func testing() {
        let title = "Testing"
        let message = "You pressed the testing button"
        let alert = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}
