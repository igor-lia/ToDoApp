//
//  LocationTests.swift
//  ToDoAppTests
//
//  Created by Ігор Ляхович on 08.11.2022.
//

import XCTest
import CoreLocation
@testable import ToDoApp


final class LocationTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testInitSetsName() {
        let location = Location(name: "Lviv")
        
        XCTAssertEqual(location.name, "Lviv")
    }
    
    func testInitSetsCoordinates() {
        let coordinate = CLLocationCoordinate2D(latitude: 1, longitude: 2)
        
        let location = Location(name: "Lviv", coordinate: coordinate)
        
        XCTAssertEqual(location.coordinate?.latitude, coordinate.latitude)
        XCTAssertEqual(location.coordinate?.longitude, coordinate.longitude)
    }
    
    func testCanBeCreatedFromPlistDictionary() {
        let location = Location(name: "Hello", coordinate: CLLocationCoordinate2D(latitude: 49.85910026206016, longitude: 24.01840198787776))
        
        let dict: [String : Any] = ["name" : "Hello",
                                    "latitude" : 49.85910026206016,
                                    "longitude" : 24.01840198787776]
        
        let createdLocation = Location(dict: dict)
        
        XCTAssertEqual(location, createdLocation)
    }
    
    func testCanBeSerializedIntoDictionary() {
        let location = Location(name: "Hello", coordinate: CLLocationCoordinate2D(latitude: 49.85910026206016, longitude: 24.01840198787776))
        let generatedLocation = Location(dict: location.dict)
        
        XCTAssertEqual(location, generatedLocation)
    }
}
