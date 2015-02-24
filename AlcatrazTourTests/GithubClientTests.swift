//
//  GithubClientTests.swift
//  AlcatrazTour
//
//  Created by MTER on 2015/02/24.
//  Copyright (c) 2015年 haranicle. All rights reserved.
//

import UIKit
import XCTest

class GithubClientTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
    func test_requestPlugins_worksFine() {
        let client = GithubClient()
        
        func onSucceed(plugins:[Plugin]) {
            plugins.map{println("\($0.name)")}
        }
        
        func onFailed(error:NSError) {
            println(error.description)
        }
        
        client.requestPlugins(onSucceed, onFailed: onFailed)
    }

}
