//
//  FirstViewController.swift
//  Double App
//
//  Created by student on 7/3/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var userInput: UITextField!
    @IBAction func button(_ sender: Any) {
        let result2:Int = Int(userInput.text!)! * 7
        result.text = String(result2)
    }
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

