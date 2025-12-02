//
//  ReusableView.swift
//  MVP Template
//
//  Created by Hasan Abdullaev on 10/05/21.
//

import Foundation

/// Object, that adopts this protocol, will use identifier that matches name of its class.
protocol ReusableView: class {}

extension ReusableView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
