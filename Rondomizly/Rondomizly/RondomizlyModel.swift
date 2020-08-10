//
//  RondomizlyModel.swift
//  Rondomizly
//
//  Created by Eymen on 29/08/2017.
//  Copyright © 2017 Eymen. All rights reserved.
//

import Foundation

enum GuessAnswer {
    
    case correct
    
    case tooLow
    
    case tooHigh
}

class RondomizlyModel {
    
    private var rondomNumber = 0
    
    private(set) var tries = 0
    
    init() {
        self.newNumber()
    }
    
    func newNumber() {
        tries = 0
        rondomNumber = Int(arc4random_uniform(100) + 1)
    }
    
    func guess(_ guess: Int) -> GuessAnswer {
        tries += 1
        if rondomNumber == guess {
            return .correct
        }else if rondomNumber > guess {
            return .tooLow
        }else {
            return .tooHigh
        }

        }
    
    
    
}
