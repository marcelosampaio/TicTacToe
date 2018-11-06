//
//  GameBrain.swift
//  TicTacToe
//
//  Created by Marcelo on 04/11/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import Foundation

class GameBrain {
    var startPlayer : Int!
    var playingPlayer : Int!
    var buttonId : Int!
    var boardMap : [Int]!

    // MARK: - Constructor
    
    init() {
        self.startPlayer = -1
        self.playingPlayer = -1
        self.buttonId = -1
        self.boardMap = [-1, -1, -1, -1, -1, -1, -1, -1, -1]
    }

    
    // MARK: - Players Moves
    public func deviceMoves(boardMap: inout [Int]) -> Int {
        var boardId : Int = -1
        
        var spares = [Int]()
        for position in self.boardMap {
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
