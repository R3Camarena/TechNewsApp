//
//  ContentView.swift
//  Tech News
//
//  Created by Ricardo Camarena on 14/11/23.
//

import SwiftUI

struct ContentView: View {
    
    // ObservedObject to listen to the updates of the ObservableObject class to update the UI
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                // Shows the DetailView() when tapping an element
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        VStack {
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                            Text(String(post.points))
                        }
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("Tech News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView()
}

//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Bonjour"),
//    Post(id: "3", title: "Hola")
//]
