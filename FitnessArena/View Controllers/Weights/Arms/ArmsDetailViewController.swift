//
//  ArmsDetailViewController.swift
//  FitnessArena
//
//  Created by Akshay on 2021-12-14.
//

import UIKit

class ArmsDetailViewController: UIViewController {

        
    
    @IBOutlet weak var labeltxt: UILabel!
    @IBOutlet weak var detailList: UITextView!
    var name = ""
    var details = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labeltxt.text = name
        labeltxt.font = labeltxt.font.withSize(38)
        detailList.text = details
        detailList.font = detailList.font?.withSize(16)
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "backSegue", sender: nil)
    }
    
    @IBAction func homeButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "homeSegue", sender: nil)
    }
}
