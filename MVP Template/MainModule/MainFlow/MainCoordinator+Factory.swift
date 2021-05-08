//
//  MainCoordinator+Factory.swift
//  MVP Template
//
//  Created by Hasan on 07/05/21.
//

import Foundation

extension MainCoordinator {
    class Factory {
        init(/*Services and params of Flow*/) {
            
        }
    }
}

// MARK: - Scenes
extension MainCoordinator.Factory {
    func mainScene(listener: MainPresenterListener) -> Scene {
        return Builder.Scene<MainViewController>.make(with: .init(listener: listener))
    }
}

// MARK: - Coordinators
extension MainCoordinator.Factory {
    func mainCoordinator(router: MainCoordinatorRouter) -> Coordinator {
        return Builder.Coordinator<MainCoordinator>.make(with: .init(router: router, listener: nil))
    }
    
    func tableScreenCoordinator(router: TableScreenCoordinatorRouter) -> Coordinator {
        return Builder.Coordinator<TableScreenCoordinator>.make(with: .init(router: router, listener: nil))
    }
}
