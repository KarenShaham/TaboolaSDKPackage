// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TaboolaSDKPackage",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TaboolaSDKPackage",
            targets: ["TaboolaSDKPackage", "ModuleX-ObjC", "ModuleX", "TaboolaSDK"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ModuleX-ObjC",
            dependencies: [],
            exclude: [],
            cSettings: [
                  .headerSearchPath("TaboolaSDKFramework"),
               ]),
        .target(
            name: "ModuleX",
            dependencies: ["ModuleX-ObjC"],
            path: "TaboolaSDKPackage"),
        .binaryTarget(
            name: "TaboolaSDK",
            path: "TaboolaSDK.xcframework"
            ),
        .testTarget(
            name: "TaboolaSDKPackageTests",
            dependencies: ["TaboolaSDKPackage"]),
    ]
)
