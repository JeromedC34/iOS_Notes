//
//  iOS_NotesUITests.swift
//  iOS_NotesUITests
//
//  Created by imac on 09/11/2016.
//  Copyright © 2016 imac. All rights reserved.
//

import XCTest

class iOS_NotesUITests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        let app = XCUIApplication()
        app.launchArguments = ["ResetNote"]
        app.launch()
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInputNewNote() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        
        let app = XCUIApplication()
        let newnoteinputTextField = app.textFields["newNoteInput"]
        let newnoteaddbuttonButton = app.buttons["newNoteAddButton"]
        let allnotesTextView = app.textViews["allNotes"]
        
        newnoteinputTextField.tap()
        newnoteinputTextField.typeText("Hello")
        newnoteaddbuttonButton.tap()
        
        XCTAssertEqual(newnoteinputTextField.value as! String, "")
        XCTAssertEqual(allnotesTextView.value as! String, "Hello")
        
        newnoteinputTextField.tap()
        newnoteinputTextField.typeText("Hello again")
        newnoteaddbuttonButton.tap()
        
        XCTAssertEqual(newnoteinputTextField.value as! String, "")
        XCTAssertEqual(allnotesTextView.value as! String, "Hello\nHello again")
    }
}
