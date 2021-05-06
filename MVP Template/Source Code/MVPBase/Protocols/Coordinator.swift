//
//  Coordinator.swift
//  ReshootPro
//
//  Created by Mihail Kosyuhin on 15.02.21.
//

import Foundation

protocol Coordinator: class {
    func start()
    func finish()
    
    func store(_ coordinator: Coordinator)
    func free(_ coordinator: Coordinator)
}


protocol CoordinatorListener: Listener {
    
}

