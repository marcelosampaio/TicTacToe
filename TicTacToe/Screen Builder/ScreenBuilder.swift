//
//  ScreenBuilder.swift
//  TicTacToe
//
//  Created by Marcelo on 01/11/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import Foundation
import UIKit

class ScreenBuilder {
    
    // UI Views
    private var view : UIView!
    private var headerView : UIView!
    private var footerView : UIView!
    private var gameView : UIView!
    
    // working variables
    private var edgeDistance : CGFloat = 66
    private var innerEdges : CGFloat = 16
    
    init(view: UIView) {
        
        self.view = view
        
        
        headerView = UIView()
        buildHeader()
        
        footerView = UIView()
        buildFooter()
        
        gameView = UIView()
        buildGameArea()

    }
    
    
    private func buildHeader() {
        headerView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: edgeDistance)
        headerView.backgroundColor = UIColor.orange
        view.addSubview(headerView)
        
    }
    
    private func buildFooter() {
        footerView.frame = CGRect(x: 0, y: view.bounds.height - edgeDistance, width: view.bounds.width, height: edgeDistance)
        footerView.backgroundColor = UIColor.orange
        view.addSubview(footerView)
        
    }
    
    private func buildGameArea() {
        
        let positionX = innerEdges
        let positionY = edgeDistance + innerEdges
        let innerWidth = view.bounds.width - (2 * innerEdges)
        let innerHeight = ((view.bounds.height) - ( 2 * (edgeDistance + innerEdges)))
        
        gameView.frame = CGRect(x: positionX, y: positionY, width: innerWidth, height: innerHeight)
        gameView.backgroundColor = UIColor.white
        view.addSubview(gameView)
        
        // build game board
        buildGameBoard(view: gameView)

        
    }

    
    private func buildGameBoard(view: UIView){
     
        // vertical 1
        let verticalFactor = view.bounds.width / 3
        let vertical1View = UIView(frame: CGRect(x: verticalFactor, y: 0, width: 2.0, height: view.bounds.size.height))
        vertical1View.backgroundColor = UIColor.black
        view.addSubview(vertical1View)
        
        // vertical 2
        let vertical2View = UIView(frame: CGRect(x: verticalFactor * 2, y: 0, width: 2.0, height: view.bounds.size.height))
        vertical2View.backgroundColor = UIColor.black
        view.addSubview(vertical2View)
        
        
        // horizontal 1
        let horizontalFactor = view.bounds.size.height / 3
        let horizontal1View = UIView(frame: CGRect(x: 0, y: horizontalFactor, width: view.bounds.size.width, height: 2))
        horizontal1View.backgroundColor = UIColor.black
        view.addSubview(horizontal1View)
        
        // horizontal 2
        let horizontal2View = UIView(frame: CGRect(x: 0, y: horizontalFactor * 2, width: view.bounds.size.width, height: 2))
        horizontal2View.backgroundColor = UIColor.black
        view.addSubview(horizontal2View)
        
        // build buttons
        buildGameButtons(view: gameView, verticalFactor: verticalFactor, horizontalFactor: horizontalFactor)
        
        
    }
    
    
    private func buildGameButtons(view: UIView, verticalFactor: CGFloat, horizontalFactor: CGFloat){
        
        // Line 0 ---------------
        // button 0
        let button0 = UIView(frame: CGRect(x: 0, y: 0, width: verticalFactor, height: horizontalFactor))
        button0.backgroundColor = UIColor.yellow
        view.addSubview(button0)
        
        // button 1
        let button1 = UIView(frame: CGRect(x: verticalFactor, y: 0, width: verticalFactor, height: horizontalFactor))
        button1.backgroundColor = UIColor.purple
        view.addSubview(button1)
        
        // button 2
        let button2 = UIView(frame: CGRect(x: verticalFactor * 2, y: 0, width: verticalFactor, height: horizontalFactor))
        button2.backgroundColor = UIColor.green
        view.addSubview(button2)
        
        // Line 1 ---------------
        // button 3
        let button3 = UIView(frame: CGRect(x: 0, y: horizontalFactor, width: verticalFactor, height: horizontalFactor))
        button3.backgroundColor = UIColor.red
        view.addSubview(button3)
        
        // button 4
        let button4 = UIView(frame: CGRect(x: verticalFactor, y: horizontalFactor, width: verticalFactor, height: horizontalFactor))
        button4.backgroundColor = UIColor.blue
        view.addSubview(button4)

        // button 5
        let button5 = UIView(frame: CGRect(x: verticalFactor * 2, y: horizontalFactor, width: verticalFactor, height: horizontalFactor))
        button5.backgroundColor = UIColor.brown
        view.addSubview(button5)
        
    }
    
    
}
