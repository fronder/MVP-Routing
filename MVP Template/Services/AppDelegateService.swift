//
//  AppDelegateService.swift
//  MVP Template
//
//  Created by Hasan Abdullaev on 06/05/21.
//

import Foundation
import UIKit

/// Responsible for handling business logic, that should be established in AppDelegate
class AppDelegateService {
    
    // MARK: Public properties
    
    /// Root coordinator
    var mainCoordinator: MainCoordinator!
    /// Root window
    let window: UIWindow
    
    
    // MARK: Init
    
    init(window: UIWindow) {
        self.window = window
    }
    
    // MARK: Public methods
    
    func setupAppCoordinator() {
        window.rootViewController = UINavigationController()
        guard let rootNavigationController = window.rootViewController as? UINavigationController else {
            fatalError("Root viewController must be inherited from UINavigationController")
        }
        
        mainCoordinator = Builder.Coordinator<MainCoordinator>
            .make(with:.init(router:.build(with:.init(navigationController: rootNavigationController)),
                          listener: nil))
        mainCoordinator.start()
        window.makeKeyAndVisible()
    }
}
