//
//  FirstTableViewCell.swift
//  TableViewTest
//
//  Created by mac on 15/12/23.
//  Copyright © 2015年 yueDi. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell {

    @IBOutlet var titleImageView: UIImageView!
    @IBOutlet var titleNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
