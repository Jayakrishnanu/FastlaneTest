//
//  FastlaneTestTests.swift
//  FastlaneTestTests
//
//  Created by Jayakrishnan Unnikrishnan on 3/12/20.
//  Copyright © 2020 Jayakrishnan Unnikrishnan. All rights reserved.
//

import XCTest
@testable import FastlaneTest

class FastlaneTestTests: XCTestCase {

    var arithmetic: Arithmetic!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        arithmetic = Arithmetic()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    
    func testAddition() {
        let sum = 15
        XCTAssertEqual(arithmetic.addition(a: 10, b: 5), sum)
    }
    
    func testMultiplication() {
        let multiply = 50
        XCTAssertEqual(arithmetic.multipy(a: 5, b: 10), multiply)
    }

}
