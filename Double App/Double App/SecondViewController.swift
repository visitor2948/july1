//
//  SecondViewController.swift
//  Double App
//
//  Created by student on 7/3/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var timer = Timer()
    var isRunning = false
    var clock = 210
    
    @objc func runTimer() {
        if clock > 0 {
            clock -= 1
            result.text = String(clock)
        } else {
            timer.invalidate()
            isRunning = false
        }
    }
    @IBAction func pausePressed(_ sender: Any) {
        if isRunning {
            timer.invalidate()
            isRunning = false
        }
    }
    
    @IBAction func playPressed(_ sender: Any) {
        if !isRunning {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(SecondViewController.runTimer),
                                         userInfo: nil, repeats: true)
            isRunning = true
        }
    }
    
    @IBAction func minusPressed(_ sender: Any) {
        if clock >= 10 {
            clock -= 10
            result.text = String(clock)
        }
    }
    
    @IBAction func resetPressed(_ sender: Any) {
        clock = 210
        result.text = String(clock)
    }
    
    @IBAction func plusPressed(_ sender: Any) {
        clock += 10
        result.text = String(clock)
    }
    
    @IBOutlet weak var result: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

