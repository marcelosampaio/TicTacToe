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
    var view : UIView!
    var headerView : UIView!
    var footerView : UIView!
    var gameView : UIView!
    
    // working variables
    var edgeDistance : CGFloat = 66
    var horizontalEdges : CGFloat = 16
    var verticalEdges : CGFloat = 16
    
    init(view: UIView) {
        
        self.view = view
        
        
        headerView = UIView()
        buildHeader()
        
        footerView = UIView()
        buildFooter()
        
        gameView = UIView()
        buildGameArea()
        
    }
    
    
    func buildHeader() {
        headerView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: edgeDistance)
        headerView.backgroundColor = UIColor.orange
        view.addSubview(headerView)
        
    }
    
    func buildFooter() {
        footerView.frame = CGRect(x: 0, y: view.bounds.height - edgeDistance, width: view.bounds.width, height: edgeDistance)
        footerView.backgroundColor = UIColor.orange
        view.addSubview(footerView)
        
    }
    
    func buildGameArea() {
        
        let positionX = horizontalEdges
        let positionY = edgeDistance + verticalEdges
        let innerWidth = view.bounds.width - (2 * horizontalEdges)
        let innerHeight = ((view.bounds.height) - ( 2 * (edgeDistance + verticalEdges)))
        
        gameView.frame = CGRect(x: positionX, y: positionY, width: innerWidth, height: innerHeight)
        gameView.backgroundColor = UIColor.yellow
        view.addSubview(gameView)
    }

    
    
}
