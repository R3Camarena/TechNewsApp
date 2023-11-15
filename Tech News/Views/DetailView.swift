//
//  DetailView.swift
//  Tech News
//
//  Created by Ricardo Camarena on 15/11/23.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url) // UIKit component converted to SwiftUI
    }
}

#Preview {
    DetailView(url: "https://www.apple.com")
}
