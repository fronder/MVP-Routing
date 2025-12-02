//
//  CollectionScreenPresenter.swift
//  MVP Template
//
//  Created by Hasan Abdullaev on 08/05/21.
//

import Foundation

protocol CollectionScreenPresenterView: PresenterView, HUDDisplayable, CollectionScreenViewInterface {
    //Add some methods for CollectionScreenPresenter
}

protocol CollectionScreenPresenterListener: PresenterListener {
    func handle(_ presenter: CollectionScreenPresenter, event: CollectionScreenPresenter.Event)
}

final class CollectionScreenPresenter: BasePresenter<CollectionScreenPresenterView, CollectionScreenPresenterListener> {
    
    private lazy var apiService: BackendAPI.UserApi = {
        return BackendAPI.UserApi()
    }()
    
    let collectionViewProvider = CollectionScreenTableViewProvider()
    
    
    override func onViewLoad() {
        super.onViewLoad()
        
        view?.setTableViewProvider(collectionViewProvider)
        
        fetchData()
    }
    
    
    private func fetchData() {
        view?.showHUD(animated: true)
        
        apiService.request { [weak view, unowned self] (users) in
            
            self.collectionViewProvider.items = users.map { UserCellViewModel($0) }

            view?.hideHUD(animated: true)
            view?.reloadData()
            
        } onError: { [weak view] (code, message) in
            view?.hideHUD(animated: true)
        }
    }
}

extension CollectionScreenPresenter {
    enum Event {
        //Add Presenter events
    }
}
