//
//  TaskManager.swift
//  My To-Do List
//
//  Created by Tracy Chen on 10/6/15.
//  Copyright © 2015 Tracy Chen. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct task {
    var name = "Not Named"
    var description = "Not Described"
}


class TaskManager: NSObject {

    var tasks = [task]()
    
    func addTask(name: String, description: String) {
        tasks.append(task(name: name, description: description))
    }
    
}


