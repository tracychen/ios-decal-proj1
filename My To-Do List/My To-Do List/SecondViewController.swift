//
//  SecondViewController.swift
//  My To-Do List
//
//  Created by Tracy Chen on 10/6/15.
//  Copyright © 2015 Tracy Chen. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var field1: UITextField!
    @IBOutlet var field2: UITextField!
    
    @IBAction func fillName(sender: UIButton){ // done button
        if (field1.text! == "") {
            self.view.endEditing(true)
            field2.text! = ""
            return
        }
        taskMgr.addTask(field1.text!, description: field2.text!)
        self.view.endEditing(true)
        field1.text! = ""
        field2.text! = ""
        self.tabBarController?.selectedIndex = 0
    }
    
    @IBAction func cancel(sender:UIButton) {
        self.view.endEditing(true)
        field1.text! = ""
        field2.text! = ""
        self.tabBarController?.selectedIndex = 0
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true
    }// called when 'return' key pressed. return NO to ignore.

}

