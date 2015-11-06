# SwiftStyleSheets

Type-safe CSS.

## Example Usage

```swift
let one: Value = .Length(0.5, .Rem)
let two: Value = .Length(1, .Rem)
let three: Value = .Length(2, .Rem)
let four: Value = .Length(4, .Rem)

let bassCSSWhiteSpace = StyleSheet([
    RuleSet(.Class("mxn1"), Margin(left: one, right: one)),
    RuleSet(.Class("mxn2"), Margin(left: two, right: two)),
    RuleSet(.Class("mxn3"), Margin(left: three, right: three)),
    RuleSet(.Class("mxn4"), Margin(left: four, right: four)),

    RuleSet(.Class("mx-auto"), Margin(left: .Auto, right: .Auto)),
])
```

```css
.mxn1 {
  margin-right: 0.5rem;
  margin-left: 0.5rem;
}

.mxn2 {
  margin-right: 1rem;
  margin-left: 1rem;
}

.mxn3 {
  margin-right: 2rem;
  margin-left: 2rem;
}

.mxn4 {
  margin-right: 4rem;
  margin-left: 4rem;
}

.mx-auto {
  margin-right: auto;
  margin-left: auto;
}
```
