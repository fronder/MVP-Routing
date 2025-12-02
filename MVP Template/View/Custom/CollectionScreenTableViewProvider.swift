//
//  CollectionScreenTableViewProvider.swift
//  MVP Template
//
//  Created by Hasan Abdullaev on 10/05/21.
//

import Foundation
import UIKit

class CollectionScreenTableViewProvider: NSObject, CollectionViewProvider {
    
    var items = [UserCellViewModel]()
    let configuration: TableScreenTableViewProvider.Configuration
    
    
    init(configuration: TableScreenTableViewProvider.Configuration = TableScreenTableViewProvider.Configuration()) {
        self.configuration = configuration
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: UserCollectionViewCell.reuseIdentifier, for: indexPath) as? UserCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.setModel(model: items[indexPath.row])
        
        return cell
    }
    
    
}

extension CollectionScreenTableViewProvider: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        10.0
    }
}
