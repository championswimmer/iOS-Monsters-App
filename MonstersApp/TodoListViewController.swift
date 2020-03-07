//
//  ViewController.swift
//  MonstersApp
//
//  Created by Arnav Gupta on 07/03/20.
//  Copyright © 2020 Arnav Gupta. All rights reserved.
//

import UIKit

class TodoListViewController: UIViewController, UITableViewDataSource {

    var taskList = Array<String>()
    
    @IBOutlet var newTaskField: UITextField?
    @IBOutlet var taskListTableView: UITableView?


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.taskList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(
            style: .default, reuseIdentifier: String(indexPath.count)
        )
        cell.textLabel?.text = taskList[indexPath.item]
        return cell
    }
    
    
    @IBAction func addTask(sender: UIButton) {
        if let task = newTaskField?.text {
            taskList.append(task)
            newTaskField?.text = ""
        }
        print(taskList)
        taskListTableView?.reloadData()
    }
        
    

}

