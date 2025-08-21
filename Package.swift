// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TNTKit", // 1. Tên package của bạn
    platforms: [
        .iOS(.v13) // 2. Nền tảng và phiên bản tối thiểu bạn hỗ trợ
    ],
    products: [
        .library(
            name: "TNTKit", // Tên thư viện khi người dùng import
            targets: ["TNTKit"])
    ],
    targets: [
        .binaryTarget(
            name: "TNTKit", // Tên target, thường giống tên thư viện
            url: "URL_CUA_FILE_ZIP", // 3. URL đến file .zip - SẼ CẬP NHẬT Ở BƯỚC 5
            checksum: "62024e20deae774cbbd853311a87fe9ebe4793b7b41d63a4ca8fd7ad44dd1db6" // 4. Dán checksum bạn đã tính ở Bước 2 vào đây
        )
    ]
)