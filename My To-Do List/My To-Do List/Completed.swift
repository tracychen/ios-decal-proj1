//
//  Completed.swift
//  My To-Do List
//
//  Created by Tracy Chen on 10/9/15.
//  Copyright © 2015 Tracy Chen. All rights reserved.
//

import UIKit

var newCompleted: Completed = Completed()

struct completedlist {
    var name = "Not Named"
    var date = NSDate()
}


class Completed: NSObject {

    var count = [completedlist]()
    
    func addCompleted(name:String, date: NSDate) {
        count.append(completedlist(name: name, date: date))
//        print(name, date)
    }
    
    func removeOld() {
        let currentTime = NSDate();
        for (index, list) in count.enumerate() {
//            print(currentTime.timeIntervalSinceReferenceDate - 86400)
//            print(currentTime.timeIntervalSinceReferenceDate - 30)

//            print(list.date.timeIntervalSinceReferenceDate)
            if (currentTime.timeIntervalSinceReferenceDate - 86400 > list.date.timeIntervalSinceReferenceDate) {
                count.removeAtIndex(index)
            }
        }
    }
    
}
