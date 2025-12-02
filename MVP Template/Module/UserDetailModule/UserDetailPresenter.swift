//
//  UserDetailPresenter.swift
//  MVP Template
//
//  Created by Hasan Abdullaev on 11/05/21.
//

import Foundation

protocol UserDetailPresenterView: PresenterView {
    //Add some methods for UserDetailPresenter
}

protocol UserDetailPresenterListener: PresenterListener {
    func handle(_ presenter: UserDetailPresenter, event: UserDetailPresenter.Event)
}

final class UserDetailPresenter: BasePresenter<UserDetailPresenterView, UserDetailPresenterListener> {
    
    //Add some methods for UserDetailPresenterView
}

extension UserDetailPresenter {
    enum Event {
        //Add Presenter events
    }
}
