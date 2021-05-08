//
//  TableScreenCoordinator.swift
//  MVP Template
//
//  Created by Hasan on 08/05/21.
//

import Foundation

protocol TableScreenCoordinatorListener: CoordinatorListener {
    func handle(_ coordinator: TableScreenCoordinator, event: TableScreenCoordinator.Event)
}

typealias TableScreenCoordinatorRouter = NavigableRouter

final class TableScreenCoordinator: BaseCoordinator<TableScreenCoordinatorRouter, TableScreenCoordinatorListener> {
    private let factory: TableScreenCoordinator.Factory
    
    override init(_ router: TableScreenCoordinatorRouter, listener: TableScreenCoordinatorListener? = nil) {
        self.factory = Factory()
        super.init(router, listener: listener)
    }
    
    override func start() {
        performScene()
    }
    
    private func performScene() {
        let scene = factory.tableScreenScene(listener: self)
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


extension TableScreenCoordinator: TableScreenPresenterListener {
    func handle(_ presenter: TableScreenPresenter, event: TableScreenPresenter.Event) {
        
    }
}

extension TableScreenCoordinator: TableScreenCoordinatorListener {
    func handle(_ coordinator: TableScreenCoordinator, event: TableScreenCoordinator.Event) {
        
    }
}

extension TableScreenCoordinator {
    enum Event {
        case finished
        //Add Coordinator events
    }
}

extension TableScreenCoordinator: BuildableCoordinator {
    struct InitialParams {
        let router: TableScreenCoordinatorRouter
        let listener: TableScreenCoordinatorListener?
    }
    
    static func build(with params: InitialParams) -> TableScreenCoordinator {
        return .init(params.router, listener: params.listener)
    }
}
