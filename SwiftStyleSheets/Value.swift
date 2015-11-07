/// A property value.
public enum Value {
    case Auto
    case Inherit
    case Length(Float, SwiftStyleSheets.Length)
}

extension Value: CustomStringConvertible {
    public var description: String {
        switch self {
        case Auto: return "auto"
        case Inherit: return "inherit"
        case let Length(value, unit):
            let valueString: String
            let unitString: String
            
            let valueInt = Int(value)
            
            if value - Float(valueInt) == 0 {
                valueString = "\(valueInt)"
            } else {
                valueString = "\(value)"
            }
            
            if valueString == "0" {
                unitString = ""
            } else {
                unitString = unit.rawValue
            }
            
            return valueString + unitString
        }
    }
}
