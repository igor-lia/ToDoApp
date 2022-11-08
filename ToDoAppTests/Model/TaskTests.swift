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
}
