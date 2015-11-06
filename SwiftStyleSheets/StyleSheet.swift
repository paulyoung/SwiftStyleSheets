/// A style sheet.
public struct StyleSheet {
    let ruleSets: [RuleSet]
    
    public init(_ ruleSets: [RuleSet]) {
        self.ruleSets = ruleSets
    }
    
    public init(_ ruleSet: RuleSet) {
        self.init([ruleSet])
    }
    
    public var string: String {
        return ruleSets.map({ $0.string() }).joinWithSeparator("\n\n") + "\n"
    }
}
