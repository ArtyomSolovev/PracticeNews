//
//  PostView.swift
//  Practice
//
//  Created by Артем Соловьев on 04.12.2021.
//

import UIKit

final class FeedView: UIView {
    
    private var presenter: FeedPresenter?
    
    lazy var tableView: UITableView = {
        let view = UITableView(frame: .zero, style: .grouped)
        view.backgroundColor = .gray
        view.register(PostTableViewCell.self, forCellReuseIdentifier: PostTableViewCell.id)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.rowHeight = 77.0
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func loadView(controller: FeedViewController){
        self.presenter = FeedPresenter()
        self.presenter?.loadView(controller: controller, view: self)
    }
    
    func setPresenter(presenter: FeedPresenter) {
        self.presenter = presenter
    }
    
    func configure() {
        self.addSubview(tableView)
        self.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        self.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
}
