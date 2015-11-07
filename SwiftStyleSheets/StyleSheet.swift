/// A style sheet.
public struct StyleSheet {
    let ruleSets: [RuleSet]
    
    public init(ruleSets: () -> [RuleSet]) {
        self.ruleSets = ruleSets()
    }
    
    public init(ruleSet: () -> RuleSet) {
        self.init {[
            ruleSet()
        ]}
    }
}

extension StyleSheet: CustomStringConvertible {
    public var description: String {
        return ruleSets.map({ $0.description }).joinWithSeparator("\n") + "\n"
    }
}
