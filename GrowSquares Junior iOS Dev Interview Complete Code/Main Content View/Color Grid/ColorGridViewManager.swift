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
    
    @Published private(set) var gridCells: Array<Color>
    private var numberOfUntappedCells: Int
    
    // MARK: Initialization
    init(rows: Int, cols: Int, startingColor: Color, destinationColor: Color) {
        self.rows = rows
        self.cols = cols
        self.startingColor = startingColor
        self.destinationColor = destinationColor
        
        gridCells = Array<Color>()
        numberOfUntappedCells = 0
        resetGrid()
    }
    
    // MARK: Intent(s)
    func resetGrid() {
        gridCells.removeAll()
        
        let totalCells = rows * cols
        
        gridCells.append(contentsOf: repeatElement(startingColor, count: totalCells))
        
        numberOfUntappedCells = totalCells
    }
    
    func cellTapped(_ index: Int) {
        guard gridCells[index] != destinationColor else {
            return
        }
        
        gridCells[index] = destinationColor
        
        numberOfUntappedCells -= 1
    }
    
    // MARK: Board State
    func allCellsTapped() -> Bool {
        return numberOfUntappedCells == 0
    }
}
