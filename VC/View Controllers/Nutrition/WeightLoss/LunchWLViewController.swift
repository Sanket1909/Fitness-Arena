//
//  LunchWLViewController.swift
//  FitnessArena
//
//  Created by akshay on 2022-01-18.
//

import UIKit

class LunchWLViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var name = ["Italian Panini with Provolone, Peppers, and Arugula","Turkey BLT Salad","Artichoke-Feta Quiche","Fig, Prosciutto, & Goat Cheese Salad","Caprese Sandwich","Chicken Pot Stickers","Asian Chicken Meatballs","Portobello Cheesesteak","3-Cheese Ravioli with Cherry Tomatoes","Chicken Burgers with Sun-dried Tomato Aioli","Chicken Fingers with Chipotle-Honey","Grilled Chicken Salad with Cranberries, Avocado and Goat Cheese","Grilled Cheese and Tomato Soup","Clam Chowder","Red Pepper Alfredo","Cheesesteak Sandwich","Italian Tuna Melt","Gnocchi with Peas and Prosciutto","Meatball Soup","Minestrone with Pesto"]

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
extension LunchWLViewController: UITableViewDelegate, UITableViewDataSource {
    
    
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
