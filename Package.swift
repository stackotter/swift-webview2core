// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "swift-webview2core",
    products: [
        .library(name: "WebView2Core", type: .dynamic, targets: ["WebView2Core"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/thebrowsercompany/swift-cwinrt",
            revision: "eb46cdb66f770a1e006f9fcfebbf9e99a0fba811"
        ),
        .package(
            url: "https://github.com/stackotter/swift-uwp",
            revision: "8128f6615b7c5b46ada289ab6d49d871ca1e13a5"
        ),
        .package(
            url: "https://github.com/stackotter/swift-windowsfoundation",
            revision: "4ad57d20553514bcb23724bdae9121569b19f172"
        ),
    ],
    targets: [
        .target(
            name: "WebView2Core",
            dependencies: [
                .product(name: "CWinRT", package: "swift-cwinrt"),
                .product(name: "UWP", package: "swift-uwp"),
                .product(name: "WindowsFoundation", package: "swift-windowsfoundation"),
            ]
        )
    ]
)
