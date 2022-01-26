//
//  weightsViewController.swift
//  FitnessArena
//
//  Created by Akshay on 2021-12-14.
//

import UIKit

class weightsViewController: UIViewController {

    @IBOutlet weak var buttonTxt: UIButton!
    @IBOutlet weak var backLabel: UIButton!
    @IBOutlet weak var chestBtn: UIButton!
    @IBOutlet weak var legsBtn: UIButton!
    @IBOutlet weak var shouldersBtn: UIButton!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var absBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonTxt.titleLabel?.font = UIFont(name: "...", size: 38 )
        chestBtn.titleLabel?.font = UIFont(name: "...", size: 38)
        legsBtn.titleLabel?.font = UIFont(name: "...", size: 38)
        shouldersBtn.titleLabel?.font = UIFont(name: "...", size: 38)
        backBtn.titleLabel?.font = UIFont(name: "...", size: 38)
        absBtn.titleLabel?.font = UIFont(name: "...", size: 38)
        self.backLabel.setTitle("", for: .normal)
        
        buttonTxt.layer.cornerRadius = 25.0
        chestBtn.layer.cornerRadius = 25.0
        legsBtn.layer.cornerRadius = 25.0
        shouldersBtn.layer.cornerRadius = 25.0
        backBtn.layer.cornerRadius = 25.0
        absBtn.layer.cornerRadius = 25.0
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func weightsBackBtnTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "weightBackSegue", sender: nil)
    }
    
    @IBAction func armsButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "armsSegue", sender: nil)
    }
    @IBAction func chestButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "chestSegue", sender: nil)
    }
    @IBAction func legsButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "legsSegue", sender: nil)
    }
    @IBAction func shouldersButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "shouldersSegue", sender: nil)
    }
    @IBAction func backButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "backSegue", sender: nil)
    }
    @IBAction func absButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "absSegue", sender: nil)
    }
    
}
