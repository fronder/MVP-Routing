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
