//
//  Post.swift
//  Practice
//
//  Created by Sergio Ramos on 27.11.2021.
//

import Foundation

struct Post {
    let image, title, author, article: String
}

extension Post {
    static var sampleData: [Self] {
        let first = Post(image: "1", title: "2", author: "3", article: "4")
        let second = Post(image: "1", title: "2", author: "3", article: "4")
        let third = Post(image: "1", title: "2", author: "3", article: "4")
        let forth = Post(image: "1", title: "2", author: "3", article: "4")
        return [first, second, third, forth]
    }
}
