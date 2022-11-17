//
//  TaskCell.swift
//  ToDoApp
//
//  Created by Ігор Ляхович on 14.11.2022.
//

import UIKit

class TaskCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    func configure(withTask task: Task) {
        self.titleLabel.text = task.title
        
        let df = DateFormatter()
        df.dateFormat = "MMM d, yyyy"
        if let date = task.date {
            let dateString = df.string(from: date)
            dateLabel.text = dateString
            
            locationLabel.text = task.location?.name
        }
    }
}
