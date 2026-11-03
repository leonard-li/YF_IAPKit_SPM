// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YF_IAP",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "YF_IAP",
            targets: ["YF_IAP_Target"]
        ),
    ],
    targets: [
        .target(
            name: "YF_IAP_Target",
            dependencies: [
                "YF_IAP_Binary"
            ]
        ),
        .binaryTarget(
            name: "YF_IAP_Binary",
            url: "https://mvn.yifants.cn/artifactory/fineboost-spm/iap/2.6.5/IAPKit.xcframework.zip",
            checksum: "af26c9d218b7a35d7fb0041c267998fca351d5f5c1d54ae57ed280ead2cc11db"
        )
    ]
)