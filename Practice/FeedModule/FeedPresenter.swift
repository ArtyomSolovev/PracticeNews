//
//  FeedPresenter.swift
//  Practice
//
//  Created by Артем Соловьев on 04.12.2021.
//

import Foundation

class FeedPresenter {
    
    private let model = FeedModel()
    private weak var controller: FeedViewController?
    private weak var view: FeedView?
    
    func loadView(controller: FeedViewController, view: FeedView) {
        self.controller = controller
        self.view = view
        self.view?.setPresenter(presenter: self)
    }
}
