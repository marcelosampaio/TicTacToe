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
        
        // ui components builder
        self.screenBuilder = ScreenBuilder(view: self.view)
        
        // main ui appearence
        self.view.backgroundColor = UIColor.white
        
    }


}

