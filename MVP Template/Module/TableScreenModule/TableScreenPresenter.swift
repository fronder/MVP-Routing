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
    
    private lazy var apiService: BackendAPI.UserApi = {
        return BackendAPI.UserApi()
    }()
    
    override func onViewLoad() {
        super.onViewLoad()
        
        apiService.request { (users) in
            print(users)
        } onError: { (code, message) in
            print(code)
            print(message)
        }

    }
}

extension TableScreenPresenter {
    enum Event {
        //Add Presenter events
    }
}
