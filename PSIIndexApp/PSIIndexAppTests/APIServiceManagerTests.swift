//
//  APIServiceManagerTests.swift
//  PSIIndexAppTests
//
//  Created by Prateek on 23/11/19.
//  Copyright © 2019 Prateek. All rights reserved.
//

import Foundation
import XCTest
@testable import PSIIndexApp

class APIServiceManagerTests: XCTestCase {
    var apiCall: APIServiceManager?
    
    override func setUp() {
        super.setUp()
        apiCall = APIServiceManager()
    }
    
    override func tearDown() {
        apiCall = nil
        super.tearDown()
    }
    
    func testFetchPSIAPI() {
        
        let expect = XCTestExpectation(description: "callback")
        
        apiCall?.getPSIData(param: "date", value: "2019-11-23", completion: { result in
            switch result {
            case .success(let psi):
                expect.fulfill()
                XCTAssertNotNil(psi)
                XCTAssertNotNil(psi.regionMetadata)
                XCTAssertNotNil(psi.items)
            case .failure( _):
                XCTFail()
            }
        })
        
        wait(for: [expect], timeout: 5.0)
    }
}

