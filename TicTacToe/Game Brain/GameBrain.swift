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
    func deviceMoves() -> Int {
        print("*** DEVICE MOVES ***")
        print("*** startPlayer: \(String(describing: startPlayer))")
        print("*** playingPlayer: \(String(describing: playingPlayer))")
        print("*** buttonId: \(String(describing: buttonId))")
        print("*** boardMap: \(String(describing: boardMap))")
        
        return generateDeviceNextBoardId()
        
    }
    
    func userMoves() {
        print("*** USER MOVES ***")
    }
    
    
    // MARK: - Devices Helper
    private func generateDeviceNextBoardId() -> Int {
        var boardId : Int = -1
        
        var spares = [Int]()
        for position in self.boardMap {
            spares.append(position)
        }

        if spares.count > 0 {
            boardId = Int.random(in: 0 ... spares.count)
        }

        return boardId
    }
    
    
}
