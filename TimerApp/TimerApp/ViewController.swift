//
//  ViewController.swift
//  TimerApp
//
//  Created by Михаил Фролов on 23.07.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var directionSwitch: UISwitch!
    @IBOutlet weak var directionSwitchedLabel: UILabel!
    @IBOutlet weak var ImageView: UIImageView!
    var timerScore = 0
    var timerStep = 1
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateScoreLabel()
        stopButton.isHidden = true
        clearButton.isHidden = true
        
        stopButton.layer.borderWidth = 3
        stopButton.layer.cornerRadius = 10
        startButton.layer.borderWidth = 3
        startButton.layer.cornerRadius = 10
        clearButton.layer.borderWidth = 3
        clearButton.layer.cornerRadius = 15
        
        
    }
    @objc func timerTick() {
        timerScore += timerStep
        updateScoreLabel()
    }
    
    func updateScoreLabel() {
        scoreLabel.text = "\(timerScore)"
        if timerScore >= 10 {
            view.backgroundColor = UIColor.systemGreen
        } else if timerScore <= -10 {
            view.backgroundColor = UIColor.systemRed
            } else {
            view.backgroundColor = UIColor.white
        }
    }

    @IBAction func startButtonDidPressed(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerTick),
              userInfo: nil, repeats: true)
        startButton.isHidden = true
        stopButton.isHidden = false
        clearButton.isHidden = false
    }
    
    @IBAction func stopButtonDidPressed(_ sender: Any) {
        timer?.invalidate()
        timer = nil
        stopButton.isHidden = true
        startButton.isHidden = false
    }
    
    @IBAction func clearButtonDidPressed(_ sender: Any) {
        timerScore = 0
        updateScoreLabel()
    }
    
    @IBAction func switchChanged(_ sender: Any) {
        timerStep = timerStep * (-1)
        
        if timerStep > 0 {
            directionSwitchedLabel.text = " + "
        } else {
            directionSwitchedLabel.text = " - "
        }
    }
    
}

