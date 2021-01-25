// swift-tools-version:4.1

import PackageDescription

let package = Package(
    name: "LicensePlist",
    products: [
        .executable(name: "license-plist", targets: ["LicensePlist"]),
        .library(name: "LicensePlistCore", targets: ["LicensePlistCore"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser.git",
                 from: "0.3.1"),
        .package(url: "https://github.com/ishkawa/APIKit.git",
                 from: "5.1.0"),
        .package(url: "https://github.com/IBM-Swift/HeliumLogger.git",
                 from: "1.8.0"),
        .package(url: "https://github.com/behrang/YamlSwift.git",
                 from: "3.4.0"),
        .package(url: "https://github.com/IBM-Swift/swift-html-entities.git",
                 from: "3.0.0"),
    ],
    targets: [
        .target(
            name: "LicensePlist",
            dependencies: [
                "LicensePlistCore",
                "ArgumentParser",
                "HeliumLogger",
            ]
        ),
        .target(
            name: "LicensePlistCore",
            dependencies: [
                "APIKit",
                "HeliumLogger",
                "HTMLEntities",
                "Yaml",
            ]
        ),
        .testTarget(name: "LicensePlistTests", dependencies: ["LicensePlistCore"]),
    ]
)
