// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "Ambiguous",
    products: [
        .library(
            name: "Ambiguous",
            targets: ["Ambiguous"]),
    ],
    dependencies: [
         .package(url: "https://github.com/DariuszGulbicki/Logging-Camp.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "Ambiguous",
            dependencies: []),
        .testTarget(
            name: "AmbiguousTests",
            dependencies: ["Ambiguous", .product(name: "LoggingCamp", package: "Logging-Camp")]),
    ]
)
