//
//  DemoTableViewCell.swift
//  CoreDataTest
//
//  Created by Rohan Kevin Broach on 6/20/19.
//  Copyright © 2019 rkbroach. All rights reserved.
//

import UIKit

class DemoTableViewCell: UITableViewCell {

  @IBOutlet weak var nameButton: UIButton!
  
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
