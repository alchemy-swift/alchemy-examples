// swift-tools-version:5.4
import PackageDescription

let package = Package(
    name: "Shared",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "Shared", targets: ["Shared"]),
    ],
    dependencies: [
        .package(url: "https://github.com/alchemy-swift/papyrus", .upToNextMajor(from: "0.1.0"))
    ],
    targets: [
        .target(
            name: "Shared",
            dependencies: [
                .product(name: "Papyrus", package: "papyrus"),
            ]
        ),
    ]
)
