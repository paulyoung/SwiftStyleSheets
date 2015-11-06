/// Margin property.
public struct Margin: Property {
    public enum Component {
        case Top(Value)
        case Right(Value)
        case Bottom(Value)
        case Left(Value)
        
        var name: String {
            switch self {
            case Top: return "top"
            case Right: return "right"
            case Bottom: return "bottom"
            case Left: return "left"
            }
        }
        
        var string: String {
            switch self {
            case let Top(value): return value.string
            case let Right(value): return value.string
            case let Bottom(value): return value.string
            case let Left(value): return value.string
            }
        }
    }
    
    let name = "margin"
    let components: [Component]
    
    public func string(indentation: Int = 0) -> String {
        let indent = Array(count: indentation, repeatedValue: " ").joinWithSeparator("")
        
        // TODO: when all components are equal, convert to shorthand.
        
        if components.count == 0 {
            return "\(indent)\(name): 0;"
        } else {
            return components.map { component in
                return "\(indent)\(name)-\(component.name): \(component.string);"
                }.joinWithSeparator("\n")
        }
    }
    
    public init(_ components: [Component]) {
        self.components = components
    }
    
    public init(_ component: Component) {
        self.init([component])
    }
    
    public init(_ value: Value) {
        self.init([ .Top(value), .Right(value), .Bottom(value), .Left(value) ])
    }
    
    public init(top: Value? = nil, right: Value? = nil, bottom: Value? = nil, left: Value? = nil) {
        var components = [Component]()
        
        if let top = top { components.append(.Top(top)) }
        if let right = right { components.append(.Right(right)) }
        if let bottom = bottom { components.append(.Bottom(bottom)) }
        if let left = left { components.append(.Left(left)) }
        
        self.init(components)
    }
}
