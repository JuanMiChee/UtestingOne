import UIKit

import Foundation
import UIKit
import XCTest

var str = "Hello, playground"

//: [Next](@next)

struct Algorithms{
    func timeConversion(s: String) -> String {
        let dateAsStringg = s
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm:ssa"
        let date = dateFormatter.date(from: dateAsStringg)
        
        dateFormatter.dateFormat = "HH:mm:ss"
        let date24 = dateFormatter.string(from: date!)
        print(date24)
        return date24
    }
}

class AlgorithmsTests: XCTestCase {
    var algorithms: Algorithms!
    
    override func setUp() {
        super.setUp()
        algorithms = .init()
    }
    
    
    func test1() {
        // Given
        let hour = "07:05:45PM"
        
        //When
        let result = algorithms.timeConversion(s: hour)
        
        // Then
        XCTAssertEqual(result, "19:05:45")
    }
    
    func test2() {
        // Given
        let hour = "10:05:45PM"
        
        //When
        let result = algorithms.timeConversion(s: hour)
        
        // Then
        XCTAssertEqual(result, "22:05:45")
    }
    
    func test3() {
        // Given
        let hour = "12:05:45AM"
        
        //When
        let result = algorithms.timeConversion(s: hour)
        
        // Then
        XCTAssertEqual(result, "00:05:45")
    }
    
    func test4() {
        // Given
        let hour = "06:05:45AM"
        
        //When
        let result = algorithms.timeConversion(s: hour)
        
        // Then
        XCTAssertEqual(result, "06:05:45")
    }
    
    func test5() {
        // Given
        let hour = "12:00:00AM"
        
        //When
        let result = algorithms.timeConversion(s: hour)
        
        // Then
        XCTAssertEqual(result, "00:00:00")
    }
    
    func test6() {
        // Given
        let hour = "12:00:00PM"
        
        //When
        let result = algorithms.timeConversion(s: hour)
        
        // Then
        XCTAssertEqual(result, "12:00:00")
    }
}

AlgorithmsTests.defaultTestSuite.run()
