//
//  SleepTrackerViewController.swift
//  FitnessArena
//
//  Created by Akshay on 2021-12-14.
//

import UIKit

class SleepTrackerViewController: UIViewController {

    @IBOutlet weak var backLabel: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backLabel.setTitle("", for: .normal)

        // Do any additional setup after loading the view.
    }
    @IBAction func sleepTrackerBackBtnTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "sleepTrackerBack", sender: nil)
        
    }
}
