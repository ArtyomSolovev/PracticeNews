//
//  PostTableViewCell.swift
//  Practice
//
//  Created by Sergio Ramos on 27.11.2021.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    static let id = "TableViewCell"
    
    // MARK: UI
    
    private let image : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "car")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let header : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    private let title : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    var post: Post? {
        didSet {
            guard let person = post else { return }
            self.image.image = UIImage(named: person.image)
            self.header.text = person.article
            self.title.text = person.title
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        self.initialSetup()
        self.configureImage()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func initialSetup() {
        self.addSubview(image)
        self.addSubview(header)
        self.addSubview(title)
    }

    private func configureImage() {
        self.image.layer.cornerRadius = 8
        self.image.layer.opacity = 0.8
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.image.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16).isActive = true
        self.image.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        self.header.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 82).isActive = true
        self.header.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.title.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 82).isActive = true
        self.title.topAnchor.constraint(equalTo: header.bottomAnchor, constant: 8).isActive = true
    }
    
}
