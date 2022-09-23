# UniformTypeIdentifier

`UniformTypeIdentifier` is a Swift wrapper around Apple's [UTType API](https://developer.apple.com/documentation/mobilecoreservices/uttype). The library defines a number of well-known UTIs and allows the consumer to create additional UTIs by providing file extensions or MIME types.

## Installation

To use `UniformTypeIdentifier` with the Swift Package Manager, add a dependency to your Package.swift file:

```swift
let package = Package(
  dependencies: [
    .package(url: "https://github.com/shareup/uniform-type-identifier-apple.git", .upToNextMajor(from: "5.1.0"))
  ]
)
```

## License

The license for `UniformTypeIdentifier` is the standard MIT licence. You can find it in the `LICENSE` file.

