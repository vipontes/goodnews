//
//  Article.swift
//  GoodNews
//
//  Created by Vinicius Pontes on 05/09/19.
//  Copyright © 2019 EASIFY. All rights reserved.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String
}
