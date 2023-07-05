//
//  MenuTableViewCell.swift
//  Side_Menu_Pod
//
//  Created by PHN MAC 1 on 05/06/23.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
