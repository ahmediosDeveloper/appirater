// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "appirater",
    defaultLocalization: "ar",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "appirater",
            targets: ["appirater"])
    ],
    targets: [
        .target(
            name: "appirater",
            path: "Sources/appirater",
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("."),  // Ensures that headers in the main directory are found
                .headerSearchPath("include")  // Ensures that public headers in the include directory are found
            ]
        ),
        .target(name: "Test", dependencies: ["appirater"])
    ]
)
