//
//  CollectionScreenView.swift
//  MVP Template
//
//  Created by Hasan on 08/05/21.
//

import UIKit

class CollectionScreenView: UIView {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
}


extension CollectionScreenView: CollectionScreenViewInterface {
    
    func reloadData() {
        collectionView.reloadData()
    }
    
    func setTableViewProvider(_ provider: CollectionViewProvider) {
        collectionView.dataSource = provider
        collectionView.delegate = provider
    }
}
