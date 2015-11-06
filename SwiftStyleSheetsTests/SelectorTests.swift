import XCTest
import SwiftStyleSheets

class SelectorTests: XCTestCase {
    func testSelector() {
        let classSelector = Selector(.Class("button"))
        let idSelector = Selector(.ID("main"))
        let tagSelector = Selector(.Tag("a"))
        
        XCTAssertEqual(".button", classSelector.string)
        XCTAssertEqual("#main", idSelector.string)
        XCTAssertEqual("a", tagSelector.string)
    }
}
