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
    var boardMap : [String]!

    // MARK: - Constructor
    
    init() {
        self.startPlayer = -1
        self.playingPlayer = -1
        self.buttonId = -1
        self.boardMap = [String]()
    }

    
    // MARK: - Players Moves
    func deviceMoves() -> Int {
        print("*** DEVICE MOVES ***")
        print("*** startPlayer: \(String(describing: startPlayer))")
        print("*** playingPlayer: \(String(describing: playingPlayer))")
        print("*** buttonId: \(String(describing: buttonId))")
        print("*** boardMap: \(String(describing: boardMap))")
        
        
        
        
        if self.boardMap.count == 0 {
            let randomNumber = Int.random(in: 0 ... 8)
            return randomNumber
        }
        
        return -1
        
    }
    
    func userMoves() {
        print("*** USER MOVES ***")
    }
    
    
    
    
    
}
