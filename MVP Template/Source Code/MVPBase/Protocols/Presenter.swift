//
//  Presenter.swift
//  ReshootPro
//
//  Created by Uladzislau Vasilyeu on 2/10/21.
//

import Foundation

protocol Presenter: class {
    func onViewLoad()
    func onViewWillAppear()
    func onViewDidAppear()
    func onViewWillDisappear()
    func onViewDidDisappear()
}

protocol PresenterListener: Listener {
    
}
