import XCTest
import SwiftStyleSheets

class MarginTests: XCTestCase {
    func testMargin() {
        let marginTop = Margin(top: .Auto)
        let marginRight = Margin(right: .Inherit)
        let marginBottom = Margin(bottom: .Length(3.14, .Px))
        
        let horizontalMarginLength: Value = .Length(10, .Px)
        let horizontalMargin = Margin(right: horizontalMarginLength, left: horizontalMarginLength)
        
        XCTAssertEqual("margin-top: auto;", marginTop.description)
        XCTAssertEqual("margin-right: inherit;", marginRight.description)
        XCTAssertEqual("margin-bottom: 3.14px;", marginBottom.description)
        XCTAssertEqual("margin-right: 10px; margin-left: 10px;", horizontalMargin.description)
    }
}
