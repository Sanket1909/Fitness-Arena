//
//  HomeViewController.swift
//  FitnessArena
//
//  Created by Akshay on 2021-12-13.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var profileButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.profileButton.setTitle("", for: .normal)
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func cardioButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "cardioScreenSegue", sender: nil)
    }
    @IBAction func weightsButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "weightsScreenSegue", sender: nil)
    }
    @IBAction func nutritionButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "nutritionScreenSegue", sender: nil)
    }
    @IBAction func sleepTrackerButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "sleepNutritionScreenSegue", sender: nil)
    }
    @IBAction func customButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "customScreenSegue", sender: nil)
    }
    @IBAction func profileButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "ProfileSegue", sender: nil)
    }
    
}
