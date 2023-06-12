// swift-tools-version:5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxBluetoothKit",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v10_13), .iOS(.v11), .tvOS(.v11), .watchOS(.v4),
    ],
    products: [
        .library(name: "RxBluetoothKit", targets: ["RxBluetoothKit"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "RxSwift",
            url: "https://github.com/ReactiveX/RxSwift/releases/download/6.6.0/RxSwift.xcframework.zip",
            checksum: "dd5f2f2e11a1b292d083dcbb276df5db105ff2ee4e29303f6c566796908be8b9"

        ),
        .target(
            name: "RxBluetoothKit",
            dependencies: [
                "RxSwift",
            ],
            path: ".",
            exclude: [
                "Tests",
                "Source/Info.plist",
                "Source/RxBluetoothKit.h",
            ],
            sources: [
                "Source",
            ]
        ),
    ]
)
