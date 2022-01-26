//
//  CardioTableViewCell.swift
//  FitnessArena
//
//  Created by Akshay on 2021-12-14.
//

import UIKit

class CardioTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var img: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
