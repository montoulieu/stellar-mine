import UIKit

class TitleViewController: UIViewController {

    let starMap = StarMap.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for system in starMap.systems {
            print(system.name)
        }
    }
    
    @IBAction func eraseGameData() {
        UserDefaults.standard.set(0, forKey: "credits")
        UserDefaults.standard.set(0, forKey: "resources")
        
        let title = "Game Data Erased"
        let message = "So long game data"
        let alert = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        let action = UIAlertAction(title: "COOL", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}

