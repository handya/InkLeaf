# InkLeaf

A simple [Leaf](https://github.com/vapor/leaf) tag for [Vapor](https://vapor.codes) that converts Markdown into HTML using [John Sundell’s Ink](https://github.com/JohnSundell/Ink).

## Installation

Add **InkLeaf** to your `Package.swift`:

```swift
.package(url: "https://github.com/handya/InkLeaf.git", from: "1.0.0")
```

Then add `"InkLeaf"` to your target dependencies.

## Usage

Register the tag in your Vapor configuration:

```swift
import InkLeaf

app.leaf.tags["markdown"] = MarkdownTag()
```

In your `.leaf` template:

```leaf
#markdown("**Hello Markdown!** _This will render as HTML._")
```

Which will render as:

```html
<p><strong>Hello Markdown!</strong> <em>This will render as HTML.</em></p>
```

## Why?

InkLeaf makes it easy to drop Markdown into your Leaf templates without extra processing logic in your routes or controllers.

## License

MIT License. See [LICENSE](LICENSE) for details.
