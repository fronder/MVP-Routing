//
//  UserTableViewCell.swift
//  MVP Template
//
//  Created by Hasan on 10/05/21.
//

import UIKit

class UserTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    
    func setModel(model: UserCellViewModel) {
        nameLabel.text = model.name
        addressLabel.text = model.address
        phoneLabel.text = model.phone
    }
}
