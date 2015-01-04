//
//  jCalTests.swift
//  jCalTests
//
//  Created by Alexander Robertson on 12/23/14.
//  Copyright (c) 2014 Alexander Robertson. All rights reserved.
//

import XCTest

class jCalTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDateConversion() {
        for (greg_string, french_date) in greg2jac {
            let total_days = get_days_between_abolition(greg_string)
            let today_french_date = computeFrenchDate(total_days)
            XCTAssertTrue(today_french_date == french_date, "Pass")
        }
    }
}