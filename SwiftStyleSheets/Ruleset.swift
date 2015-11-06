/// A rule set.
public struct RuleSet: Indentable {
    let selector: Selector
    let properties: [AnyProperty]
    
    public init(_ selector: Selector, _ properties: [AnyProperty]) {
        self.selector = selector
        self.properties = properties
    }
    
    public init(_ element: Element, _ properties: [AnyProperty]) {
        self.init(Selector(element), properties)
    }
    
    public init(_ selector: Selector, _ property: Property) {
        self.init(selector, [ AnyProperty(property) ])
    }
    
    public init(_ element: Element, _ property: Property) {
        self.init(Selector(element), [ AnyProperty(property) ])
    }
    
    public func string(indentation: Int = 0) -> String {
        let indentLevel = indentation == 0 ? 2 : indentation * 2
        let propertiesString = properties.map({ $0.string(indentLevel) }).joinWithSeparator("")
        return "\(selector.string) {\n\(propertiesString)\n}"
    }
}
