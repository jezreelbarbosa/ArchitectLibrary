// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "ArchitectLibrary",
    platforms: [.iOS(.v12)],
    products: [.library(name: "ArchitectLibrary", targets: ["ArchitectLibrary"])],
    targets: [
        .binaryTarget(name: "ArchitectLibrary", path: "Sources/Frameworks/ArchitectLibrary.xcframework"),
        .target(name: "ArchitectLibraryTarget", dependencies: ["ArchitectLibrary"],
                exclude: ["generate_xcframework.sh","README.md"])
    ]
)
