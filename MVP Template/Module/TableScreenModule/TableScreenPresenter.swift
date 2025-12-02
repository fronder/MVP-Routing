//
//  TableScreenPresenter.swift
//  MVP Template
//
//  Created by Hasan Abdullaev on 08/05/21.
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
    
    var items = [UserCellViewModel]()
    lazy var tableViewProvider: TableScreenTableViewProvider = {
        return TableScreenTableViewProvider()
    }()
    
    
    override func onViewLoad() {
        super.onViewLoad()
        
        view?.setTableViewProvider(tableViewProvider)
        
        setTableViewProvider()
        fetchData()
    }
    
    private func fetchData() {
        view?.showHUD(animated: true)
        
        apiService.request { [weak view, unowned self] (users) in
            self.items = users.map { UserCellViewModel($0) }
            self.tableViewProvider.items = self.items
            
            view?.hideHUD(animated: true)
            view?.reloadData()
            
        } onError: { [weak view] (code, message) in
            view?.hideHUD(animated: true)
        }
    }
    
    private func setTableViewProvider() {
        tableViewProvider.didSelectItem = { [unowned self] atIndex in
            self.listener?.handle(self, event: .onCellClick)
        }
    }
}

extension TableScreenPresenter {
    enum Event {
        case onCellClick
    }
}
