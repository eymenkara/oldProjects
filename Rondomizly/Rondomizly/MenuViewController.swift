//
//  ViewController.swift
//  Rondomizly
//
//  Created by Eymen on 29/08/2017.
//  Copyright © 2017 Eymen. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    var index = 0
    let colors = [UIColor.cyan, UIColor.magenta, UIColor.brown]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(changeColor), userInfo: nil, repeats: true)
    }
    
    func changeColor() {
        index += 1
        if index > 2 {
            index = 0
        }
        
        self.view.backgroundColor = self .colors[index]
        
    }
    
    
    
}

