//
//  GameBrain.swift
//  TicTacToe
//
//  Created by Marcelo on 04/11/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import Foundation

class GameBrain {

    // MARK: - Players Moves
    public func deviceMoves(boardMap: inout [Int]) -> Int {
        var boardId : Int = -1
        
        var spares = [Int]()
        for position in boardMap {
            spares.append(position)
        }
        
        if spares.count > 0 {
            boardId = Int.random(in: 0 ... spares.count)
        }
        boardMap = spares
        return boardId
    }

    
    func userMoves() {
        print("*** USER MOVES ***")
    }
    
    


    
    
}
