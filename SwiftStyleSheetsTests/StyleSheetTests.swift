import XCTest
import SwiftStyleSheets

class StyleSheetTests: XCTestCase {
    func testStyleSheet() {
        let margin: Value = .Length(10, .Px)
        
        let header = RuleSet(.Tag("header"), [
            AnyProperty(Margin(bottom: margin))
        ])
        
        let footer = RuleSet(.Tag("footer"), [
            AnyProperty(Margin(top: margin))
        ])
        
        let styleSheet = StyleSheet([
            header,
            footer
        ])
        
        XCTAssertEqual("header {\n  margin-bottom: 10px;\n}\n\nfooter {\n  margin-top: 10px;\n}\n", styleSheet.string)
    }
}
