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
