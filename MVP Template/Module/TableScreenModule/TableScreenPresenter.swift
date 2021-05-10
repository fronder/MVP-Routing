//
//  TableScreenPresenter.swift
//  MVP Template
//
//  Created by Hasan on 08/05/21.
//

import Foundation

protocol TableScreenPresenterView: PresenterView, HUDDisplayable {
    //Add some methods for TableScreenPresenter
}

protocol TableScreenPresenterListener: PresenterListener {
    func handle(_ presenter: TableScreenPresenter, event: TableScreenPresenter.Event)
}

final class TableScreenPresenter: BasePresenter<TableScreenPresenterView, TableScreenPresenterListener> {
    
    private lazy var apiService: BackendAPI.UserApi = {
        return BackendAPI.UserApi()
    }()
    private var items: [UserCellViewModel] = []
    
    
    override func onViewLoad() {
        super.onViewLoad()
        
        view?.showHUD(animated: true)
        
        apiService.request { [weak view, unowned self] (users) in
            view?.hideHUD(animated: true)
            
            self.items = users.map { UserCellViewModel($0) }
            
        } onError: { [weak view] (code, message) in
            view?.hideHUD(animated: true)
        }

    }
    
}

extension TableScreenPresenter {
    enum Event {
        //Add Presenter events
    }
}
