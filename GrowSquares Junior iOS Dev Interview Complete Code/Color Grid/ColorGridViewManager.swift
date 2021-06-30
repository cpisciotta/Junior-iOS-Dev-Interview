//
//  ColorGridViewManager.swift
//  GrowSquares Junior iOS Dev Interview Complete Code
//
//  Created by Ari He on 6/30/21.
//

import SwiftUI

class ColorGridViewManager: ObservableObject {
    let rows: Int
    let cols: Int
    
    let startingColor: Color
    let destinationColor: Color
    
    // MARK: Initialization
    init(rows: Int, cols: Int, startingColor: Color, destinationColor: Color) {
        self.rows = rows
        self.cols = cols
        self.startingColor = startingColor
        self.destinationColor = destinationColor
    }
}
