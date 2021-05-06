//
//  Buildable.swift
//  ReshootPro
//
//  Created by Mihail Kosyuhin on 15.02.21.
//

import Foundation

protocol Buildable {
    associatedtype InitialParams
    associatedtype ClassType
    
    static func build(with params: InitialParams) -> ClassType
}

protocol BuildableScene: Buildable where ClassType: Scene {
    
}

protocol BuildableCoordinator: Buildable where ClassType: Coordinator {
    
}

protocol BuildableRouter: Buildable where ClassType: Router {
    
}
