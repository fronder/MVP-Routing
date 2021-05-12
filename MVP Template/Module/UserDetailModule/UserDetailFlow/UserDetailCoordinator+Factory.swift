//
//  UserDetailCoordinator+Factory.swift
//  MVP Template
//
//  Created by Hasan on 11/05/21.
//

import Foundation

extension UserDetailCoordinator {
    class Factory {
        init(/*Services and params of Flow*/) {
            
        }
    }
}

// MARK: - Scenes
extension UserDetailCoordinator.Factory {
    
    func userDetailScene(listener: UserDetailPresenterListener) -> Scene {
        return Builder.Scene<UserDetailViewController>.make(with: .init(listener: listener))
    }
}

// MARK: - Coordinators
extension UserDetailCoordinator.Factory {
    /* Example of SomeCoordinator
     * func SomeCoordinator(listener: SomePresenterListener) -> Coordinator {
     *   return Builder.Scene<SomeCoordinator>.make(with: .init(listener: listener))
     * }
     */
}
