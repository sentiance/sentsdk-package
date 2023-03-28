// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SENTSDK",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "SENTSDK",
            targets: ["SENTSDK", "__SENTSDKExt", "mpde", "dskoball"]
        ),
        .library(
            name: "UnzipKit",
            targets: ["UnzipKit"]
        ),
        .library(
            name: "TensorFlowLiteC",
            targets: ["SENTTensorFlowLiteC"]
        ),
        .library(
            name: "ProtocolBuffersObjC",
            targets: ["ProtocolBuffers"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "__SENTSDKExt",
            dependencies: [],
            resources: [.copy("Resources/SENTSDK.bundle")]
        ),
        .binaryTarget(
            name: "SENTSDK",
            url: "https://sentiance-u1-sdk-downloads.s3.eu-west-1.amazonaws.com/ios/frameworks/SENTSDK/6.3.0-rc2/SENTSDK-spm-6.3.0-rc2.xcframework.zip",
            checksum: "17b4e6a7d685a8ff634d65c45c3d20400324e3f9bd5f1f2b82f7e2e9d75c5650"
        ),
        .binaryTarget(
            name: "SENTTensorFlowLiteC",
            url: "https://sentiance-u1-sdk-downloads.s3.eu-west-1.amazonaws.com/ios/frameworks/TensorFlowLiteC/2.7.0/SENTTensorFlowLiteC.xcframework.zip",
            checksum: "d0919bfed1872291087fafd394b7fe994c7b3cc379b108750e3b01200dafe53d"
        ),
        .binaryTarget(
            name: "UnzipKit",
            url: "https://sentiance-u1-sdk-downloads.s3.eu-west-1.amazonaws.com/ios/frameworks/UnzipKit/1.9/UnzipKit.xcframework.zip",
            checksum: "7f25e1c509552611089599bab6d31fd9965ad9cf6054bc57512ea3ac19dd6c50"
        ),
        .binaryTarget(
            name: "ProtocolBuffers",
            url: "https://sentiance-u1-sdk-downloads.s3.eu-west-1.amazonaws.com/ios/frameworks/ProtocolBuffers/3.18.2/ProtocolBuffers.xcframework.zip",
            checksum: "2faf9c5aecc9ae62ec3fc66aef964c30af548828893f0f46e168dc8850676de6"
        ),
        .binaryTarget(
            name: "mpde",
            url: "https://sentiance-u1-sdk-downloads.s3.eu-west-1.amazonaws.com/ios/frameworks/mpde/0.3.7-SNAPSHOT/mpde.xcframework.zip",
            checksum: "9363b4ca3f20f6cf55aa7dfe4db664a9a67546df3c3ba1c1a79887d1934d5e7b"
        ),
        .binaryTarget(
            name: "dskoball",
            url: "https://sentiance-u1-sdk-downloads.s3.eu-west-1.amazonaws.com/ios/frameworks/dskoball/1.0.7/dskoball.xcframework.zip",
            checksum: "89186cfab9271d749cc05eec2a8bb78fd0d204728b8b83380b81f4788dda2b17"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
