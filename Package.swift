// swift-tools-version:5.4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TaboolaSDKLibrary",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TaboolaSDKLibrary",
            targets: ["TaboolaSDK"]),
    ],
    dependencies: [],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(name: "TaboolaSDKLibrary"), //TODO: Delete later
        .binaryTarget(name: "TaboolaSDK",
                      url: "https://github.com/KarenShaham/TBLXCFramework/TaboolaSDK.xcframework.zip",
                      checksum: "885015ec3a41494d17fae325dc37084074a86b8ad1c88f8e3cca9a19c701b86f"
                      ),
        .testTarget(
            name: "TaboolaSDKLibraryTests",
            dependencies: ["TaboolaSDKLibrary"]),
    ]
)
