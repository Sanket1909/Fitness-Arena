//
//  DinnerWLViewController.swift
//  FitnessArena
//
//  Created by akshay on 2022-01-18.
//

import UIKit

class DinnerWLViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var name = ["Crispy Cod with Sweet Potato Fries","Sheet-Pan Italian Pork Chops","Butter-Baked Salmon and Asparagus","Seared Ginger-Cumin Swordfish With Blueberry-Avocado Salsa","Zucchini Noodles with Bacon Vinaigrette","Pesto Chicken","Warm Kale-Quinoa Salad","Garam Masala Chicken Skewers","Avocado Soup","One Pot Lemon Herb Chicken and Rice","Easy Pork Chops with Sweet and Sour Glaze","Creamy Chicken Quinoa Broccoli Casserole","Mexican Tortilla Casserole","Simple Sesame Chicken","Harissa and Citrus Baked Salmon","5-Ingredient Butternut Squash, Arugula, and Goat Cheese Pasta","3-Ingredient Salmon","One Skillet Lemon Chicken and Red Potatoes","5-Ingredient Easy White Chicken Chili","12-Minute Peanut Noodles","Crockpot Quinoa Chicken Primavera","One Pot Pasta","ttuccine Carbonara with Green Beans","One Pot Lemon Orzo Shrimp","Skillet Chipotle Chicken Enchilada Bake","Single Serving Tomato Sourdough Soup","Maple-Soy Glazed Salmon","Gnocchi Skillet with Chicken Sausage and Tomatoes","5-Ingredient Chili","Savory Steel Cut Oatmeal",]

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
extension DinnerWLViewController: UITableViewDelegate, UITableViewDataSource {
    
    
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
