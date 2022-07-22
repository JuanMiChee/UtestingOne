import Foundation
import UIKit
import XCTest

//////*Given a time in 12-hour AM/PM format, convert it to military (24-hour) time.*

/*
Note: - 12:00:00AM on a 12-hour clock is 00:00:00 on a 24-hour clock.
- 12:00:00PM on a 12-hour clock is 12:00:00 on a 24-hour clock.

Examples:
 
- s = "12:01:00PM"
Return '12:01:00'.

-s + "12:01;00AM"
Return '00:01:00'.

* Function Description *:
 
 Complete the timeConversion function in the editor below. It
should return a new string representing the input time in 24
hour format.
 */

struct Algorithms{
    func normalTimeConversionToMiliratyTime(s: String) -> String {
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
    
    
    func resetHourFrom12To00Test() {
        // Given
        let hour = "07:05:45PM"
        
        //When
        let result = algorithms.normalTimeConversionToMiliratyTime(s: hour)
        
        // Then
        XCTAssertEqual(result, "19:05:45")
    }
    
    func onlyAddingValueToTheNumber() {
        // Given
        let hour = "10:05:45PM"
        
        //When
        let result = algorithms.normalTimeConversionToMiliratyTime(s: hour)
        
        // Then
        XCTAssertEqual(result, "22:05:45")
    }
    
    func removingAmOrPmPronoum() {
        // Given
        let hour = "12:05:45AM"
        
        //When
        let result = algorithms.normalTimeConversionToMiliratyTime(s: hour)
        
        // Then
        XCTAssertEqual(result, "00:05:45")
    }
    
    func testingSameTimeCase() {
        // Given
        let hour = "06:05:45AM"
        
        //When
        let result = algorithms.normalTimeConversionToMiliratyTime(s: hour)
        
        // Then
        XCTAssertEqual(result, "06:05:45")
    }
    
    func borderCaseMaximumValue() {
        // Given
        let hour = "12:00:00AM"
        
        //When
        let result = algorithms.normalTimeConversionToMiliratyTime(s: hour)
        
        // Then
        XCTAssertEqual(result, "00:00:00")
    }
    
    func borderCaseMinimumValue() {
        // Given
        let hour = "12:00:00PM"
        
        //When
        let result = algorithms.normalTimeConversionToMiliratyTime(s: hour)
        
        // Then
        XCTAssertEqual(result, "12:00:00")
    }
}

AlgorithmsTests.defaultTestSuite.run()
