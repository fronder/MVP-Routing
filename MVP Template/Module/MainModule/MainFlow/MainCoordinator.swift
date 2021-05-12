//
//  MainCoordinator.swift
//  MVP Template
//
//  Created by Hasan on 07/05/21.
//

import Foundation

protocol MainCoordinatorListener: CoordinatorListener {
    func handle(_ coordinator: MainCoordinator, event: MainCoordinator.Event)
}

typealias MainCoordinatorRouter = NavigationRouter

final class MainCoordinator: BaseCoordinator<MainCoordinatorRouter, MainCoordinatorListener>, TableScreenPresenterListener {
    func handle(_ presenter: TableScreenPresenter, event: TableScreenPresenter.Event) {
        
    }    
    
    private let factory: MainCoordinator.Factory
    
    override init(_ router: MainCoordinatorRouter, listener: MainCoordinatorListener? = nil) {
        self.factory = Factory()
        super.init(router, listener: listener)
    }
    
    override func start() {
        /* Perform any scene using method perform<Name>Scene()
         * performSomeScene()
         
         * Or perform any coordinator using method perform<Name>Coordinator()
         * performSomeCoordinator()
         */
        performMainScene()
    }
    
    private func performMainScene() {
        let scene = factory.mainScene(listener: self)
        router.replaceStack(with: scene)
    }
    
    private func performTableCoordinator() {
        let coordinator = factory.tableScreenCoordinator(router: router)
        store(coordinator)
        coordinator.start()
    }
    
    private func performCollectionCoordinator() {
        let coordinator = factory.collectionScreenCoordinator(router: router)
        store(coordinator)
        coordinator.start()
    }
    
//    private func performSomeCoordinator() {
        /* Initiate new coordinator using current router or create new one, than store it and start it.
         * let coordinator = factory.someCoordinator(listner: self, router: router)
         * store(coordinator)
         * coordinator.start()
         */
//    }
}

// Implement other Presenters and Coordinators listeners
extension MainCoordinator: MainPresenterListener {
    func handle(_ presenter: MainPresenter, event: MainPresenter.Event) {
        switch event {
        case .onTableClick:
            performTableCoordinator()
        case .onCollectionClick:
            performCollectionCoordinator()
        }
    }
}

extension MainCoordinator: MainCoordinatorListener {
    func handle(_ coordinator: MainCoordinator, event: MainCoordinator.Event) {
        
    }
}


extension MainCoordinator {
    enum Event {
        case finished
        //Add Coordinator events
    }
}

extension MainCoordinator: BuildableCoordinator {
    struct InitialParams {
        let router: MainCoordinatorRouter
        let listener: MainCoordinatorListener?
    }
    
    static func build(with params: InitialParams) -> MainCoordinator {
        return .init(params.router, listener: params.listener)
    }
}
