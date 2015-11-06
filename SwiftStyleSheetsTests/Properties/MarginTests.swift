import XCTest
import SwiftStyleSheets

class MarginTests: XCTestCase {
    func testMargin() {
        let margin = Margin()
        let marginTop = Margin(.Top(.Auto))
        let marginRight = Margin(.Right(.Inherit))
        let marginBottom = Margin(.Bottom(.Length(3.14, .Px)))
        
        let horizontalMargin = Margin([
            .Left(.Length(10, .Px)),
            .Right(.Length(10, .Px))
        ])
        
        XCTAssertEqual("margin: 0;", margin.string())
        XCTAssertEqual("margin-top: auto;", marginTop.string())
        XCTAssertEqual("margin-right: inherit;", marginRight.string())
        XCTAssertEqual("margin-bottom: 3.14px;", marginBottom.string())
        XCTAssertEqual("margin-left: 10px;\nmargin-right: 10px;", horizontalMargin.string())
    }
}
