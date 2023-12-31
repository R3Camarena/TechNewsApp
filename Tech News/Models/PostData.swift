//
//  PostData.swift
//  Tech News
//
//  Created by Ricardo Camarena on 14/11/23.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String? // In the API, the url sometimes is nil, so an optional String? is needed for the results to show up
}
