// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 AppLovin. All rights reserved.

import PackageDescription

let package = Package(
    name: "AppLovinMediationBidMachineAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AppLovinMediationBidMachineAdapter",
            targets: ["AppLovinMediationBidMachineAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", from: "13.0.0"),
        .package(url: "https://github.com/bidmachine/BidMachine-SPM.git", exact: "3.8.0")
    ],
    targets: [
        .target(
            name: "AppLovinMediationBidMachineAdapterTarget",
            dependencies: [
                .target(name: "AppLovinMediationBidMachineAdapter"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "BidMachine", package: "BidMachine-SPM"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AppLovinMediationBidMachineAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/bidmachine-adapter/AppLovinMediationBidMachineAdapter-3.8.0.0.1.zip",
            checksum: "2dbc52cb24d800084cc67e5a898b8d4684efe5f6f4dc60f895d1acc0b4d69812"
        )
    ]
)
