//
//  WeightLossViewController.swift
//  FitnessArena
//
//  Created by akshay on 2022-01-18.
//

import UIKit

class WeightLossViewController: UIViewController {

    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var breakfastBtn: UIButton!
    @IBOutlet weak var amSnack: UIButton!
    @IBOutlet weak var lunchBtn: UIButton!
    @IBOutlet weak var pmSnack: UIButton!
    @IBOutlet weak var DinnerBtn: UIButton!
    @IBOutlet weak var ifBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backBtn.setTitle("", for: .normal)
        breakfastBtn.titleLabel?.font = UIFont(name: "...", size: 38 )
        amSnack.titleLabel?.font = UIFont(name: "...", size: 38 )
        lunchBtn.titleLabel?.font = UIFont(name: "...", size: 38 )
        pmSnack.titleLabel?.font = UIFont(name: "...", size: 38 )
        DinnerBtn.titleLabel?.font = UIFont(name: "...", size: 38 )
        ifBtn.titleLabel?.font = UIFont(name: "...", size: 38 )
        
        
        breakfastBtn.layer.cornerRadius = 20.0
        amSnack.layer.cornerRadius = 20.0
        lunchBtn.layer.cornerRadius = 20.0
        pmSnack.layer.cornerRadius = 20.0
        DinnerBtn.layer.cornerRadius = 20.0
        ifBtn.layer.cornerRadius = 20.0

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButton(_ sender: Any) {
        self.performSegue(withIdentifier: "backSegue", sender: nil)
    }
    
    @IBAction func bfBtnTaped(_ sender: Any) {
        self.performSegue(withIdentifier: "breakfastSegue", sender: nil)
    }
    
    @IBAction func amSnackBtnTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "amSnackSegue", sender: nil)
    }
    
    @IBAction func lunchBtnTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "LunchSegue", sender: nil)
    }
    
    @IBAction func pmSnackBtnTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "pmSnackSegue", sender: nil)
    }
    
    @IBAction func dineerBtnTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "dinnerSegue", sender: nil)
    }
    
    @IBAction func ifBtnTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "ifSegue", sender: nil)
    }
    
}
