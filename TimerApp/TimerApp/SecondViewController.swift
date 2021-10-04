//
//  SecondViewController.swift
//  TimerApp
//
//  Created by Михаил Фролов on 04.10.2021.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    var timerValue: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let value = timerValue {
            scoreLabel.text = "\(value)"
        } else {
            scoreLabel.text = "0"
        }
        // Do any additional setup after loading the view.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
