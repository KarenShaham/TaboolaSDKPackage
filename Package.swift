// swift-tools-version:5.4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TaboolaSDKLibrary",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TaboolaSDKLibrary",
            targets: ["TaboolaSDKLibraryTests"]),
    ],
    dependencies: [],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(name: "TaboolaSDKLibrary"), //TODO: Delete later
        .binaryTarget(name: "TaboolaSDK",
                      url: "https://github.com/KarenShaham/TBLXCFramework/TaboolaSDK.xcframework.zip",
                      checksum: "87a07825ad4b93f77c7bb5c4db1b95a64417f4095da50699643c969693e3b8e2"
                      ),
        .testTarget(
            name: "TaboolaSDKLibraryTests",
            dependencies: ["TaboolaSDKLibrary"]),
    ]
)
