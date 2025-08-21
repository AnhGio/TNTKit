// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "TNTKit",
    platforms: [
        .iOS(.v12.1), .macOS(.v10.13), .visionOS(.v1.3)
    ],
    products: [
        .library(
            name: "TNTKit",
            targets: ["TNTKit"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "TNTKit",
            path: "Frameworks/TNTKit.xcframework"
        )
    ]
)
