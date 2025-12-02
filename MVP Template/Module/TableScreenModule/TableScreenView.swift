//
//  TableScreenView.swift
//  MVP Template
//
//  Created by Hasan Abdullaev on 08/05/21.
//

import UIKit

class TableScreenView: UIView {
    
    @IBOutlet weak var tableView: UITableView!
    
    
}

extension TableScreenView: TableScreenViewInterface {
    func reloadData() {
        tableView.reloadData()
    }
    
    func setTableViewProvider(_ provider: TableViewProvider) {
        tableView.dataSource = provider
        tableView.delegate = provider
    }
    
    
}
