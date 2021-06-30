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
        VStack(alignment: .leading) {
            colorGridSectionView
            
            imageSectionView
            
        }
    }
    
    private var colorGridSectionView: some View {
        ContentSection(title: "Color Grid", content: ColorGridView(rows: 3, cols: 3, startingColor: .red, destinationColor: .blue))
    }
    
    private var imageSectionView: some View {
        ContentSection(title: "Picture", content: Image("image_1")
                        .frame(maxWidth: UIScreen.main.bounds.width * 0.8)
        )
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
