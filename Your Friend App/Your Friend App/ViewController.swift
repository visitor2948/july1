//
//  ViewController.swift
//  Your Friend App
//
//  Created by student on 7/1/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func hi(_ sender: Any) {
        message.text = "no"
    }
    @IBAction func bye(_ sender: Any) {
        message.text = "*kils dr strange*"
    }
    @IBAction func reset(_ sender: Any) {
        message.text = "Dormamu ive come to bargain"
    }
    @IBOutlet weak var message: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}







































//nice
