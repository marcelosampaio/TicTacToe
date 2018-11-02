//
//  ViewController.swift
//  TicTacToe
//
//  Created by Marcelo on 01/11/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import UIKit

public var gameRunning = false

class ViewController: UIViewController, ScreenBuilderProtocol{
    
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
        
        print("tapped buttonId: \(buttonId)")
        
    }
    
    func didStartGame(startPlayer: Int) {
        print("start player: \(startPlayer)")
        
        // remove subViews of footer view
        self.screenBuilder.removeFooterViews(view: self.view)
    }


}

