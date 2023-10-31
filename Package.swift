// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EComIDIntegrationsPublic",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "EComIDIntegrationsOverlay",
            targets: ["EComIDIntegrationsOverlay"]),
        .library(
            name: "EComIDIntegrationsWidgets",
            targets: ["EComIDIntegrationsWidgets"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "EComIDIntegrationsOverlay",
            path: "./Sources/EComIDIntegrationsOverlay.xcframework"
        ),
        .binaryTarget(
            name: "EComIDIntegrationsWidgets",
            path: "./Sources/EComIDIntegrationsWidgets.xcframework"
        )
    ]
)
