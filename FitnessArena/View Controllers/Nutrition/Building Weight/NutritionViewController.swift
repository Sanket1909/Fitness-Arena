//
//  nutritionViewController.swift
//  FitnessArena
//
//  Created by Akshay on 2021-12-14.
//

import UIKit

class NutritionViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var name = ["Protein","Carbohydrates","Vitamins","Fats", "Minerals", "Water"]
    
    
    var detailsname = ["""
                       • Lean meats – beef, lamb, veal, pork, kangaroo
                       
                       • Poultry – chicken, turkey, duck, emu, goose, bush birds
                       
                       • Fish and seafood – fish, prawns, crab, lobster, mussels, oysters, scallops, clams
                       
                       • Eggs
                       
                       • Dairy products – milk, yoghurt (especially Greek yoghurt), cheese (especially cottage cheese)
                       
                       • Nuts (including nut pastes) and seeds – almonds, pine nuts, walnuts, macadamias, hazelnuts, cashews, pumpkin seeds, sesame seeds, sunflower seeds
                       
                       • Legumes and beans – all beans, lentils, chickpeas, split peas, tofu.
                       """,
                       
                       
                        """
                        • Beans and legumes, such as black beans, chickpeas, lentils and kidney beans.
                        
                        • Fruits, such as apples, berries and melons.
                        
                        • Whole-grain products, such as brown rice, oatmeal and whole-wheat bread and pasta.
                        
                        • Vegetables, such as corn, lima beans, peas and potatoes.
                        """,
                       """
                       • Vitamin A — carrots, sweet potatoes, spinach, kale
                       
                       • Vitamin B12 — meat, poultry,
                       
                       • Vitamin E — nuts, seeds, vegetable oils
                       
                       • Vitamin C — Oranges, strawberries, tomatoes, kiwi, broccoli, and red and green bell peppers.
                       """,
                       
                       """
                       
                       • Nuts
                       
                       • Dried fruit
                       
                       • Chia seeds
                       
                       • Fresh berries
                       
                       • Homemade granola
                       """,
                       
                       
                       """
• Nuts and seeds

• Shellfish

• Cruciferous vegetables

• Organ meats

• Eggs

• Beans

• Cocoa

• Avocados
""",
                       
                       """
• Men: 3.7 liters/day

• Women: 2.7 liters/day
"""]
    
    @IBOutlet weak var backLabel: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backLabel.setTitle("", for: .normal)
        tableView.delegate = self
        tableView.dataSource = self
        //tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = false
        //tableView.rowHeight = 50.0
        //tableView.coordinateSpace = 10
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "NutritionDetails") as? NutritionDetailViewController{
            vc.nutritionName = self.name[indexPath.row]
            vc.nutritiondetails = self.detailsname[indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        
    }
    
    @IBAction func nutritionBackBtnTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "backSegue", sender: nil)
    }
}
extension NutritionViewController: UITableViewDelegate, UITableViewDataSource {
    
    
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
        
        // Configure the cell...
        
        //  cell.frame.divided(atDistance: 10, from: CGRectEdge(x: 20, y: 20, width: 100, height: 100))
        
       // cell.viewContain.backgroundColor = .systemTeal
        //cell.viewContain.layer.cornerRadius = 10
        
       // cell.viewContain.frame = cell.viewContain.frame.inset(by: UIEdgeInsets(top:10, left: 10, bottom: 10, right: 10))
        //cell.viewContain.layer.cornerRadius = cell.viewContain.frame.height / 2
        
        
        cell.lblTxt.text = self.name[indexPath.row]
        cell.img.image = UIImage(named: name[indexPath.row])
        // cell.viewContain.layer.cornerRadius = cell.img.frame.height / 2
        
        return cell
    }
    
    
}
