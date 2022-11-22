//
//  Task.swift
//  ToDoApp
//
//  Created by Ігор Ляхович on 08.11.2022.
//

import Foundation

struct Task {
    var title: String
    var description: String?
    let date: Date
    let location: Location?
    
    init(title: String, description: String? = nil, date: Date? = nil, location: Location? = nil) {
        self.title = title
        self.description = description
        self.date = date ?? Date()
        self.location = location
    }
}


extension Task: Equatable {
    static func == (lhs: Task, rhs: Task) -> Bool {
        if lhs.title == rhs.title,
           lhs.description == rhs.description,
           lhs.location == rhs.location {
            return true
        }
        return false
    }
}
