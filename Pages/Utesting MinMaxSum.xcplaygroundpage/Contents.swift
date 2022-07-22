import Foundation
import XCTest

///* This algorithim is for get the maximum sumatory value, and the minimum value given the array elements */
/*
 Given five positive integers, find the minimum and maximum values that
 can be calculated by summing exactly four of the five integers.
 Then print the respective minimum and maximum values as a single
 line of two space-separated long integers.
 
 EXAMPLE:
 arr: [1,3,5,7,9]
 
 The minimum sum is: 1 + 3 + 5 + 7 = 16. And the maximum sum is 3 + 5 + 7 + 9 = 24.
 Then the funciton should return [16,24]
 */

struct Algorithms{
    func miniMaxSum(arr: [Int]) -> [Int] {
        let minimum = arr.min()
        let maximum = arr.max()
        let actualSumatory = arr.reduce(0, +)
        
        let lastValueOne = actualSumatory - maximum!
        let lastValueTwo = actualSumatory - minimum!
        let returnValue: [Int] = [lastValueOne, lastValueTwo]
        
        print(returnValue)
        return returnValue
        
    }
}


class AlgorithmsTests: XCTestCase {
    var algorithms: Algorithms!
    
    override func setUp() {
        super.setUp()
        algorithms = .init()
    }
    
    
    func testNormalArray() {
        // Given
        let givenArray = [1,3,3,2]
        
        //When
        let result = algorithms.miniMaxSum(arr: givenArray)
        
        // Then
        XCTAssertEqual(result, [6,8])
    }
    
    func testBiggestSumatoryCase() {
        // Given
        let givenArray = [44,84,94,21,0,18,100,18,62,100,61,53,0,43,2,100,53,61,40,14]

        //When
        let result = algorithms.miniMaxSum(arr: givenArray)

        // Then
        XCTAssertEqual(result, [868, 968])
    }

    func testALotOfRepeatedValues() {
        // Given
        let givenArray = [1,2,3,4,4,4]

        //When
        let result = algorithms.miniMaxSum(arr: givenArray)

        // Then
        XCTAssertEqual(result, [14,17])
    }
}

AlgorithmsTests.defaultTestSuite.run()







