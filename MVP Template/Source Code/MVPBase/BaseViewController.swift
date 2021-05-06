//
//  BaseViewController.swift
//  ReshootPro
//
//  Created by Uladzislau Vasilyeu on 2/10/21.
//

import UIKit

class BaseViewController<V: UIView, P: Presenter>: UIViewController, PresenterView, Scene {
    var sourceView: V { view as! V }
    
    private(set) var presenter: P!
    
    func setPresenter(_ presenter: P) {
        self.presenter = presenter
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.onViewLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter.onViewWillAppear()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        presenter.onViewDidAppear()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        presenter.onViewWillAppear()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        presenter.onViewDidDisappear()
    }
}

