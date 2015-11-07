/// A property.
public protocol Property: CustomStringConvertible {
    var name: String { get }
    var components: [Component] { get }
}

extension Property {
    public var description: String {
        return components.map { component in
            return "\(name)-\(component.name): \(component.description);"
        }.joinWithSeparator(" ")
    }
}