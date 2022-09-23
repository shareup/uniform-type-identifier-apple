// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "UniformTypeIdentifier",
    platforms: [
        .macOS(.v11), .iOS(.v14), .tvOS(.v14), .watchOS(.v7),
    ],
    products: [
        .library(
            name: "UniformTypeIdentifier",
            targets: ["UniformTypeIdentifier"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "UniformTypeIdentifier",
            dependencies: []),
        .testTarget(
            name: "UniformTypeIdentifierTests",
            dependencies: ["UniformTypeIdentifier"]),
    ]
)
