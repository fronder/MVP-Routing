//
//  UserDetailCoordinator.swift
//  MVP Template
//
//  Created by Hasan Abdullaev on 11/05/21.
//

import Foundation

protocol UserDetailCoordinatorListener: CoordinatorListener {
    func handle(_ coordinator: UserDetailCoordinator, event: UserDetailCoordinator.Event)
}

typealias UserDetailCoordinatorRouter = NavigationRouter

final class UserDetailCoordinator: BaseCoordinator<UserDetailCoordinatorRouter, UserDetailCoordinatorListener> {
    private let factory: UserDetailCoordinator.Factory
    
    override init(_ router: UserDetailCoordinatorRouter, listener: UserDetailCoordinatorListener? = nil) {
        self.factory = Factory()
        super.init(router, listener: listener)
    }
    
    override func start() {
        /* Perform any scene using method perform<Name>Scene()
         * performSomeScene()
         
         * Or perform any coordinator using method perform<Name>Coordinator()
         * performSomeCoordinator()
         */
        performUserDetailScene()
    }
    
    private func performUserDetailScene() {
        let scene = factory.userDetailScene(listener: self) as! UserDetailViewController
//        scene.presenter.
        router.push(scene)
    }
    
    private func performSomeCoordinator() {
        /* Initiate new coordinator using current router or create new one, than store it and start it.
         * let coordinator = factory.someCoordinator(listner: self, router: router)
         * store(coordinator)
         * coordinator.start()
         */
    }
}

extension UserDetailCoordinator: UserDetailPresenterListener {
    func handle(_ presenter: UserDetailPresenter, event: UserDetailPresenter.Event) {
        
    }
    
     
 }

extension UserDetailCoordinator: UserDetailCoordinatorListener {
    func handle(_ coordinator: UserDetailCoordinator, event: Event) {
        
    }
    
    
 }
 

extension UserDetailCoordinator {
    enum Event {
        case finished
        //Add Coordinator events
    }
}

extension UserDetailCoordinator: BuildableCoordinator {
    struct InitialParams {
        let router: UserDetailCoordinatorRouter
        let listener: UserDetailCoordinatorListener?
    }
    
    static func build(with params: InitialParams) -> UserDetailCoordinator {
        return .init(params.router, listener: params.listener)
    }
}
