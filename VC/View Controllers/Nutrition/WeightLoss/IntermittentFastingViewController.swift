//
//  IntermittentFastingViewController.swift
//  FitnessArena
//
//  Created by akshay on 2022-01-18.
//

import UIKit

class IntermittentFastingViewController: UIViewController {

    @IBOutlet weak var detailsList: UITextView!
    @IBOutlet weak var backBtn: UIButton!
    
    
    var details =
    """
Intermittent fasting is a dietary strategy that cycles between periods of fasting and eating.

Various forms exist, including the 16/8 method, which involves limiting your calorie intake to 8 hours per day, and the 5:2 method, which restricts your daily calorie intake to 500–600 calories twice per week.
    
How it works:
Intermittent fasting restricts the time you’re allowed to eat, which is a simple way to reduce your calorie intake. This can lead to weight loss — unless you compensate by eating too much food during allowed eating periods.
    
Weight loss:
In a review of studies, intermittent fasting was shown to cause 3–8% weight loss over 3–24 weeks, which is a significantly greater percentage than other methods.

The same review showed that this way of eating may reduce waist circumference by 4–7%, which is a marker for harmful belly fat.
   
Other studies found that intermittent fasting can increase fat burning while preserving muscle mass, which can improve metabolism.
    
Other benefits: Intermittent fasting has been linked to anti-aging effects, increased insulin sensitivity, improved brain health, reduced inflammation, and many other benefits.

Downsides:
In general, intermittent fasting is safe for most healthy adults.
    
That said, those sensitive to drops in their blood sugar levels, such as some people with diabetes, low weight, or an eating disorder, as well as pregnant or breastfeeding women, should talk to a health professional before starting intermittent fasting.
"""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backBtn.setTitle("", for: .normal)
        self.detailsList.text = details

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtnTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "backSegue", sender: nil)
    }
}
