//
//  FeedViewController.swift
//  Practice
//
//  Created by Sergio Ramos on 27.11.2021.
//

import UIKit

final class FeedViewController: UIViewController {
    
    private var data = Post.sampleData
    private var viewFeed: FeedView?
    
    init(){
        self.viewFeed = FeedView(frame:UIScreen.main.bounds)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        self.viewFeed?.loadView(controller: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let viewFeed = viewFeed {
            self.view.addSubview(viewFeed)
        }
        viewFeed?.configure()
        viewFeed?.tableView.delegate = self
        viewFeed?.tableView.dataSource = self
    }

}

extension FeedViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let postVC = PostViewController(post: data[indexPath.row])
        navigationController?.pushViewController(postVC, animated: true)
    }
    
}

extension FeedViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.id, for: indexPath) as! PostTableViewCell
        cell.post = self.data[indexPath.row]
        return cell
    }
    
    
}
