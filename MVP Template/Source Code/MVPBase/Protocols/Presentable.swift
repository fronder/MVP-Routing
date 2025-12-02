//
//  Presentable.swift
//  ReshootPro
//
//  Created by Hasan Abdullaev on 15.02.21.
//

import Foundation

public protocol Presentable: class {
    var scene: Scene { get }
}

public extension Presentable where Self: Scene {
    var scene: Scene { self }
}
