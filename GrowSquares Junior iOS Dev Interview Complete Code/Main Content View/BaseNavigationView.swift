//
//  BaseNavigationView.swift
//  GrowSquares Junior iOS Dev Interview Complete Code
//
//  Created by Ari He on 6/30/21.
//

import SwiftUI

struct BaseNavigationView: View {
    var body: some View {
        NavigationView(content: {
            ContentView()
                .padding(.horizontal)
                .navigationTitle("Content")
        })
    }
}

struct BaseNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        BaseNavigationView()
    }
}
