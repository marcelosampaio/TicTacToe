//
//  ViewController.swift
//  TicTacToe
//
//  Created by Marcelo on 01/11/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    private var screenBuilder : ScreenBuilder!

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.screenBuilder = ScreenBuilder(view: self.view)
        self.view.backgroundColor = UIColor.black
        
    }


}

