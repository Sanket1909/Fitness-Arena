//
//  amSnackWLViewController.swift
//  FitnessArena
//
//  Created by akshay on 2022-01-18.
//

import UIKit

class amSnackWLViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var name = ["Popcorn","Nuts","Dark Chocolate","Dates","Grapes","Cottage Cheese","Avocado","Fresh Veggies","Hummus","Beans","Whole-Grain Crackers","Greek Yogurt","Nut Butters","Oatmeal","Kale Smoothie","Spinach Smoothie","Chia Seeds","Raspberries","Watermelon","Pears","Trail Mix","Crunchy Chickpeas","Cauliflower","Bananas","Carrots","Double Chocolate Banana Bread Bars","Air Fryer Tostones","Healthy Carrot Cake Oatmeal Cookies","Sliced Tomato With A Sprinkle Of Feta And Olive Oil","No-Bake Superfood Energy Bars","Shrimp And Cocktail Sauce","Chunky Healthy Granola","Baby Carrots With Everything Hummus","Vegetarian Black Bean Taco Cups","Banana Split","Green Goddess Hummus","Egg On Toast","Crispy sweet potato fries","Chocolate Milk","Peach And Honey Popsicles" ]
    
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
extension amSnackWLViewController: UITableViewDelegate, UITableViewDataSource {
    
    
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
