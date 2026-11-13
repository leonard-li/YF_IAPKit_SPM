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
            url: "https://mvn.yifants.cn/artifactory/fineboost-spm/iap/2.6.7/IAPKit.xcframework.zip",
            checksum: "7c602234339d7598bca02bab4e43f74f69431cb47b7f441f83a500e6b5b17f62"
        )
    ]
)