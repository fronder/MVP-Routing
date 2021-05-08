//
//  TableScreenCoordinator+Factory.swift
//  MVP Template
//
//  Created by Hasan on 08/05/21.
//

import Foundation

extension TableScreenCoordinator {
    class Factory {
        init(/*Services and params of Flow*/) {
            
        }
    }
}

// MARK: - Scenes
extension TableScreenCoordinator.Factory {
    func tableScreenScene(listener: TableScreenCoordinatorListener) -> Scene {
        return Builder.Scene<TableScreenViewController>.make(with: .init(listener: listener as! TableScreenPresenterListener))
    }
}

// MARK: - Coordinators
extension TableScreenCoordinator.Factory {
    /* Example of SomeCoordinator
     * func SomeCoordinator(listener: SomePresenterListener) -> Coordinator {
     *   return Builder.Scene<SomeCoordinator>.make(with: .init(listener: listener))
     * }
     */
}
