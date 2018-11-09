//
//  mycell.swift
//  Animals Zoo
//
//  Created by mino on 5/12/18.
//  Copyright © 2018 mino. All rights reserved.
//

import UIKit

class mycell: UITableViewCell {

    
    
    
    @IBOutlet weak var animalimg: UIImageView!
    
    @IBOutlet weak var animaldesc: UITextView!
    
    @IBOutlet weak var animalname: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
