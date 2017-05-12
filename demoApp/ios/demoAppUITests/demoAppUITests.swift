//
//  demoAppUITests.swift
//  demoAppUITests
//
//  Created by Leo on 12/05/2017.
//  Copyright © 2017 Facebook. All rights reserved.
//

import XCTest

class demoAppUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
  
   func testExample() {
    let app = XCUIApplication()
    app.icons["demoApp"].tap()
    snapshot("Launch")
    app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other)["Welcome to React Native! To get started, edit index.ios.js Press Cmd+R to reload,\nCmd+D or shake for dev menu "].children(matching: .other)["Welcome to React Native! To get started, edit index.ios.js Press Cmd+R to reload,\nCmd+D or shake for dev menu "].children(matching: .other)["Welcome to React Native! To get started, edit index.ios.js Press Cmd+R to reload,\nCmd+D or shake for dev menu"].children(matching: .other)["Welcome to React Native! To get started, edit index.ios.js Press Cmd+R to reload,\nCmd+D or shake for dev menu"].tap()
    snapshot("ReactNative")

    }
    
}
