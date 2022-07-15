import Foundation
import XCTest
import Foundation


struct Algorithms{
    func birthdayCakeCandles(candles: [Int]) -> Int {
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
    var algorithms: Algorithms!
    
    override func setUp() {
        super.setUp()
        algorithms = .init()
    }
    
    
    func test1() {
        // Given
        let givenGrade = [1,3,3,2]
        
        //When
        let result = algorithms.birthdayCakeCandles(candles: givenGrade)
        
        // Then
        XCTAssertEqual(result, 2)
    }
    
    func test2() {
        // Given
        let givenGrade = [44,84,94,21,0,18,100,18,62,100,61,53,0,43,2,100,53,61,40,14]

        //When
        let result = algorithms.birthdayCakeCandles(candles: givenGrade)
        
        // Then
        XCTAssertEqual(result, 3)
    }
    
    func test3() {
        // Given
        let givenGrade = [1,2,3,4,4,4]

        //When
        let result = algorithms.birthdayCakeCandles(candles: givenGrade)
        
        // Then
        XCTAssertEqual(result, 3)
    }
}

AlgorithmsTests.defaultTestSuite.run()
