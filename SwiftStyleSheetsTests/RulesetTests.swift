import XCTest
import SwiftStyleSheets

class RuleSetTests: XCTestCase {
    func testRuleSet() {
        let ruleSet = RuleSet("#main") { Margin(top: .Length(10, .Px)) }
        XCTAssertEqual("#main { margin-top: 10px; }", ruleSet.description)
    }
}
