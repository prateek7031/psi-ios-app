//
//  PSIAPIDataTests.swift
//  PSIIndexAppTests
//
//  Created by Prateek on 23/11/19.
//  Copyright © 2019 Prateek. All rights reserved.
//

import XCTest
@testable import PSIIndexApp

class PSIAPIDataTests: XCTestCase {
    
    var psiApiDataModelTest: PSIData!
    
    override func setUp() {
        super.setUp()
        self.psiApiDataModelTest = PSIData(name: "central", latitude: 1.357, longitude: 103.819)
    }
    
    override func tearDown() {
        self.psiApiDataModelTest = nil
        super.tearDown()
    }
    
    
    func testModelIsNotNil() {
        XCTAssertNotNil(self.psiApiDataModelTest)
        XCTAssertNotNil(self.psiApiDataModelTest.lat)
        XCTAssertNotNil(self.psiApiDataModelTest.lon)
        XCTAssertNotNil(self.psiApiDataModelTest.name)
    }

}
