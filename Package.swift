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
            name: "TensorFlowLiteC",
            targets: ["SENTTensorFlowLiteC"]
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
            url: "https://sentiance-u1-sdk-downloads.s3.eu-west-1.amazonaws.com/ios/frameworks/SENTSDK/6.29.0-rc1/SENTSDK-spm-6.29.0-rc1.xcframework.zip",
            checksum: "e9b39d9e15557ec82010266185a151f87b2a4cf39723e76e95a5a02b6504b43b"
        ),
        .binaryTarget(
            name: "SENTTensorFlowLiteC",
            url: "https://sentiance-u1-sdk-downloads.s3.eu-west-1.amazonaws.com/ios/frameworks/SENTTensorFlowLiteC/2.20.0/SENTTensorFlowLiteC.xcframework.zip",
            checksum: "57b7fa0b424c2c7bd59b0bc051a9f80a3fe5720ef2906a0c78f4a03726d3def4"
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
