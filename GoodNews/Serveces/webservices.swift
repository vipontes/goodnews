//
//  webservices.swift
//  GoodNews
//
//  Created by Vinicius Pontes on 05/09/19.
//  Copyright © 2019 EASIFY. All rights reserved.
//

import Foundation

class Webservices {
    
    func getArticles(url: URL, completion: @escaping ([Article]?) -> ()) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                if let articleList = articleList {
                    completion(articleList.articles)
                }
                
                //print(articleList?.articles)
                
                
            }
            
        }.resume()
    }
}
