import XCTest
import SwiftStyleSheets

class RuleSetTests: XCTestCase {
    func testRuleSet() {
        let ruleSet = RuleSet(.ID("main"), Margin(.Top(.Length(10, .Px))))
        XCTAssertEqual("#main {\n  margin-top: 10px;\n}", ruleSet.string())
    }
}
