//
//  BreakfastBMViewController.swift
//  FitnessArena
//
//  Created by akshay on 2022-01-18.
//

import UIKit

class BreakfastBMViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var name = ["Wholegrain Avocado Toast with Sunny-Side Up","Cheese Omlette with Kale and Mushroom Filling","Creamy Oatmeal Porridge with Banana and Peanut Butter","Mixed Veg Whole Wheat Paratha","Homemade Sweet potato Hash Brown","Tangy Paneer Tikka Sandwich","Tasty Greek Yoghurt Museli Parfait","Spicy Tofu Scramble","Easy Peanut Butter and Jelly Sandwich"]

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
extension BreakfastBMViewController: UITableViewDelegate, UITableViewDataSource {
    
    
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
