// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TBLsdkPackage",
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
        .target(name: "TaboolaSDKLibrary", dependencies: ["TaboolaSDK"]), //TODO: Delete later
        .binaryTarget(name: "TaboolaSDK",
                      path: "/Users/karen.s/Documents/ios-sdk/TaboolaSDK.xcframework"),
        .testTarget(
            name: "TaboolaSDKLibraryTests",
            dependencies: ["TaboolaSDKLibrary"]),
    ]
)
