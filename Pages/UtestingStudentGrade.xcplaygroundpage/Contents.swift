//: [Previous](@previous)

import Foundation
import UIKit
import XCTest

struct Algorithms{
    func gradingStudents(grades: [Int]) -> [Int] {
        var finalGrades: [Int] = []
        
        for number in grades{
            let num = number + 2
            let numTwo = number + 1
            
            if num >= 39{
                if num % 5 == 0{
                    finalGrades.append(num)
                    
                }else if numTwo % 5 == 0{
                    
                    finalGrades.append(num - 1)
                }else{
                    finalGrades.append(number)
                }
            }else{
                finalGrades.append(number)
            }
            
        }
        //print(finalGrades)
        return finalGrades
    }
}


//gradingStudents(grades: [44,84,94,21,0,18,100,18,62,30,61,53,0,43,2,29,53,61,40,14])

class AlgorithmsTests: XCTestCase {
    var algorithms: Algorithms!
    
    override func setUp() {
        super.setUp()
        algorithms = .init()
    }
    
    
    func test1() {
        // Given
        let givenGrade = [73,67,38,33]
        
        //When
        let result = algorithms.gradingStudents(grades: givenGrade)
        
        // Then
        XCTAssertEqual(result, [75,67,40,33])
    }
    
    func test2() {
        // Given
        let givenGrade = [44,84,94,21,0,18,100,18,62,30,61,53,0,43,2,29,53,61,40,14]
        
        //When
        let result = algorithms.gradingStudents(grades: givenGrade)
        
        // Then
        XCTAssertEqual(result, [45,85,95,21,0,18,100,18,62,30,61,55,0,45,2,29,55,61,40,14])
    }
}

AlgorithmsTests.defaultTestSuite.run()
