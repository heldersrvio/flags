//
//  TableViewCell.swift
//  Flags
//
//  Created by Helder on 19/06/20.
//  Copyright © 2020 Helder de Melo Sérvio Filho. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var countryFlagImg: UIImageView!
    @IBOutlet weak var countryName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
