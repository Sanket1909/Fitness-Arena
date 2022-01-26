//
//  CustomViewController.swift
//  FitnessArena
//
//  Created by Akshay on 2021-12-14.
//

import UIKit

class CustomViewController: UIViewController {

    @IBOutlet weak var backLabel: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backLabel.setTitle("", for: .normal)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func customBackBtnTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "customBack", sender: nil)
    }
    
}
