// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "InkLeaf",
    platforms: [
       .macOS(.v10_15)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "InkLeaf",
            targets: ["InkLeaf"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/leaf.git", from: "4.0.0"),
        .package(url: "https://github.com/johnsundell/ink.git", from: "0.6.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "InkLeaf",
            dependencies: [
                .product(name: "Leaf", package: "leaf"),
                .product(name: "Ink", package: "ink"),
            ]),
        .testTarget(
            name: "InkLeafTests",
            dependencies: [
                .target(name: "InkLeaf"),
        ]),
    ]
)
