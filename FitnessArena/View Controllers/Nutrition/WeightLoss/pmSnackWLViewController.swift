//
//  pmSnackWLViewController.swift
//  FitnessArena
//
//  Created by akshay on 2022-01-18.
//

import UIKit

class pmSnackWLViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var name = ["White Beans And Olive Tapenade","Protein Cookie Dough","Dates And Pistachios","Almond Joy Protein Balls","Edamame with sea salt","Baked Kale Chips","PB-Chocolate Apple 'Nachos'","Chocolate-Covered Banana Pops","Microwave Egg Taco","Vitamin C Tropical Green Smoothie","Roasted Chickpeas","Avocado Chocolate Mousse","Almond Butter Crackers","Fruit Salad With Citrus Mint Dressing ","Homemade Popcorn","Banana Mocha Smoothie","DIY Ranch Dip With Veggies","Garlic Dill Sunflower Dip","Cottage Cheese With Almonds And Honey","Golden Milk Snack Bites","Jicama Sticks And Guacamole","Creamy Dragon Fruit Smoothie Bowl","Beef Or Turkey Jerky With Raisins","Sugar-Free Coconut Carob Bars","Pear And String Cheese","Watermelon Sashimi","Blueberry And Peach Green Tea Popsicles","Cajun-Spiced Savory Trail Mix","Homemade Chocolate Chip Granola Bars","5-Minute Healthy Strawberry Frozen Yogurt","Banana Ice Cream","Pumpkin Pie Dip","Coconut Lime Raspberry Chia Pudding","Cranberry Pistachio Dark Chocolate Bark","Simple Vegan Broccoli Soup","Protein-Packed Avocado Toast","Apple Dippers","Savory Snack Plate","Pumpkin Protein Cookies","Peanut Butter Energy Bites"]

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

extension pmSnackWLViewController: UITableViewDelegate, UITableViewDataSource {
    
    
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
