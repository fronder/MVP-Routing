//
//  MainPresenter.swift
//  MVP Template
//
//  Created by Hasan on 05/05/21.
//

import Foundation

protocol MainPresenterView: PresenterView {
    //Add some methods for MainPresenter
}

protocol MainPresenterListener: PresenterListener {
    func handle(_ presenter: MainPresenter, event: MainPresenter.Event)
}

final class MainPresenter: BasePresenter<MainPresenterView, MainPresenterListener> {
    
    //Add some methods for MainPresenterView
}

extension MainPresenter {
    enum Event {
        case onTableClick
        case onCollectionClick
    }
}
