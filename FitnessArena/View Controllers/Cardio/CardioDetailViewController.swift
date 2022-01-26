//
//  CardioDetailViewController.swift
//  FitnessArena
//
//  Created by Akshay on 2021-12-14.
//

import UIKit

class CardioDetailViewController: UIViewController {

    
    @IBOutlet weak var labeltxt: UILabel!
    @IBOutlet weak var detailList: UITextView!
    @IBOutlet weak var backLabel: UIButton!
    @IBOutlet weak var homeLabel: UIButton!
    
    
    
    var name = ""
    var details = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backLabel.setTitle("", for: .normal)
        self.homeLabel.setTitle("", for: .normal)

        // Do any additional setup after loading the view.
        labeltxt.text = name
        labeltxt.font = labeltxt.font.withSize(38)
        detailList.text = details
        detailList.font = detailList.font?.withSize(16)
    }
    
    @IBAction func cardioDetailBackButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "homeButtonSegue", sender: nil)
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "backSegue", sender: nil)
    }
    

}
