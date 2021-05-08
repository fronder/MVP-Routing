//
//  TableScreenPresenter.swift
//  MVP Template
//
//  Created by Hasan on 08/05/21.
//

import Foundation

protocol TableScreenPresenterView: PresenterView {
    //Add some methods for TableScreenPresenter
}

protocol TableScreenPresenterListener: PresenterListener {
    func handle(_ presenter: TableScreenPresenter, event: TableScreenPresenter.Event)
}

final class TableScreenPresenter: BasePresenter<TableScreenPresenterView, TableScreenPresenterListener> {
    
    //Add some methods for TableScreenPresenterView
}

extension TableScreenPresenter {
    enum Event {
        //Add Presenter events
    }
}
