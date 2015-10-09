//
//  ThirdViewController.swift
//  My To-Do List
//
//  Created by Tracy Chen on 10/9/15.
//  Copyright © 2015 Tracy Chen. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var numCompleted: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        newCompleted.removeOld()
        numCompleted.text = String(newCompleted.count.count)
    }
    
}
