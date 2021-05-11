//
//  TableScreenPresenter.swift
//  MVP Template
//
//  Created by Hasan on 08/05/21.
//

import Foundation

protocol TableScreenPresenterView: PresenterView, HUDDisplayable, TableScreenViewInterface {
    //Add some methods for TableScreenPresenter
}

protocol TableScreenPresenterListener: PresenterListener {
    func handle(_ presenter: TableScreenPresenter, event: TableScreenPresenter.Event)
}

final class TableScreenPresenter: BasePresenter<TableScreenPresenterView, TableScreenPresenterListener> {
    
    private lazy var apiService: BackendAPI.UserApi = {
        return BackendAPI.UserApi()
    }()
    
    let tableViewProvider = TableScreenTableViewProvider()
    
    
    override func onViewLoad() {
        super.onViewLoad()
        
        view?.setTableViewProvider(tableViewProvider)
        
        fetchData()
    }
    
    private func fetchData() {
        view?.showHUD(animated: true)
        
        apiService.request { [weak view, unowned self] (users) in
            
            self.tableViewProvider.items = users.map { UserCellViewModel($0) }
            
            view?.hideHUD(animated: true)
            view?.reloadData()
            
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
