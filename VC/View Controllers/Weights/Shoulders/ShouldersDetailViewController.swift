//
//  ShouldersDetailViewController.swift
//  FitnessArena
//
//  Created by Akshay on 2021-12-14.
//

import UIKit

class ShouldersDetailViewController: UIViewController {

    @IBOutlet weak var labeltxt: UILabel!
    @IBOutlet weak var detailList: UITextView!
    @IBOutlet weak var imageView: UIImageView!
    
    var name = ""
    var details = ""
    var images = UIImage()
    
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var homeBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.backBtn.setTitle("", for: .normal)
        self.homeBtn.setTitle("", for: .normal)
        labeltxt.text = name
        labeltxt.font = labeltxt.font.withSize(38)
        detailList.text = details
        detailList.font = detailList.font?.withSize(16)
        imageView.image = images
        
        
    }
    @IBAction func homeButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "homeSegue", sender: nil)
    }
    @IBAction func backButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "backSegue", sender: nil)
    }
}

