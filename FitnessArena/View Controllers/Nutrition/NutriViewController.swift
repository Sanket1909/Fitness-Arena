//
//  NutriViewController.swift
//  FitnessArena
//
//  Created by akshay on 2022-01-18.
//

import UIKit

class NutriViewController: UIViewController {

    @IBOutlet weak var weightLossButton: UIButton!
    @IBOutlet weak var buildingMuscleButton: UIButton!
    @IBOutlet weak var backBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backBtn.setTitle("", for: .normal)
        weightLossButton.titleLabel?.font = UIFont(name: "...", size: 38 )
        buildingMuscleButton.titleLabel?.font = UIFont(name: "...", size: 38)
        
        
        weightLossButton.layer.cornerRadius = 25.0
        buildingMuscleButton.layer.cornerRadius = 25.0

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func backButton(_ sender: Any) {
        self.performSegue(withIdentifier: "backSegue", sender: nil)
    }
    
    @IBAction func weightLossBtnTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "weightLoss", sender: nil)
    }
    
    @IBAction func buildingMuscleBtnTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "buildingMuscle", sender: nil)
    }
}
