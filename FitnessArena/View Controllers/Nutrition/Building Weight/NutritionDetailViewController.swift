//
//  NutritionDetailViewController.swift
//  FitnessArena
//
//  Created by Akshay on 2021-12-14.
//

import UIKit

class NutritionDetailViewController: UIViewController {

    @IBOutlet weak var nutritionLabel: UILabel!
    @IBOutlet weak var nutritionDetails: UITextView!
    @IBOutlet weak var backLabel: UIButton!
    @IBOutlet weak var homelabel: UIButton!
    
    var nutritionName = ""
    var nutritiondetails = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.backLabel.setTitle("", for: .normal)
        self.homelabel.setTitle("", for: .normal)

        nutritionLabel.text = nutritionName
        nutritionLabel.font = nutritionLabel.font.withSize(38)
        nutritionDetails.text = nutritiondetails
        nutritionDetails.font = nutritionDetails.font?.withSize(16)
    }
    
    @IBAction func nutritionBackTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "nutritionBackSegue", sender: nil)
    }
    
    @IBAction func homeButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "homeSegue", sender: nil)
    }
    

}
