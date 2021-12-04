//
//  ViewController.swift
//  Test MVC
//
//  Created by Ляшенко Тимофей on 23.11.2021.
//

import UIKit

final class PostViewController: UIViewController {
    
	private var postView: PostView?
	private var postModel: PostModel?

    init(post: Post) {
		self.postView = PostView(frame: UIScreen.main.bounds)
		self.postModel = PostModel(post: post)
		super.init(nibName: nil, bundle: nil)
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	override func loadView() {
		super.loadView()
		self.postView?.loadView(controller: self)
	}

	override func viewDidLoad() {
		super.viewDidLoad()
        guard let viewModel = postModel?.getPost() else { return }
        postView?.update(data: viewModel)
	}

	override func viewDidAppear(_ animated: Bool) {
		self.postView?.configView()
		if let customView = postView {
			self.view.addSubview(customView)
		}
	}
}

