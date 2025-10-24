// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SENTSDK",
    platforms: [.iOS(.v13)],
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
            targets: ["TensorFlowLiteC"]
        ),
        .library(
            name: "ProtocolBuffersObjC",
            targets: ["Protobuf", "__ProtobufExt"]
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
            url: "https://sentiance-u1-sdk-downloads.s3.eu-west-1.amazonaws.com/ios/frameworks/SENTSDK/6.19.0-rc1/SENTSDK-spm-6.19.0-rc1.xcframework.zip",
            checksum: "e98b38d3478133d3b37b384f7f9652b97af824d76336c22b01679af7a371878a"
        ),
        .binaryTarget(
            name: "TensorFlowLiteC",
            url: "https://sentiance-u1-sdk-downloads.s3.eu-west-1.amazonaws.com/ios/frameworks/TensorFlowLiteC/2.17.0/TensorFlowLiteC.xcframework.zip",
            checksum: "4892d28d5e5452fdf82f9b18d53aafc67e0c0a122ffe8985a1f76a8192c301af"
        ),
        .binaryTarget(
            name: "UnzipKit",
            url: "https://sentiance-u1-sdk-downloads.s3.eu-west-1.amazonaws.com/ios/frameworks/UnzipKit/1.9-6f14620/UnzipKit.xcframework.zip",
            checksum: "aedac8e0275c948db0c566929b9e7d333f1c7f6e5cfbc84195026a5b9a230b99"
        ),
        .binaryTarget(
            name: "Protobuf",
            url: "https://sentiance-u1-sdk-downloads.s3.eu-west-1.amazonaws.com/ios/frameworks/Protobuf/3.18.3-6f14620/Protobuf.xcframework.zip",
            checksum: "7bb3c5ee51514f0e0a7447dd46259b1d4e25475c1fabf3c2803b7fc2caf0afd0"
        ),
        .target(
            name: "__ProtobufExt",
            dependencies: [],
            resources: [.copy("Resources/Protobuf_Privacy.bundle")]
        ),
        .binaryTarget(
            name: "mpde",
            url: "https://sentiance-u1-sdk-downloads.s3.eu-west-1.amazonaws.com/ios/frameworks/mpde/0.9.1.i/mpde.xcframework.zip",
            checksum: "5de34b6ad37249d091ca2c94ff9243a2957093ee343b1cc3f1ecfc5190e0e187"
        ),
        .binaryTarget(
            name: "dskoball",
            url: "https://sentiance-u1-sdk-downloads.s3.eu-west-1.amazonaws.com/ios/frameworks/dskoball/1.1.4/dskoball.xcframework.zip",
            checksum: "6dce768916a9b592a2bcd8e05cc8f56e98cad92423737b19ba8670d180338eae"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
