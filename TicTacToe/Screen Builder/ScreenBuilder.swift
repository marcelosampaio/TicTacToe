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
    
    // MARK: - Header and Footer
    private func buildHeader() {
        headerView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: edgeDistance)
        headerView.backgroundColor = UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1)
        view.addSubview(headerView)
        
    }
    
    private func buildFooter() {
        footerView.frame = CGRect(x: 0, y: view.bounds.height - edgeDistance, width: view.bounds.width, height: edgeDistance)
        footerView.backgroundColor = UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1)
        view.addSubview(footerView)
        
    }
    
    // MARK: - Game Area
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

    
    // MARK: - Game Board
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
        
        // build buttonBackgroundViews
        buildGameButtonBackgrounds(view: gameView, verticalFactor: verticalFactor, horizontalFactor: horizontalFactor)
        
        
    }
    
    // MARK: - Touchable Board Area Controls
    private func buildGameButtonBackgrounds(view: UIView, verticalFactor: CGFloat, horizontalFactor: CGFloat){
        
        // Line 0 ---------------
        // buttonBackgroundView 0
        let buttonBackgroundView0 = UIView(frame: CGRect(x: 0, y: 0, width: verticalFactor, height: horizontalFactor))
        buttonBackgroundView0.backgroundColor = UIColor.clear
        view.addSubview(buttonBackgroundView0)
        
        // buttonBackgroundView 1
        let buttonBackgroundView1 = UIView(frame: CGRect(x: verticalFactor, y: 0, width: verticalFactor, height: horizontalFactor))
        buttonBackgroundView1.backgroundColor = UIColor.clear
        view.addSubview(buttonBackgroundView1)
        
        // buttonBackgroundView 2
        let buttonBackgroundView2 = UIView(frame: CGRect(x: verticalFactor * 2, y: 0, width: verticalFactor, height: horizontalFactor))
        buttonBackgroundView2.backgroundColor = UIColor.clear
        view.addSubview(buttonBackgroundView2)
        
        // Line 1 ---------------
        // buttonBackgroundView 3
        let buttonBackgroundView3 = UIView(frame: CGRect(x: 0, y: horizontalFactor, width: verticalFactor, height: horizontalFactor))
        buttonBackgroundView3.backgroundColor = UIColor.clear
        view.addSubview(buttonBackgroundView3)
        
        // buttonBackgroundView 4
        let buttonBackgroundView4 = UIView(frame: CGRect(x: verticalFactor, y: horizontalFactor, width: verticalFactor, height: horizontalFactor))
        buttonBackgroundView4.backgroundColor = UIColor.clear
        view.addSubview(buttonBackgroundView4)

        // buttonBackgroundView 5
        let buttonBackgroundView5 = UIView(frame: CGRect(x: verticalFactor * 2, y: horizontalFactor, width: verticalFactor, height: horizontalFactor))
        buttonBackgroundView5.backgroundColor = UIColor.clear
        view.addSubview(buttonBackgroundView5)
        
        // Line 2 ---------------
        // buttonBackgroundView 6
        let buttonBackgroundView6 = UIView(frame: CGRect(x: 0, y: horizontalFactor * 2, width: verticalFactor, height: horizontalFactor))
        buttonBackgroundView6.backgroundColor = UIColor.clear
        view.addSubview(buttonBackgroundView6)
        
        // buttonBackgroundView 7
        let buttonBackgroundView7 = UIView(frame: CGRect(x: verticalFactor, y: horizontalFactor * 2, width: verticalFactor, height: horizontalFactor))
        buttonBackgroundView7.backgroundColor = UIColor.clear
        view.addSubview(buttonBackgroundView7)
        
        // buttonBackgroundView 8
        let buttonBackgroundView8 = UIView(frame: CGRect(x: verticalFactor * 2, y: horizontalFactor * 2, width: verticalFactor, height: horizontalFactor))
        buttonBackgroundView8.backgroundColor = UIColor.clear
        view.addSubview(buttonBackgroundView8)
        
        // build labels
        buildGameButtonLabels(view: view, verticalFactor: verticalFactor, horizontalFactor: horizontalFactor)
        
        
        
    }
    
    private func buildGameButtonLabels(view: UIView, verticalFactor: CGFloat, horizontalFactor: CGFloat){

        // Line 0 ---------------
        // buttonLabelView 0
        let buttonLabelView0 = UILabel(frame: CGRect(x: 0, y: 0, width: verticalFactor, height: horizontalFactor))
        buttonLabelView0.font = UIFont(name: "Halvetica", size: 122)
        buttonLabelView0.font = UIFont.boldSystemFont(ofSize: 122.0)
        buttonLabelView0.textColor = UIColor.black
        buttonLabelView0.textAlignment = NSTextAlignment.center
        buttonLabelView0.text = "O"
        buttonLabelView0.backgroundColor = UIColor.clear
        view.addSubview(buttonLabelView0)
        
        // buttonLabelView 1
        let buttonLabelView1 = UILabel(frame: CGRect(x: verticalFactor, y: 0, width: verticalFactor, height: horizontalFactor))
        buttonLabelView1.font = UIFont(name: "Halvetica", size: 122)
        buttonLabelView1.font = UIFont.boldSystemFont(ofSize: 122.0)
        buttonLabelView1.textColor = UIColor.black
        buttonLabelView1.textAlignment = NSTextAlignment.center
        buttonLabelView1.text = "X"
        buttonLabelView1.backgroundColor = UIColor.clear
        view.addSubview(buttonLabelView1)
        
        // buttonLabelView 2
        let buttonLabelView2 = UILabel(frame: CGRect(x: verticalFactor * 2, y: 0, width: verticalFactor, height: horizontalFactor))
        buttonLabelView2.font = UIFont(name: "Halvetica", size: 122)
        buttonLabelView2.font = UIFont.boldSystemFont(ofSize: 122.0)
        buttonLabelView2.textColor = UIColor.black
        buttonLabelView2.textAlignment = NSTextAlignment.center
        buttonLabelView2.text = "X"
        buttonLabelView2.backgroundColor = UIColor.clear
        view.addSubview(buttonLabelView2)
        
        // Line 1 ---------------
        // buttonLabelView 3
        let buttonLabelView3 = UILabel(frame: CGRect(x: 0, y: horizontalFactor, width: verticalFactor, height: horizontalFactor))
        buttonLabelView3.font = UIFont(name: "Halvetica", size: 122)
        buttonLabelView3.font = UIFont.boldSystemFont(ofSize: 122.0)
        buttonLabelView3.textColor = UIColor.black
        buttonLabelView3.textAlignment = NSTextAlignment.center
        buttonLabelView3.text = "O"
        buttonLabelView3.backgroundColor = UIColor.clear
        view.addSubview(buttonLabelView3)
        
        // buttonLabelView 4
        let buttonLabelView4 = UILabel(frame: CGRect(x: verticalFactor, y: horizontalFactor, width: verticalFactor, height: horizontalFactor))
        buttonLabelView4.font = UIFont(name: "Halvetica", size: 122)
        buttonLabelView4.font = UIFont.boldSystemFont(ofSize: 122.0)
        buttonLabelView4.textColor = UIColor.black
        buttonLabelView4.textAlignment = NSTextAlignment.center
        buttonLabelView4.text = "O"
        buttonLabelView4.backgroundColor = UIColor.clear
        view.addSubview(buttonLabelView4)
        
        // buttonLabelView 5
        let buttonLabelView5 = UILabel(frame: CGRect(x: verticalFactor * 2, y: horizontalFactor, width: verticalFactor, height: horizontalFactor))
        buttonLabelView5.font = UIFont(name: "Halvetica", size: 122)
        buttonLabelView5.font = UIFont.boldSystemFont(ofSize: 122.0)
        buttonLabelView5.textColor = UIColor.black
        buttonLabelView5.textAlignment = NSTextAlignment.center
        buttonLabelView5.text = "X"
        buttonLabelView5.backgroundColor = UIColor.clear
        view.addSubview(buttonLabelView5)
        
        // Line 2 ---------------
        // buttonLabelView 6
        let buttonLabelView6 = UILabel(frame: CGRect(x: 0, y: horizontalFactor * 2, width: verticalFactor, height: horizontalFactor))
        buttonLabelView6.font = UIFont(name: "Halvetica", size: 122)
        buttonLabelView6.font = UIFont.boldSystemFont(ofSize: 122.0)
        buttonLabelView6.textColor = UIColor.black
        buttonLabelView6.textAlignment = NSTextAlignment.center
        buttonLabelView6.text = "X"
        buttonLabelView6.backgroundColor = UIColor.clear
        view.addSubview(buttonLabelView6)
        
        // buttonLabelView 7
        let buttonLabelView7 = UILabel(frame: CGRect(x: verticalFactor, y: horizontalFactor * 2, width: verticalFactor, height: horizontalFactor))
        buttonLabelView7.font = UIFont(name: "Halvetica", size: 122)
        buttonLabelView7.font = UIFont.boldSystemFont(ofSize: 122.0)
        buttonLabelView7.textColor = UIColor.black
        buttonLabelView7.textAlignment = NSTextAlignment.center
        buttonLabelView7.text = "O"
        buttonLabelView7.backgroundColor = UIColor.clear
        view.addSubview(buttonLabelView7)
        
        // buttonLabelView 8
        let buttonLabelView8 = UILabel(frame: CGRect(x: verticalFactor * 2, y: horizontalFactor * 2, width: verticalFactor, height: horizontalFactor))
        buttonLabelView8.font = UIFont(name: "Halvetica", size: 122)
        buttonLabelView8.font = UIFont.boldSystemFont(ofSize: 122.0)
        buttonLabelView8.textColor = UIColor.black
        buttonLabelView8.textAlignment = NSTextAlignment.center
        buttonLabelView8.text = "X"
        buttonLabelView8.backgroundColor = UIColor.clear
        view.addSubview(buttonLabelView8)
        
        // build action buttons
        buildGameButton(view: view, verticalFactor: verticalFactor, horizontalFactor: horizontalFactor)
        

    }
    
    private func buildGameButton(view: UIView, verticalFactor: CGFloat, horizontalFactor: CGFloat){
    
        // Line 0 ---------------
        // button 0
        let button0 = UIButton(frame: CGRect(x: 0, y: 0, width: verticalFactor, height: horizontalFactor))
        button0.tag = 1000
        button0.backgroundColor = UIColor.clear
        button0.setTitle("", for: .normal)
        button0.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        view.addSubview(button0)
        
        // button 1
        let button1 = UIButton(frame: CGRect(x: verticalFactor, y: 0, width: verticalFactor, height: horizontalFactor))
        button1.tag = 1001
        button1.backgroundColor = UIColor.clear
        button1.setTitle("", for: .normal)
        button1.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        view.addSubview(button1)
        
    }
    
    @objc func buttonAction(sender: UIButton!) {
        print("BUTTON TAPPED: \(sender.tag)")
    }
    
    /*
     let button = UIButton()
     button.frame = CGRect(x: self.view.frame.size.width - 60, y: 60, width: 50, height: 50)
     button.backgroundColor = UIColor.red
     button.setTitle("Name your Button ", for: .normal)
     button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
     self.view.addSubview(button)
     
     @objc func buttonAction(sender: UIButton!) {
     print("Button tapped")
     }
    
    */
    
    
    
    
    
    
}
