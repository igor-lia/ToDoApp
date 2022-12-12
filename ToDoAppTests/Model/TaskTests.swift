//
//  TaskTests.swift
//  ToDoAppTests
//
//  Created by Ігор Ляхович on 08.11.2022.
//

import XCTest
@testable import ToDoApp

final class TaskTests: XCTestCase {

    func testInitTaskWithTitle() {
        let task = Task(title: "Hello")
        
        XCTAssertNotNil(task)
    }
    
    func testInitTaskWithTitleAndDescription() {
        let task = Task(title: "Hello", description: "First comment")
        
        XCTAssertNotNil(task)
    }
    
    func testWhenGivenTitleSetsTitle() {
        let task = Task(title: "Hello")
        
        XCTAssertEqual(task.title, "Hello")
    }

    func testWhenGivenDescriptionSetsDescription() {
        let task = Task(title: "Hello", description: "First comment")
        
        XCTAssertEqual(task.description, "First comment")
    }
    
    func testTaskInitsWithDate() {
        let task = Task(title: "Hello")
        
        XCTAssertNotNil(task.date)
    }
    
    func testWhenGivenLocationSetsLocation() {
        let location = Location(name: "Lviv")
        
        let task = Task(title: "Hello",
                        description: "people",
                        location: location)
        
        XCTAssertEqual(location, task.location)
    }
    
    func testCanBeCreatedFromPlistDictionary() {
        let date = Date(timeIntervalSince1970: 5)
        let location = Location(name: "Lviv")
        let task = Task(title: "Hello", description: "First comment", date: date, location: location)
        
        let locationDictionary: [String : Any] = ["name" : "Lviv"]
        let dictionary: [String: Any] = ["title" : "Hello",
                                         "description" : "First comment",
                                         "date" : date,
                                         "location" : locationDictionary]
        let createdTask = Task(dict: dictionary)
        
        XCTAssertEqual(task, createdTask)
    }
}
