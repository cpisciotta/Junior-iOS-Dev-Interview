//
//  ContentSection.swift
//  GrowSquares Junior iOS Dev Interview Complete Code
//
//  Created by Ari He on 6/30/21.
//

import SwiftUI

struct ContentSection<Content: View>: View {
    let title: String
    let content: Content
    
    var body: some View {
        VStack(alignment: .leading) {
            titleView
            
            content
        }
    }
    
    private var titleView: some View {
        Text(title)
            .font(.title2)
            .bold()
    }
}

struct ContentSection_Previews: PreviewProvider {
    static var previews: some View {
        ContentSection(title: "Title", content: Text("This is the content."))
    }
}
