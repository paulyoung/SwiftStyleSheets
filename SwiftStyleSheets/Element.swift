/// A selector element.
public enum Element {
    case Class(String)
    case ID(String)
    case Tag(String)
    
    var string: String {
        switch self {
        case let .Class(name): return "." + name
        case let .ID(name): return "#" + name
        case let .Tag(name): return name
        }
    }
}
