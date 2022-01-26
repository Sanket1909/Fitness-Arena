//
//  amSnackBMViewController.swift
//  FitnessArena
//
//  Created by akshay on 2022-01-18.
//

import UIKit

class amSnackBMViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var name = ["Jerky","Fillet smoked pork tenderloin","Canned tuna","Protein bars","Hard-boiled eggs","Greek yogurt","Cottage cheese","Weight gain smoothies","Dark chocolate","Tortilla chips","Granola bars","Whole wheat crackers","Popcorn","Brown rice cakes","Whole grain cereals","Whole wheat pretzels","Gingerbread","Muesli","Whole wheat bread","English muffin","Pancakes","Honey","Jam","Raisins","Medjool dates","Dried figs","Dried apricots","Prunes","Dried peaches"]

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
extension amSnackBMViewController: UITableViewDelegate, UITableViewDataSource {
    
    
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
