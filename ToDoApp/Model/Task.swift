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
    private(set) var date: Date?
    
    init(title: String, description: String? = nil) {
        self.title = title
        self.description = description
        self.date = Date()
    }
}
