//
//  ColorGridView.swift
//  GrowSquares Junior iOS Dev Interview Complete Code
//
//  Created by Ari He on 6/30/21.
//

import SwiftUI

struct ColorGridView: View {
    @StateObject private var manager: ColorGridViewManager
    
    init(rows: Int, cols: Int, startingColor: Color, destinationColor: Color) {
        let viewManager = ColorGridViewManager(rows: rows, cols: cols, startingColor: startingColor, destinationColor: destinationColor)
        
        _manager = StateObject(wrappedValue: viewManager)
    }
    
    var body: some View {
        Text("Hello, World!")
    }
}

struct ColorGridView_Previews: PreviewProvider {
    static var previews: some View {
        ColorGridView(rows: 3, cols: 3, startingColor: .red, destinationColor: .blue)
    }
}
