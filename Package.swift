// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "swift-webview2core",
    products: [
        .library(name: "WebView2Core", type: .dynamic, targets: ["WebView2Core"]),
    ],
    dependencies: [
        .package(url: "https://github.com/thebrowsercompany/swift-cwinrt", branch: "main"),
        .package(
            url: "https://github.com/stackotter/swift-uwp",
            branch: "c9d3fc079aaaa5113cde9a0132278fb83e808599"
        ),
        .package(
            url: "https://github.com/thebrowsercompany/swift-windowsfoundation",
            branch: "main"
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
