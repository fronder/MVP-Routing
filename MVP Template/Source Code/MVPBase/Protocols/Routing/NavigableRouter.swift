//
//  NavigableRouter.swift
//  ReshootPro
//
//  Created by Mihail Kosyuhin on 15.02.21.
//

import Foundation

protocol NavigableRouter: Router {
    func push(_ scene: Scene, animated: Bool)
    func pop(animated: Bool)
    func popToRoot(animated: Bool)
}

extension NavigableRouter {
    func push(_ scene: Scene) {
        push(scene, animated: true)
    }
    
    func pop() {
        pop(animated: true)
    }
    
    func popToRoot() {
        popToRoot(animated: true)
    }
}
