// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Backend",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "Backend", targets: ["Backend"]),
    ],
    dependencies: [
        .package(url: "https://github.com/alchemy-swift/alchemy", .upToNextMinor(from: "0.1.0")),
        .package(path: "Shared"),
    ],
    targets: [
        .target(
            name: "Backend",
            dependencies: [
                .product(name: "Alchemy", package: "alchemy"),
                .product(name: "Shared", package: "Shared"),
            ]),
    ]
)
