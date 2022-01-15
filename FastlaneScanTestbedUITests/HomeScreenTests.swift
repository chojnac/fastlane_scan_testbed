import XCTest

class HomeScreenTests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func test01() throws {
        let app = XCUIApplication()
        app.launch()
        
        let cells = app.cells
        XCTAssertTrue(cells.element.waitForExistence(timeout: 2))
        XCTAssertEqual(cells.count, 2)
        XCTAssertTrue(cells.firstMatch.staticTexts["A spy"].waitForExistence(timeout: 2))
    }

}
