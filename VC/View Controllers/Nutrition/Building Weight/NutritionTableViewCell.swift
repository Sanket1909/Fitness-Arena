//
//  NutritionTableViewCell.swift
//  FitnessArena
//
//  Created by Akshay on 2021-12-14.
//

import UIKit

class NutritionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lblTxt: UILabel!
    @IBOutlet weak var viewContain: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        lblTxt.font = lblTxt.font?.withSize(16)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
