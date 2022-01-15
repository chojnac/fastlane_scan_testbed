//
//  SecondScreenTests.swift
//  FastlaneScanTestbedUITests
//
//  Created by Wojciech Chojnacki on 15/01/2022.
//

import XCTest

class SecondScreenTests: XCTestCase {

    func test01() throws {
        let app = XCUIApplication()
        app.launch()
        
        let cells = app.cells
        XCTAssertTrue(cells.element.waitForExistence(timeout: 2))
        cells.firstMatch.tap()
        sleep(2)
        
        XCTAssertTrue(app.navigationBars.staticTexts["Lecrerc"].waitForExistence(timeout: 2))
        XCTAssertTrue(app.staticTexts["It is I, Lecrerc"].waitForExistence(timeout: 2))
    }

}
