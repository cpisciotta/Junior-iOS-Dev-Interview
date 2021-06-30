//
//  ContentView.swift
//  GrowSquares Junior iOS Dev Interview Complete Code
//
//  Created by Ari He on 6/30/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        scrollView
    }
    
    private var scrollView: some View {
        ScrollView {
            contentView
        }
    }
    
    private var contentView: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
