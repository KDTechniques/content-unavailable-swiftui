// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "content-unavailable-swiftui",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "ContentUnavailableSwiftUI",
            targets: ["ContentUnavailableSwiftUI"]),
    ],
    targets: [
        .target(
            name: "ContentUnavailableSwiftUI",
            path: "Sources/Content Unavailable"
        ),
    ]
)
