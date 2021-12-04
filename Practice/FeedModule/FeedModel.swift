//
//  FeedModel.swift
//  Practice
//
//  Created by Артем Соловьев on 04.12.2021.
//



final class FeedModel {

    private var someData = Post.sampleData
    
    func getData() -> [Post]{
        return someData
    }
    
}

