// swift-tools-version: 5.9
import PackageDescription

let version = "1.0.1"
let checksum = "710d95a0bf83a478d32173e7b223e6dadd7206644b43f7a31aeb9109f7582608"

let url = "https://github.com/AnhGio/TNTKit/releases/download/\(version)/TNTKit.xcframework.zip"

let package = Package(
    name: "TNTKit",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TNTKit",
            targets: ["TNTKit"]),
    ],
    targets: [
        .binaryTarget(
            name: "TNTKit",
            url: url,
            checksum: checksum
        )
    ]
)
