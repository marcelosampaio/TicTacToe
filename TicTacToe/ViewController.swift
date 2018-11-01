//
//  ViewController.swift
//  TicTacToe
//
//  Created by Marcelo on 01/11/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // UI Views
    private var headerView = UIView()
    private var footerView = UIView()
    
    private var gameView = UIView()
    
    private var edgeDistance : CGFloat = 66
    private var horizontalEdges : CGFloat = 16
    private var verticalEdges : CGFloat = 16

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.lightGray
        
        // screen builder
        screenBuilder()
        
        print("--> screen Width: \(self.view.bounds.width)")
        print("--> screen height: \(self.view.bounds.height)")
    }
    
    
    // MARK: - Interface Builder
    private func screenBuilder(){
        buildHeader()
        buildFooter()
        buildGameArea()
        
        
    }
    
    private func buildHeader() {
        self.headerView.frame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: edgeDistance)
        self.headerView.backgroundColor = UIColor.white
        self.view.addSubview(self.headerView)
        
    }
    
    private func buildFooter() {
        self.footerView.frame = CGRect(x: 0, y: self.view.bounds.height - edgeDistance, width: self.view.bounds.width, height: edgeDistance)
        self.footerView.backgroundColor = UIColor.white
        self.view.addSubview(self.footerView)
        
    }
    
    private func buildGameArea() {
        
        let positionX = horizontalEdges
        let positionY = edgeDistance + verticalEdges
        let innerWidth = self.view.bounds.width - (2 * horizontalEdges)
        let innerHeight = ((self.view.bounds.height) - ( 2 * (edgeDistance + verticalEdges)))
        
        self.gameView.frame = CGRect(x: positionX, y: positionY, width: innerWidth, height: innerHeight)
        self.gameView.backgroundColor = UIColor.white
        self.view.addSubview(self.gameView)
    }
    
    

}

