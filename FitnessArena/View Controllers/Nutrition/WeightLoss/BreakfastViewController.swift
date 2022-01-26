//
//  BreakfastViewController.swift
//  FitnessArena
//
//  Created by akshay on 2022-01-18.
//

import UIKit

class BreakfastViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var name = ["Organic Protein Powder","Wild Salmon","Eggs", "Almond Butter", "Ground Turkey","All Nature Peanut Butter","Black Beans","Chicken Breast","Nitrate-Free Canadian Bacon","Avocados","Spinach","Watermelon","Broccoli","Sweet Potatoes","Plain Oatmeal","Sprouted Grain Toast","Quinoa","Crispy Brown Rice","Flaxseeds","Smoothies"]

    @IBOutlet weak var backBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backBtn.setTitle("", for: .normal)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.showsVerticalScrollIndicator = false
        

        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func backBtnTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "backSegue", sender: nil)
    }
    
}

extension BreakfastViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return name.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NutritionTableViewCell
        cell.lblTxt.text = self.name[indexPath.row]
        return cell
    }
}
