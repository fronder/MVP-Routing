//
//  CollectionScreenCoordinator+Factory.swift
//  MVP Template
//
//  Created by Hasan on 08/05/21.
//

import Foundation

extension CollectionScreenCoordinator {
    class Factory {
        init(/*Services and params of Flow*/) {
            
        }
    }
}

// MARK: - Scenes
extension CollectionScreenCoordinator.Factory {
    
    func collectionScreenScene(listener: CollectionScreenPresenterListener) -> Scene {
        return Builder.Scene<CollectionScreenViewController>.make(with: .init(listener: listener))
    }
}

// MARK: - Coordinators
extension CollectionScreenCoordinator.Factory {
    /* Example of SomeCoordinator
     * func SomeCoordinator(listener: SomePresenterListener) -> Coordinator {
     *   return Builder.Scene<SomeCoordinator>.make(with: .init(listener: listener))
     * }
     */
}
