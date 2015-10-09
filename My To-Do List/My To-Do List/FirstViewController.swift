//
//  FirstViewController.swift
//  My To-Do List
//
//  Created by Tracy Chen on 10/6/15.
//  Copyright © 2015 Tracy Chen. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
//    @IBOutlet var task1: UITableView!

    @IBOutlet weak var task1: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskMgr.tasks.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "holder")

        cell.textLabel?.text = taskMgr.tasks[indexPath.row].name
        cell.detailTextLabel?.text = taskMgr.tasks[indexPath.row].description
        
        return cell
    }

    override func viewWillAppear(animated: Bool) {
        task1.reloadData()
    }
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        // Intentionally blank. Required to use UITableViewRowActions
    }
    
    
    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        
        let deleteClosure = { (action: UITableViewRowAction!, indexPath: NSIndexPath!) -> Void in 
            taskMgr.tasks.removeAtIndex(indexPath.row)
            self.task1.reloadData()
        
            print("Delete closure called")
        }
        
        
        let completeClosure = { (action: UITableViewRowAction!, indexPath: NSIndexPath!) -> Void in //newCompleted.addCompleted(taskMgr.tasks[indexPath.row].name, description: taskMgr.tasks[indexPath.row].description)
            let currentdate = NSDate()
            newCompleted.addCompleted(taskMgr.tasks[indexPath.row].name, date: currentdate)
            taskMgr.tasks.removeAtIndex(indexPath.row)
            self.task1.reloadData()
            print("Compete closure called")
        }
        
        let deleteAction = UITableViewRowAction(style: .Default, title: "Delete", handler: deleteClosure)
        let completeAction = UITableViewRowAction(style: .Normal, title: "Complete", handler: completeClosure)
        
        return [deleteAction, completeAction]
    }
    

    
//    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
//        
//        let editmenu = UITableViewRowAction(style: UITableViewRowActionStyle.Default, title: "Edit") { (action:UITableViewRowAction!, indexPath: NSIndexPath!) -> Void in
//            
//            let actions = UIAlertController(title: nil, message: "", preferredStyle: .ActionSheet)
//            
//            let complete = UIAlertAction(title: "Complete", style: UIAlertActionStyle.Default, handler: {(alertAction: UIAlertAction!) in newCompleted.addCompleted(taskMgr.tasks[indexPath.row].name, description: taskMgr.tasks[indexPath.row].description)
//                taskMgr.tasks.removeAtIndex(indexPath.row)
//                self.task1.reloadData() })
//            let delete = UIAlertAction(title: "Delete", style: UIAlertActionStyle.Destructive, handler: {(alertAction: UIAlertAction!) in
//                taskMgr.tasks.removeAtIndex(indexPath.row)
//                self.task1.reloadData() })
//            let cancel = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil)
//            
//            actions.addAction(complete)
//            actions.addAction(delete)
//            actions.addAction(cancel)
//            
//            
//            self.presentViewController(actions, animated: true, completion: nil)
//            
//        }
//        
//        return [editmenu]
//    }
 
}

