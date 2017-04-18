//
//  ViewController.swift
//  RetroCalculator
//
//  Created by Allen Boynton on 4/14/17.
//  Copyright © 2017 ABtech Applications. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var outputScreen: UILabel!
    @IBOutlet weak var clearButton: UIButton!
    
    enum Operation: String {
        case Divide   = "/"
        case Multiply = "*"
        case Subtract = "-"
        case Add      = "+"
        case Empty    = "Empty"
    }
    
    var currentOperation = Operation.Empty
    var runningNumber = ""
    var leftValStr    = ""
    var rightValStr   = ""
    var result        = ""
    
    var buttonSound: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        outputScreen.text = "0"
        
        let path = Bundle.main.path(forResource: "btn", ofType: "wav")
        let soundLocal = URL(fileURLWithPath: path!)
        
        do {
            try buttonSound = AVAudioPlayer(contentsOf: soundLocal)
            buttonSound.prepareToPlay()
        }
        catch let error as NSError {
            print(error.debugDescription)
        }
    }
    
    @IBAction func buttonPressed(sender: UIButton) {
        playSound()
        
        runningNumber += "\(sender.tag)"
        outputScreen.text = runningNumber
    }

    func playSound() {
        if buttonSound.isPlaying {
            buttonSound.stop()
        }
        buttonSound.play()
    }
    
    @IBAction func onAddPressed(sender: AnyObject) {
        processOperation(operation: .Add)
    }
    
    @IBAction func onSubtractPressed(sender: AnyObject) {
        processOperation(operation: .Subtract)
    }
    
    @IBAction func onMultiplyPressed(sender: AnyObject) {
        processOperation(operation: .Multiply)
    }
    
    @IBAction func onDividePressed(sender: AnyObject) {
        processOperation(operation: .Divide)
    }
    
    @IBAction func onEqualsPressed(sender: AnyObject) {
        processOperation(operation: currentOperation)
    }
    
    @IBAction func onClearPressed(_ sender: Any) {
        playSound()
        runningNumber = ""
        outputScreen.text = "0"
    }
    
    func processOperation(operation: Operation) {
        playSound()
        if currentOperation != Operation.Empty {
            
            if runningNumber != "" {
                rightValStr = runningNumber
                runningNumber = ""
                
                if currentOperation == Operation.Add {
                    result = "\(Double(leftValStr)! + Double(rightValStr)!)"
                }
                else if currentOperation == Operation.Subtract {
                    result = "\(Double(leftValStr)! - Double(rightValStr)!)"
                }
                else if currentOperation == Operation.Multiply {
                    result = "\(Double(leftValStr)! * Double(rightValStr)!)"
                }
                else if currentOperation == Operation.Divide {
                    
                    if rightValStr == "0" {
                        outputScreen.text = "E"
                    }
                    else {
                        result = "\(Double(leftValStr)! / Double(rightValStr)!)"
                    }
                }
                
                leftValStr = result
                outputScreen.text = result
            }
            
            currentOperation = operation
        }
        else {
            // First time a number has been pressed
            leftValStr = runningNumber
            runningNumber = ""
            currentOperation = operation
        }
    }
}

