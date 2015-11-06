/// A selector.
public struct Selector {
    let elements: [Element]
    
    public init(_ elements: [ Element ]) {
        self.elements = elements
    }
    
    public init(_ element: Element) {
        self.init([element])
    }
    
    public var string: String {
        return elements.map({ $0.string }).joinWithSeparator(" ")
    }
}
