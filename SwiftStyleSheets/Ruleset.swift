/// A rule set.
public struct RuleSet {
    let selector: String
    let properties: [Property]
    
    public init(_ selector: String, _ properties: () -> [Property]) {
        self.selector = selector
        self.properties = properties()
    }
    
    public init(_ selector: String, _ property: () -> Property) {
        self.init(selector) {[
            property()
        ]}
    }
}

extension RuleSet: CustomStringConvertible {
    public var description: String {
        let propertiesString = properties.map({ $0.description }).joinWithSeparator("")
        return "\(selector) { \(propertiesString) }"
    }
}
