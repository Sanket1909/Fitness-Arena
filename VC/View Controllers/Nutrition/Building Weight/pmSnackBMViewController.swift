//
//  pmSnackBMViewController.swift
//  FitnessArena
//
//  Created by akshay on 2022-01-18.
//

import UIKit

class pmSnackBMViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var name = ["Bananas","Fruit juice","Butter","Cheddar cheese","String cheese","Ice cream","Whole milk","Macadamia nuts","Pecans","Pine nuts","Brazil nuts","Walnuts","Hazelnuts","Peanuts","Almonds","Cashew nuts","Pistachios","Peanut butter","Trail mix","Sunflower seeds","Pumpkin seeds","Sesame seeds","Ground flax seeds","Poppy seeds","Chia seeds","Coconut meat","Avocados"]

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
extension pmSnackBMViewController: UITableViewDelegate, UITableViewDataSource {
    
    
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
