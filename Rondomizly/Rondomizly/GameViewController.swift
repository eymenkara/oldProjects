//
//  GameViewController.swift
//  Rondomizly
//
//  Created by Eymen on 29/08/2017.
//  Copyright © 2017 Eymen. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var hintLabel: UILabel!
    
    let model = RondomizlyModel()

    
    @IBAction func guessBtnPressed(_ sender: Any) {
        if let input = inputField.text, input != "", let number = Int(input) {
            
            let result = self.model.guess(number)
            let tries = self.model.tries
            
            switch result {
                
            case .correct:
                
                showAlert(title: "Victory", message: "You guessed the number correctly! Tries needed: \(tries)")
                model.newNumber()
                inputField.text = ""
                hintLabel.isHidden = true
                
            case .tooLow:
                
                hintLabel.isHidden = false
                hintLabel.text = "HIGHER"
                
            case .tooHigh:
                
                hintLabel.isHidden = false
                hintLabel.text = "LOWER"
                
            }
            
            
            print("Correct: \(result), tries: \(tries)")
        }else {
            print("No input")
            showAlert(title: "Error", message: "Please enter a number")
        }
    }
    
    func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hintLabel.isHidden = true
    }



}

