//
//  GameController.swift
//  TicTacToe
//
//  Created by Marcelo on 01/11/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import UIKit

public var gameRunning = false

class GameController: UIViewController, ScreenBuilderProtocol{
    
    // MARK: - Properties
    private var screenBuilder : ScreenBuilder!
    private var gameBrain : GameBrain!
    
    private var startPlayer : Int!
    private var gameStatus : String!
    private var playingPlayer : Int!
    private var boardMap = [-1, -1, -1, -1, -1, -1, -1, -1, -1]

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // ui components builder
        self.screenBuilder = ScreenBuilder(view: self.view)
        self.screenBuilder.delegate = self
        
        // main ui appearence
        self.view.backgroundColor = UIColor.white
        
    }
    
    
    // MARK: - Screen Builder Delegate
    func didSelectButton(buttonId: Int) {
        if gameRunning {
            print("++++ tapped buttonId: \(buttonId)  Playing player: \(self.playingPlayer!)")
            print("++++ boardMap: \(boardMap)")
    
            if self.boardMap[buttonId] == -1 {
                self.boardMap[buttonId] = self.playingPlayer
                self.screenBuilder.setTouchOnCell(buttonId: buttonId, playingPlayer: &self.playingPlayer)
            }

        }
        
    }
    
    func didStartGame(startPlayer: Int) {
        
        // remove subViews of footer view
        self.screenBuilder.removeFooterViews(view: self.view)
        
        // build a new interface to game in progress
        gameRunning = true
        
        // build game running view
        self.screenBuilder.addGameRunningView(startPlayer: startPlayer)
        
        // set playing player & start Player
        self.playingPlayer = startPlayer
        self.startPlayer = startPlayer
        
        // if startPalyer is the device then use gameBrain to exec device moves
        if self.startPlayer == 1 {
            self.gameBrain = GameBrain()
            self.gameBrain.startPlayer = self.startPlayer
            self.gameBrain.playingPlayer = self.playingPlayer
            self.gameBrain.boardMap = self.boardMap
            let buttonId = self.gameBrain.deviceMoves()
            if buttonId >= 0 {
                self.screenBuilder.setTouchOnCell(buttonId: buttonId, playingPlayer: &self.playingPlayer)
            }
        }

        
    }

    func didStopGame() {
        // remove subViews of footer view
        gameRunning = false
        self.screenBuilder.removeFooterViews(view: self.view)
        self.screenBuilder.addPlayerOptionToFooterView()
    }
    
    

}

