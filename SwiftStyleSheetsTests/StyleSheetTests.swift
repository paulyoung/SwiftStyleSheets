import XCTest
import SwiftStyleSheets

class StyleSheetTests: XCTestCase {
    func testStyleSheet() {
        let margin: Value = .Length(10, .Px)
        
        let styleSheet = StyleSheet {[
            RuleSet("header") {[
                Margin(bottom: margin)
            ]},
            RuleSet("footer") {[
                Margin(top: margin)
            ]},
        ]}
        
        XCTAssertEqual("header { margin-bottom: 10px; }\nfooter { margin-top: 10px; }\n", styleSheet.description)
    }
}
