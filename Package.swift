// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YF_IAP",
    platforms: [
        .iOS(.v12)
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
            url: "https://mvn.yifants.cn/artifactory/fineboost-spm/iap/2.6.3/IAPKit.xcframework.zip",
            checksum: "adcd813e2e432eee03b16d20624a4e1febd288255c58a833bc6cf9ff2b071450"
        )
    ]
)