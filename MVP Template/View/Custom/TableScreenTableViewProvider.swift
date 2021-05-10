//
//  TableScreenTableViewProvider.swift
//  MVP Template
//
//  Created by Hasan on 10/05/21.
//

import Foundation
import UIKit

class TableScreenTableViewProvider: NSObject, TableViewProvider {
    
    let configuration: Configuration
    var items = [UserCellViewModel]()
    
    init(configuration: Configuration = Configuration()) {
        self.configuration = configuration
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        configuration.numberOfSections
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: UserTableViewCell.reuseIdentifier, for: indexPath) as? UserTableViewCell else {
            return UITableViewCell()
        }
        
        cell.setModel(model: items[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return configuration.heightForRaw
    }
    
}

extension TableScreenTableViewProvider {
    struct Configuration {
        let numberOfSections: Int
        let numberOfRowsInSection: Int
        let heightForRaw: CGFloat
        
        init(numberOfSections: Int = 1, numberOfRawsInSection: Int = 100, heightForRaw: CGFloat = 94) {
            self.numberOfSections = numberOfSections
            self.numberOfRowsInSection = numberOfRawsInSection
            self.heightForRaw = heightForRaw
        }
    }
}
