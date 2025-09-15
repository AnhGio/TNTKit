// swift-tools-version:5.3
import PackageDescription

let version = "1.0.2"
let checksum = "710d95a0bf83a478d32173e7b223e6dadd7206644b43f7a31aeb9109f7582608"
let url = "https://github.com/AnhGio/TNTKit/releases/download/\(version)/TNTKit.xcframework.zip"

let package = Package(
    name: "TNTKit",
    platforms: [.iOS(.v12)],
    products: [
        // Product không đổi, người dùng vẫn sẽ import "TNTKit"
        .library(
            name: "TNTKit",
            targets: ["TNTKit"]), // 3. Trỏ product vào target chứa code Swift
    ],
    targets: [
        // 1. Đây là target mới chứa code Swift của bạn
        .target(
            name: "TNTKit",
            dependencies: ["_TNTKit"] // Phụ thuộc vào binary target bên dưới
            // Swift Package Manager sẽ tự động tìm các file .swift trong Sources/TNTKit/
        ),
        
        // 2. Đổi tên binary target để tránh xung đột
        .binaryTarget(
            name: "_TNTKit", // Thêm dấu gạch dưới hoặc một hậu tố để phân biệt
            url: url,
            checksum: checksum
        )
    ]
)
