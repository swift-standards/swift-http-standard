# HTTP Standard

![Development Status](https://img.shields.io/badge/status-active--development-blue.svg)

A convenience namespace for HTTP in Swift — composes the RFC 9110 semantics, RFC 9111 caching, and RFC 9112 message-syntax definitions into a single `HTTP` surface, so consumers reach the whole HTTP core through one import.

## Installation

Add to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/swift-standards/swift-http-standard.git", branch: "main")
]
```

Add the product to your target:

```swift
.target(
    name: "App",
    dependencies: [
        .product(name: "HTTP Standard", package: "swift-http-standard")
    ]
)
```

## License

Apache 2.0. See [LICENSE.md](LICENSE.md).
