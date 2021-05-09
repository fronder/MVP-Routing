//
//  CollectionScreenPresenter.swift
//  MVP Template
//
//  Created by Hasan on 08/05/21.
//

import Foundation

protocol CollectionScreenPresenterView: PresenterView {
    //Add some methods for CollectionScreenPresenter
}

protocol CollectionScreenPresenterListener: PresenterListener {
    func handle(_ presenter: CollectionScreenPresenter, event: CollectionScreenPresenter.Event)
}

final class CollectionScreenPresenter: BasePresenter<CollectionScreenPresenterView, CollectionScreenPresenterListener> {
    
    //Add some methods for CollectionScreenPresenterView
}

extension CollectionScreenPresenter {
    enum Event {
        //Add Presenter events
    }
}
