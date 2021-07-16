// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Lottie",
    platforms: [.iOS(.v9), .macOS("10.10")],
    products: [
        .library(name: "Lottie macOS", targets: ["Lottie macOS"]),
        .library(name: "Lottie iOS", targets: ["Lottie iOS"])
    ],
    targets: [
        .target(
            name: "Lottie macOS",
            dependencies: [.product(name: "Lottie macOS", package: "Lottie", condition: .when(platforms: [.macOS]))],
            path: "lottie-swift/src",
            exclude: ["Public/iOS"]
        ),
        .target(
            name: "Lottie iOS",
            dependencies: [.product(name: "Lottie iOS", package: "Lottie", condition: .when(platforms: [.iOS]))],
            path: "lottie-swift/src",
            exclude: ["Public/MacOS"]
        )
    ]
)
