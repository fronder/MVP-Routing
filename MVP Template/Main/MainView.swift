//
//  MainView.swift
//  MVP Template
//
//  Created by Hasan on 05/05/21.
//

import UIKit

class MainView: UIView {
    @IBOutlet private weak var moduleNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let animation = CAKeyframeAnimation(keyPath: #keyPath(CALayer.opacity))
        animation.values = [1.0, 0.1, 1.0]
        animation.keyTimes = [0.0, 0.5, 1.0]
        animation.duration = 2.0
        animation.repeatCount = 1_000_000
        moduleNameLabel.layer.add(animation, forKey: nil)
    }
}
