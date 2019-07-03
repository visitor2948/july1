//
//  SecondViewController.swift
//  To Do List
//
//  Created by student on 7/2/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var userText: UITextField!
    @IBAction func button(_ sender: Any) {
        let itemObject = UserDefaults.standard.object(forKey: "taskList")
        
        var taskList: [String]
        
        if let tempTask = itemObject as? [String] {
            taskList = tempTask
            taskList.append(userText.text!)
            
            print(taskList)
    }
        else {
            taskList = [userText.text!]
        }
        UserDefaults.standard.set(taskList, forKey: "taskList")
        
        userText.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}
