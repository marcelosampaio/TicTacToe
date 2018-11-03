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
    private var gameStatus : String!

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
            print("tapped buttonId: \(buttonId)")
        }
        
    }
    
    func didStartGame(startPlayer: Int) {

        // remove subViews of footer view
        self.screenBuilder.removeFooterViews(view: self.view)
        
        // build a new interface to game in progress
        gameRunning = true
        
        // build game running view
        self.screenBuilder.addGameRunningView(startPlayer: startPlayer)
        
    }

    func didStopGame() {
        // remove subViews of footer view
        gameRunning = false
        self.screenBuilder.removeFooterViews(view: self.view)
        self.screenBuilder.addPlayerOptionToFooterView()
    }
    
    

}

