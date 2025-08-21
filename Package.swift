// swift-tools-version:6.1
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
            url: "https://github.com/AnhGio/TNTKit/releases/download/1.0.0/TNTKit.xcframework.zip",
            checksum: "62024e20deae774cbbd853311a87fe9ebe4793b7b41d63a4ca8fd7ad44dd1db6"
        )
    ]
)
