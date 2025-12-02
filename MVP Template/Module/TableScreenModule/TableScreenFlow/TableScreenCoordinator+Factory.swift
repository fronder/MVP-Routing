//
//  TableScreenCoordinator+Factory.swift
//  MVP Template
//
//  Created by Hasan Abdullaev on 08/05/21.
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
    
    func userDetailCoordinator(router: UserDetailCoordinatorRouter) -> Coordinator {
        return Builder.Coordinator<UserDetailCoordinator>.make(with: .init(router: router, listener: nil))
        
    }
    
}
