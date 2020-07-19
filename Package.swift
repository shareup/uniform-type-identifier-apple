// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "UniformTypeIdentifier",
    platforms: [
        .macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v5),
    ],
    products: [
        .library(
            name: "UniformTypeIdentifier",
            targets: ["UniformTypeIdentifier"]),
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
