//
//  TableScreenViewController.swift
//  MVP Template
//
//  Created by Hasan on 08/05/21.
//

import UIKit

class TableScreenViewController: BaseViewController<TableScreenView, TableScreenPresenter> {
    
}

extension TableScreenViewController: TableScreenPresenterView {
    func reloadData() {
        (view as? TableScreenView)?.reloadData()
    }
    
    func setTableViewProvider(_ provider: TableViewProvider) {
        (view as? TableScreenView)?.setTableViewProvider(provider)
    }
        
    func showHUD(animated: Bool) {
        view.showHUD(animated: true)
    }
    
    func showHUD(backgroundColor: UIColor?, tintColor: UIColor?, animated: Bool) {
        
    }
    
    func hideHUD(animated: Bool) {
        view.hideHUD(animated: true)
    }
}

extension TableScreenViewController {
    
    
    
}

extension TableScreenViewController: BuildableScene {
    struct InitialParams {
        let listener: TableScreenPresenterListener
    }
    
    static func build(with params: InitialParams) -> TableScreenViewController {
        let viewController = StoryboardScene.Main.tableScreenViewController.instantiate()
        let presenter = TableScreenPresenter(
            view: viewController,
            listener: params.listener)
        
        viewController.setPresenter(presenter)
        
        return viewController
    }
}
