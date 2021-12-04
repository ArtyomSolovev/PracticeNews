//
//  MyCustomModel.swift
//  Test MVC
//
//  Created by Ляшенко Тимофей on 23.11.2021.
//

final class PostModel
{
	private var post: Post
    
    init(post: Post) {
        self.post = post
    }

	func getPost() -> Post {
		return post
	}
}
