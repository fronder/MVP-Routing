//
//  BasePresenter.swift
//  ReshootPro
//
//  Created by Mihail Kosyuhin on 15.02.21.
//

import Foundation

class BasePresenter<V, L>: Presenter {
    var view: V? { _view as? V }
    var listener: L? {
        get {_listener as? L}
        set { _listener = newValue as? PresenterListener }
    }
    
    private weak var _view: PresenterView?
    private weak var _listener: PresenterListener?
    
    init(view: V, listener: L? = nil) {
        _view = ConfirmationWrapper<V, PresenterView>(view).wrappedValue
        _listener = ConfirmationWrapper<L, PresenterListener>(listener)?.wrappedValue
    }
    
    func onViewLoad() {
        //override
    }
    
    func onViewWillAppear() {
        //override
    }
    
    func onViewDidAppear() {
        //override
    }
    
    func onViewWillDisappear() {
        //override
    }
    
    func onViewDidDisappear() {
        //override
    }
}
