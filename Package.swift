// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Hodler",
    platforms: [
        .iOS(.v13), .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "Hodler",
            targets: ["Hodler"]),
    ],
    dependencies: [
        .package(url: "https://github.com/metalurgical/BitcoinCore.Swift", branch: "upgrade_secp256k1_0_12_2"),
        .package(url: "https://github.com/metalurgical/HsCryptoKit.Swift", branch: "upgrade_secp256k1_0_12_2"),
    ],
    targets: [
        .target(
            name: "Hodler",
            dependencies: [
                .product(name: "BitcoinCore", package: "BitcoinCore.Swift"),
                .product(name: "HsCryptoKit", package: "HsCryptoKit.Swift"),
            ]
        ),
    ]
)
