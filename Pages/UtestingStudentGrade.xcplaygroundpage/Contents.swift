//: [Previous](@previous)

import Foundation
import UIKit
import XCTest

/*
An University has the following grading policy:

 Every student receives a grade in the inclusive range from 0 to 100.
Any grade less than 40 is a failing grade.
 
 Sam is a professor at the university and likes to round each
student's grade according to these rules:

If the difference between the grade and the next multiple of 5 is less
 than 3, round  up to the next multiple of 5.
If the value of  is less than , no rounding occurs as the result will still be a failing grade.
Examples

 grade = 84 round to 85 (85 - 84 is less than 3)
 grade = 29 do not round (result is less than 40)
 grade = 57 do not round (60 - 57 is 3 or higher)
 
Given the initial value of  for each of Sam's  students, write code to automate the rounding process.

   |||Function Description|||:

Complete the function gradingStudents in the editor below.

gradingStudents has the following parameter(s):

- int grades[n]: the grades before rounding
Returns

- int[n]: the grades after rounding as appropriate.
 
*/

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

class AlgorithmsTests: XCTestCase {
    var algorithms: Algorithms!
    
    override func setUp() {
        super.setUp()
        algorithms = .init()
    }
    
    
    func normalCaseTests() {
        // Given
        let givenGrade = [84,26,57]
        
        //When
        let result = algorithms.gradingStudents(grades: givenGrade)
        
        // Then
        XCTAssertEqual(result, [85,26,57])
    }
    
    func moreThanThreeValues() {
        // Given
        let givenGrade = [73,67,38,33]
        
        //When
        let result = algorithms.gradingStudents(grades: givenGrade)
        
        // Then
        XCTAssertEqual(result, [75,67,40,33])
    }
    
    func aVeryBigArray() {
        // Given
        let givenGrade = [44,84,94,21,0,18,100,18,62,30,61,53,0,43,2,29,53,61,40,14]
        
        //When
        let result = algorithms.gradingStudents(grades: givenGrade)
        
        // Then
        XCTAssertEqual(result, [45,85,95,21,0,18,100,18,62,30,61,55,0,45,2,29,55,61,40,14])
    }
}

AlgorithmsTests.defaultTestSuite.run()
