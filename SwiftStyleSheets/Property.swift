/// A property.
public protocol Property: Indentable {
    func string(indentation: Int) -> String
}

/// A type-erased property.
public struct AnyProperty: Property {
    private let _string: (Int) -> String
    
    public init(_ property: Property) {
        self._string = property.string
    }
    
    public func string(indentation: Int = 0) -> String {
        return _string(indentation)
    }
}
