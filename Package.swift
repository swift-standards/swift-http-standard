// swift-tools-version: 6.3.3

import PackageDescription

let package = Package(
    name: "swift-http-standard",
    platforms: [
        .macOS(.v26),
        .iOS(.v26),
        .tvOS(.v26),
        .watchOS(.v26)
    ],
    products: [
        .library(name: "HTTP Standard", targets: ["HTTP Standard"])
    ],
    dependencies: [
        .package(url: "https://github.com/swift-ietf/swift-rfc-9110.git", branch: "main"),
        .package(url: "https://github.com/swift-ietf/swift-rfc-9111.git", branch: "main"),
        .package(url: "https://github.com/swift-ietf/swift-rfc-9112.git", branch: "main")
    ],
    targets: [
        .target(
            name: "HTTP Standard",
            dependencies: [
                .product(name: "RFC 9110", package: "swift-rfc-9110"),
                .product(name: "RFC 9111", package: "swift-rfc-9111"),
                .product(name: "RFC 9112", package: "swift-rfc-9112")
            ]
        ),
        .testTarget(
            name: "HTTP Standard Tests",
            dependencies: [
                "HTTP Standard",
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)

for target in package.targets where ![.system, .binary, .plugin, .macro].contains(target.type) {
    let ecosystem: [SwiftSetting] = [
        .strictMemorySafety(),
        .enableUpcomingFeature("ExistentialAny"),
        .enableUpcomingFeature("InternalImportsByDefault"),
        .enableUpcomingFeature("MemberImportVisibility"),
        .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
        .enableExperimentalFeature("LifetimeDependence"),
        .enableExperimentalFeature("Lifetimes"),
        .enableExperimentalFeature("SuppressedAssociatedTypes"),
        .enableUpcomingFeature("InferIsolatedConformances"),
        .enableUpcomingFeature("LifetimeDependence"),
    ]

    let package: [SwiftSetting] = []

    target.swiftSettings = (target.swiftSettings ?? []) + ecosystem + package
}
