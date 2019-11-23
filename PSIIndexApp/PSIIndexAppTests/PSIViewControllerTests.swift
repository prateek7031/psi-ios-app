//
//  PSIViewControllerTests.swift
//  PSIIndexAppTests
//
//  Created by Prateek on 23/11/19.
//  Copyright © 2019 Prateek. All rights reserved.
//


import Quick
import Nimble

@testable import PSIIndexApp

class PSIViewControllerSpec: QuickSpec {
    override func spec() {
        var viewController: PSIViewController!
        
        beforeEach {
            viewController = UIStoryboard(name: "Main", bundle:
                nil).instantiateViewController(withIdentifier:
                    "PSIViewController") as! PSIViewController
            _ = viewController.view
        }
        
        context("when the view gets loaded") {
            it("should have initialized the map on view") {
                expect(viewController.mapView).toNot(beNil())
            }
        }
    }
}
