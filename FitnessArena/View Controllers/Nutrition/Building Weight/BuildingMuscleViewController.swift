//
//  BuildingMuscleViewController.swift
//  FitnessArena
//
//  Created by akshay on 2022-01-18.
//

import UIKit

class BuildingMuscleViewController: UIViewController {

    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var breakfastBtn: UIButton!
    @IBOutlet weak var amSnack: UIButton!
    @IBOutlet weak var lunchBtn: UIButton!
    @IBOutlet weak var pmSnack: UIButton!
    @IBOutlet weak var dinnerBtn: UIButton!
    @IBOutlet weak var proteinBtn: UIButton!
    @IBOutlet weak var preWorkout: UIButton!
    @IBOutlet weak var postWorkout: UIButton!
    @IBOutlet weak var preBedSnack: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.backBtn.setTitle("", for: .normal)
        breakfastBtn.titleLabel?.font = UIFont(name: "...", size: 38 )
        amSnack.titleLabel?.font = UIFont(name: "...", size: 38 )
        lunchBtn.titleLabel?.font = UIFont(name: "...", size: 38 )
        pmSnack.titleLabel?.font = UIFont(name: "...", size: 38 )
        dinnerBtn.titleLabel?.font = UIFont(name: "...", size: 38 )
        proteinBtn.titleLabel?.font = UIFont(name: "...", size: 38 )
        preWorkout.titleLabel?.font = UIFont(name: "...", size: 38 )
        postWorkout.titleLabel?.font = UIFont(name: "...", size: 38 )
        preBedSnack.titleLabel?.font = UIFont(name: "...", size: 38 )
        
        
        breakfastBtn.layer.cornerRadius = 20.0
        amSnack.layer.cornerRadius = 20.0
        lunchBtn.layer.cornerRadius = 20.0
        pmSnack.layer.cornerRadius = 20.0
        dinnerBtn.layer.cornerRadius = 20.0
        proteinBtn.layer.cornerRadius = 20.0
        preWorkout.layer.cornerRadius = 20.0
        postWorkout.layer.cornerRadius = 20.0
        preBedSnack.layer.cornerRadius = 20.0

        
        
        // Do any additional setup after loading the view.
    }
    

  
    @IBAction func backBtn(_ sender: Any) {
        self.performSegue(withIdentifier: "backSegue", sender: nil)
    }
    @IBAction func bfBtnTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "bfSegue", sender: nil)
    }
    @IBAction func amSnackTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "amSnackSegue", sender: nil)
    }
    @IBAction func lunchBtnTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "lunchSegue", sender: nil)
    }
    
    @IBAction func pmSnackBtnTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "pmSnackSegue", sender: nil)
    }
    
    @IBAction func dinnerBtnTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "dinnerSegue", sender: nil)
    }
    
    @IBAction func proteinBtnTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "proteinSegue", sender: nil)
    }
    
    @IBAction func preWorkoutBtnTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "preWorkout", sender: nil)
    }
    
    @IBAction func postWorkoutBtnTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "postWorkout", sender: nil)
    }
    
    @IBAction func preBedSnackBtnTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "preBed", sender: nil)
    }
    
}
