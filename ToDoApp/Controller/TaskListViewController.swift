//
//  ViewController.swift
//  ToDoApp
//
//  Created by Ігор Ляхович on 08.11.2022.
//

import UIKit

class TaskListViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var dataProvider: DataProvider!
    
    @IBAction func addNewTask(_ sender: UIBarButtonItem) {
        if let viewController = storyboard?.instantiateViewController(withIdentifier: String(describing: NewTaskViewController.self)) as? NewTaskViewController {
            present(viewController, animated: true)
        } 
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

