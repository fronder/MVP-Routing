//
//  UserCollectionViewCell.swift
//  MVP Template
//
//  Created by Hasan Abdullaev on 10/05/21.
//

import UIKit
import Kingfisher

class UserCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    
    func setModel(model: UserCellViewModel) {
        avatarImageView.kf.indicatorType = .activity
        avatarImageView.kf.setImage(with: model.thumbnailUrl,
                                    placeholder: Asset.icPersonPlaceholder.image)
        nameLabel.text = model.name
        addressLabel.text = model.address
        phoneLabel.text = model.phone
    }
}
