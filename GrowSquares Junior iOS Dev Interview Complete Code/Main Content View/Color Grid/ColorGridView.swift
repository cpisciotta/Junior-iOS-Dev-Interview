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
        
        let arrangements = repeatElement(GridItem(.flexible(minimum: 0, maximum: .infinity)), count: cols)
        
        gridArrangement = Array<GridItem>(arrangements)
    }
    
    var body: some View {
        gridView
    }
    
    private let gridArrangement: Array<GridItem>
    
    private var gridView: some View {
        LazyVGrid(columns: gridArrangement, content: {
            gridContent
        })
    }
    
    private var gridContent: some View {
        ForEach(0..<manager.gridCells.count) { index in
            manager.gridCells[index]
                .aspectRatio(1, contentMode: .fit)
                .onTapGesture {
                    manager.cellTapped(index)
                }
        }
    }
}

struct ColorGridView_Previews: PreviewProvider {
    static var previews: some View {
        ColorGridView(rows: 3, cols: 3, startingColor: .red, destinationColor: .blue)
    }
}
