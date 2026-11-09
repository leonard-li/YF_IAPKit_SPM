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
            url: "https://mvn.yifants.cn/artifactory/fineboost-spm/iap/2.6.6/IAPKit.xcframework.zip",
            checksum: "a01df973a1b294fb195a8965f5fad7a495bf043d2bc6e7b3516ece4de94bfd82"
        )
    ]
)