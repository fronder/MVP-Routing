//
//  CollectionScreenCoordinator.swift
//  MVP Template
//
//  Created by Hasan Abdullaev on 08/05/21.
//

import Foundation

protocol CollectionScreenCoordinatorListener: CoordinatorListener {
    func handle(_ coordinator: CollectionScreenCoordinator, event: CollectionScreenCoordinator.Event)
}

typealias CollectionScreenCoordinatorRouter = NavigableRouter

final class CollectionScreenCoordinator: BaseCoordinator<CollectionScreenCoordinatorRouter, CollectionScreenCoordinatorListener> {
    private let factory: CollectionScreenCoordinator.Factory
    
    override init(_ router: CollectionScreenCoordinatorRouter, listener: CollectionScreenCoordinatorListener? = nil) {
        self.factory = Factory()
        super.init(router, listener: listener)
    }
    
    override func start() {
        /* Perform any scene using method perform<Name>Scene()
         * performSomeScene()
         
         * Or perform any coordinator using method perform<Name>Coordinator()
         * performSomeCoordinator()
         */
        performScene()
    }
    
    private func performScene() {
        /* Initiate new scene and show it using router's methods
         * let scene = factory.someScene(listener: self)
         * router.replaceStack(with: scene)
         */
        let scene = factory.collectionScreenScene(listener: self)
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


extension CollectionScreenCoordinator: CollectionScreenPresenterListener {
    func handle(_ presenter: CollectionScreenPresenter, event: CollectionScreenPresenter.Event) {
        
    }
}

extension CollectionScreenCoordinator: CollectionScreenCoordinatorListener {
    func handle(_ coordinator: CollectionScreenCoordinator, event: CollectionScreenCoordinator.Event) {
        
    }
}


extension CollectionScreenCoordinator {
    enum Event {
        case finished
        //Add Coordinator events
    }
}

extension CollectionScreenCoordinator: BuildableCoordinator {
    struct InitialParams {
        let router: CollectionScreenCoordinatorRouter
        let listener: CollectionScreenCoordinatorListener?
    }
    
    static func build(with params: InitialParams) -> CollectionScreenCoordinator {
        return .init(params.router, listener: params.listener)
    }
}
