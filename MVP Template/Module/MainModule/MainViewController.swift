//
//  MainViewController.swift
//  MVP Template
//
//  Created by Hasan Abdullaev on 05/05/21.
//

import UIKit

class MainViewController: BaseViewController<MainView, MainPresenter> {
    
    @IBAction func showTableDidClick(_ sender: Any) {
        presenter.listener?.handle(.init(view: self), event: .onTableClick)
    }
    
    @IBAction func onCollectionDidClick(_ sender: Any) {
        presenter.listener?.handle(.init(view: self), event: .onCollectionClick)
    }
}

extension MainViewController: MainPresenterView {
    
}

extension MainViewController: BuildableScene {
    struct InitialParams {
        let listener: MainPresenterListener
    }
    
    static func build(with params: InitialParams) -> MainViewController {
        let viewController = StoryboardScene.Main.initialScene.instantiate()
        let presenter = MainPresenter(
            view: viewController,
            listener: params.listener
        )

        viewController.setPresenter(presenter)

        return viewController
    }
}
