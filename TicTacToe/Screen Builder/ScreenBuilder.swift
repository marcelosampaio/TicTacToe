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
        gameView.backgroundColor = UIColor.yellow
        view.addSubview(gameView)
    }

    
    
}
