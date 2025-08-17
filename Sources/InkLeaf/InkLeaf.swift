//
//  InkLeafTests.swift
//  SwiftyTube
//
//  Created by Andrew Farquharson on 19/05/2025.
//

import Foundation
import Leaf
import Ink

public struct Markdown: UnsafeUnescapedLeafTag {
    public enum Error: Swift.Error {
        case invalidArgument(LeafData?)
    }

    private let modifiers: [Modifier]

    public init(modifiers: [Modifier] = []) {
        self.modifiers = modifiers
    }

    public func render(_ ctx: LeafContext) throws -> LeafData {
        var markdown = ""

        if let markdownArgument = ctx.parameters.first, !markdownArgument.isNil {
            guard let markdownArgumentValue = markdownArgument.string else {
                throw Error.invalidArgument(ctx.parameters.first)
            }
            markdown = markdownArgumentValue
        }

        let parser: MarkdownParser = .init(modifiers: modifiers)

        let result = parser.parse(markdown)

        return .string(result.html)
    }
}
