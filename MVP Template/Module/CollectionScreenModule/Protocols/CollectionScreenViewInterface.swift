//
//  CollectionScreenViewInterface.swift
//  MVP Template
//
//  Created by Hasan on 10/05/21.
//

import Foundation

protocol CollectionScreenViewInterface: class {
    func reloadData()
    func setTableViewProvider(_ provider: CollectionViewProvider)
}
