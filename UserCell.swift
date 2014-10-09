//
//  UserCell.swift
//  tableViewDemo
//
//  Created by Paul L on 10/5/14.
//  Copyright (c) 2014 ICH. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var hometownLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
