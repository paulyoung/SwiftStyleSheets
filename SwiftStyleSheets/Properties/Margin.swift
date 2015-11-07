/// Margin property.
public struct Margin: Property {
    public enum MarginComponent: Component {
        case Top(Value)
        case Right(Value)
        case Bottom(Value)
        case Left(Value)

        public var name: String {
            switch self {
            case Top: return "top"
            case Right: return "right"
            case Bottom: return "bottom"
            case Left: return "left"
            }
        }

        public var description: String {
            switch self {
            case let Top(value): return value.description
            case let Right(value): return value.description
            case let Bottom(value): return value.description
            case let Left(value): return value.description
            }
        }
    }
    
    public let name = "margin"
    public let components: [Component]
    
    public init(top: Value? = nil, right: Value? = nil, bottom: Value? = nil, left: Value? = nil) {
        self.components = [
            top.map(MarginComponent.Top),
            right.map(MarginComponent.Right),
            bottom.map(MarginComponent.Bottom),
            left.map(MarginComponent.Left),
        ]
        .reduce([]) { accumulator, value in
            guard let component = value else { return accumulator }
            return accumulator + [ component ]
        }
    }
    
    public init(_ value: Value = .Length(0, .Rem)) {
        self.init(top: value, right: value, bottom: value, left: value)
    }
}
