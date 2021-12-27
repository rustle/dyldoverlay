// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "dyldoverlay",
    products: [
        .library(
            name: "dyldoverlay",
            targets: ["dyldoverlay"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "dyldoverlay",
            dependencies: []),
        .testTarget(
            name: "dyldoverlayTests",
            dependencies: ["dyldoverlay"]),
    ]
)
