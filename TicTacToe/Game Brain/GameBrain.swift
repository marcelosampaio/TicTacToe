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
    
    init(startPlayer : Int, playingPlayer: Int, buttonId: Int, boardMap: [String]) {
        self.startPlayer = startPlayer
        self.playingPlayer = playingPlayer
        self.buttonId = buttonId
        self.boardMap = boardMap
    }
    
    func deviceMoves() {
        print("*** DEVICE MOVES ***")
        print("*** startPlayer: \(String(describing: startPlayer))")
        print("*** playingPlayer: \(String(describing: playingPlayer))")
        print("*** buttonId: \(String(describing: buttonId))")
        print("*** boardMap: \(String(describing: boardMap))")
    }
    
    
}
