//
//  AbsDetailViewController.swift
//  FitnessArena
//
//  Created by Akshay on 2021-12-14.
//

import UIKit

class AbsDetailViewController: UIViewController {

    @IBOutlet weak var labeltxt: UILabel!
    @IBOutlet weak var detailList: UITextView!
    @IBOutlet weak var imageView: UIImageView!
    
    var name = ""
    var details = ""
    var images = UIImage()
    
    @IBOutlet weak var homeBtn: UIButton!
    @IBOutlet weak var backBtn: UIButton!
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
    @IBAction func backButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "backSegue", sender: nil)
    }
    
    @IBAction func homeButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "homeSegue", sender: nil)
    }
}
