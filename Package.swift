// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LoMoBa",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "LoMoBa",
            targets: [
                "LoMoBa"
            ]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "LoMoBa",
            dependencies: [
                "Book",
                "Date",
                "Person",
                "Providers",
                "Shared"
            ],
            path: "Sources/LoMoBa"
        ),
        .target(name: "Shared", path: "Sources/Shared"),
        .target(name: "Providers", path: "Sources/Providers"),
        .target(
            name: "Book",
            dependencies: ["Shared"],
            path: "Sources/Modules/Book"
        ),
        .target(
            name: "Date",
            dependencies: ["Shared"],
            path: "Sources/Modules/Date"
        ),
        .target(
            name: "Person",
            dependencies: ["Shared"],
            path: "Sources/Modules/Person"
        ),
        .testTarget(
            name: "LoMoBa-SwiftTests",
            dependencies: ["LoMoBa"]
        ),
    ]
)
