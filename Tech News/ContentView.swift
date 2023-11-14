//
//  ContentView.swift
//  Tech News
//
//  Created by Ricardo Camarena on 14/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }
            .navigationBarTitle("Tech News")
        }
    }
}

#Preview {
    ContentView()
}

let posts = [
    Post(id: "1", title: "Hello"),
    Post(id: "2", title: "Bonjour"),
    Post(id: "3", title: "Hola")
]
