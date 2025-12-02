//
//  ReplacableRouter.swift
//  ReshootPro
//
//  Created by Hasan Abdullaev on 15.02.21.
//

import Foundation

protocol ReplacableRouter: Router {
    func replaceStack(with scene: Scene)
    func replaceStack(with scene: Scene, animated: Bool)
    func replaceStack(with scenes: [Scene], animated: Bool)
}

extension ReplacableRouter {
    func replaceStack(with scene: Scene) {
        replaceStack(with: scene, animated: true)
    }
    
    func replaceStack(with scene: Scene, animated: Bool) {
        replaceStack(with: [scene], animated: true)
    }
}
