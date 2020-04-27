// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "png-remove-alpha",
    
    platforms: [
        .macOS(.v10_10)
    ],
    
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .executable(
            name: "png-remove-alpha",
            targets: ["png-remove-alpha"]),
    ],
    
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(name: "PNG", url: "https://github.com/kelvin13/png.git", from: "3.0.0"),
    ],
    
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "png-remove-alpha",
            dependencies: ["PNG"]),
        .testTarget(
            name: "png-remove-alphaTests",
            dependencies: ["png-remove-alpha"]),
    ]
)
