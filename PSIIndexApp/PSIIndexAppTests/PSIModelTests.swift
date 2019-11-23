//
//  PSITests.swift
//  PSI AppTests
//
//  Created by Prateek on 23/11/19.
//  Copyright © 2019 Prateek. All rights reserved.
//

import XCTest
import SwiftyJSON
@testable import PSIIndexApp

class PSIModelTests: XCTestCase {
    
    var psiModelTest: PSI!
    
    override func setUp() {
        super.setUp()
        
        let testJSON: JSON = [
            "region_metadata": NSArray(),
            "items": NSArray()
        ]
        
        self.psiModelTest = PSI(json: testJSON)
    }
    
    override func tearDown() {
        self.psiModelTest = nil
        super.tearDown()
    }
    
    func testModelNotNil() {
        XCTAssertNotNil(self.psiModelTest)
        XCTAssertNotNil(self.psiModelTest.items)
        XCTAssertNotNil(self.psiModelTest.regionMetadata)
        
    }
    
}
