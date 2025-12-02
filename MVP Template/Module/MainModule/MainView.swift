//
//  MainView.swift
//  MVP Template
//
//  Created by Hasan Abdullaev on 05/05/21.
//

import UIKit

class MainView: UIView {
    
    @IBOutlet weak var tableButton: UIButton!
    @IBOutlet weak var collectionButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        tableButton.layer.borderColor = UIColor.systemBlue.cgColor
        collectionButton.layer.borderColor = UIColor.systemBlue.cgColor
    }
}
