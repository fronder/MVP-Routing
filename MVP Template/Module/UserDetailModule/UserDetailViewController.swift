//
//  UserDetailViewController.swift
//  MVP Template
//
//  Created by Hasan Abdullaev on 11/05/21.
//

import UIKit

class UserDetailViewController: BaseViewController<UserDetailView, UserDetailPresenter> {
    
}

extension UserDetailViewController: UserDetailPresenterView {
    
}

extension UserDetailViewController: BuildableScene {
    struct InitialParams {
        let listener: UserDetailPresenterListener
    }
    
    static func build(with params: InitialParams) -> UserDetailViewController {
        let viewController = StoryboardScene.Main.userDetailViewController.instantiate()
        let presenter = UserDetailPresenter(
            view: viewController,
            listener: params.listener)
        
        viewController.setPresenter(presenter)
        
        return viewController
    }
}
