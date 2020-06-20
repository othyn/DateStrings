// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "DateStrings",
    platforms: [
        .iOS(.v11),
        .tvOS(.v11),
        .watchOS(.v6),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "DateStrings",
            targets: ["DateStrings"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "DateStrings",
            dependencies: []),
        .testTarget(
            name: "DateStringsTests",
            dependencies: ["DateStrings"]),
    ]
)
