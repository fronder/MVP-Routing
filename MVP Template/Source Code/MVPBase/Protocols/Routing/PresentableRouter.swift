//
//  PresentableRouter.swift
//  ReshootPro
//
//  Created by Hasan Abdullaev on 15.02.21.
//

import Foundation

protocol PresentableRouter: Router {
    func present(_ scene: Scene, animated: Bool, completion: RouterCompletion?)
    func dismiss(animated: Bool, completion: RouterCompletion?)
}

extension PresentableRouter {
    func present(_ scene: Scene) {
        present(scene, animated: true, completion: nil)
    }
    
    func present(_ scene: Scene, animated: Bool) {
        present(scene, animated: animated, completion: nil)
    }
    
    func dismiss() {
        dismiss(animated: true, completion: nil)
    }
    
    func dismiss(animated: Bool) {
        dismiss(animated: animated, completion: nil)
    }
}
