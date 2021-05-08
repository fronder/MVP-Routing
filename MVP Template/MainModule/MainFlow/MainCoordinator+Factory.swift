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
    /* Example of SomeScene
     * func someScene(listener: SomePresenterListener) -> Scene {
     *   return Builder.Scene<SomeViewController>.make(with: .init(listener: listener))
     * }
     */
    func mainScene(listener: MainPresenterListener) -> Scene {
        return Builder.Scene<MainViewController>.make(with: .init(listener: listener))
    }
}

// MARK: - Coordinators
extension MainCoordinator.Factory {
    /* Example of SomeCoordinator
     * func SomeCoordinator(listener: SomePresenterListener) -> Coordinator {
     *   return Builder.Scene<SomeCoordinator>.make(with: .init(listener: listener))
     * }
     */
    func mainCoordinator(router: MainCoordinatorRouter) -> Coordinator {
        return Builder.Coordinator<MainCoordinator>.make(with: .init(router: router, listener: nil))
    }
    
    
}
