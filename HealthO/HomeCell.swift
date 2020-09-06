//
//  HomeCell.swift
//  HealthO
//
//  Created by kashee kushwaha on 17/05/20.
//  Copyright © 2020 kashee kushwaha. All rights reserved.
//

import UIKit

class HomeCell: UITableViewCell {

    @IBOutlet weak var rectangleView: UIView!
    
    @IBOutlet weak var criticalLbl: UILabel!
    
    @IBOutlet weak var xrayLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        rectangleView.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
