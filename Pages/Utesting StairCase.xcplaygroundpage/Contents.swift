import Foundation
import XCTest
import Foundation

///* This algorithim is for count how many time is the biggest value (a candle in this case) repeated */

/*
 Given five positive integers, find the minimum and maximum values that
 can be calculated by summing exactly four of the five integers.
 Then print the respective minimum and maximum values as a single
 line of two space-separated long integers.
 
 EXAMPLE:
 arr: [1,3,5,7,9]
 
 The minimum sum is 1 + 3 + 5 + 7 = 16  and the maximum sum is 3 + 5 + 7 + 9 = 24 .
 Then the funciton should return [16,24]
 */

struct Algorithm{
    func biggerBirthdayCakeCandlesCounter(candles: [Int]) -> Int {
        var counter = 0
        let maxNumber = candles.max()
        
        for number in candles{
            if number == maxNumber!{
                counter = counter + 1
            }
        }
        
        return counter
    }
}

class AlgorithmsTests: XCTestCase {
    var algorithms: Algorithm!
    
    override func setUp() {
        super.setUp()
        algorithms = .init()
    }
    
    
    func testingMinimumBorderCase() {
        // Given
        let givenGrade = [1,3,3,2]
        
        //When
        let result = algorithms.biggerBirthdayCakeCandlesCounter(candles: givenGrade)
        
        // Then
        XCTAssertEqual(result, 2)
    }
    
    func testingMaximumBorderCase() {
        // Given
        let givenGrade = [44,84,94,21,0,18,100,18,62,100,61,53,0,43,2,100,53,61,40,14]

        //When
        let result = algorithms.biggerBirthdayCakeCandlesCounter(candles: givenGrade)
        
        // Then
        XCTAssertEqual(result, 3)
    }
    
    func testingTooMuchRepetitionsOfOneSingleValue() {
        // Given
        let givenGrade = [1,2,3,4,4,4,4,4,4]

        //When
        let result = algorithms.biggerBirthdayCakeCandlesCounter(candles: givenGrade)
        
        // Then
        XCTAssertEqual(result, 6)
    }
    
    func testingJustOneRepetitionOfOneSingleValue() {
        // Given
        let givenGrade = [1,2,3,4,5,6,7,8,9,10,10]

        //When
        let result = algorithms.biggerBirthdayCakeCandlesCounter(candles: givenGrade)
        
        // Then
        XCTAssertEqual(result, 2)
    }
}

AlgorithmsTests.defaultTestSuite.run()
