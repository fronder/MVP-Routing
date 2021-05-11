//
//  CollectionScreenViewController.swift
//  MVP Template
//
//  Created by Hasan on 08/05/21.
//

import UIKit

class CollectionScreenViewController: BaseViewController<CollectionScreenView, CollectionScreenPresenter> {
    
}

extension CollectionScreenViewController: CollectionScreenPresenterView {
    func showHUD(animated: Bool) {
        view.showHUD(animated: true)
    }
    
    func showHUD(backgroundColor: UIColor?, tintColor: UIColor?, animated: Bool) {
        
    }
    
    func hideHUD(animated: Bool) {
        view.hideHUD(animated: true)
    }
    
    func reloadData() {
        (view as? CollectionScreenView)?.reloadData()
    }
    
    func setTableViewProvider(_ provider: CollectionViewProvider) {
        (view as? CollectionScreenView)?.setTableViewProvider(provider)
    }
    
    
}

extension CollectionScreenViewController: BuildableScene {
    struct InitialParams {
        let listener: CollectionScreenPresenterListener
    }
    
    static func build(with params: InitialParams) -> CollectionScreenViewController {
        let viewController = StoryboardScene.Main.collectionScreenViewController.instantiate()
        let presenter = CollectionScreenPresenter(
            view: viewController,
            listener: params.listener)
        
        viewController.setPresenter(presenter)
        
        return viewController
    }
}


