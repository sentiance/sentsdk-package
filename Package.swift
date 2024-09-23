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
            url: "https://sentiance-u1-sdk-downloads.s3.eu-west-1.amazonaws.com/ios/frameworks/SENTSDK/6.8.5/SENTSDK-spm-6.8.5.xcframework.zip",
            checksum: "89a4dfd51e2ce306f7e0d6746f8806fdec1a3b978e0b82733fc4a56f63c129b8"
        ),
        .binaryTarget(
            name: "SENTTensorFlowLiteC",
            url: "https://sentiance-u1-sdk-downloads.s3.eu-west-1.amazonaws.com/ios/frameworks/TensorFlowLiteC/2.7.0/SENTTensorFlowLiteC.xcframework.zip",
            checksum: "d0919bfed1872291087fafd394b7fe994c7b3cc379b108750e3b01200dafe53d"
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
            url: "https://sentiance-u1-sdk-downloads.s3.eu-west-1.amazonaws.com/ios/frameworks/mpde/0.3.7-SNAPSHOT/mpde.xcframework.zip",
            checksum: "9363b4ca3f20f6cf55aa7dfe4db664a9a67546df3c3ba1c1a79887d1934d5e7b"
        ),
        .binaryTarget(
            name: "dskoball",
            url: "https://sentiance-u1-sdk-downloads.s3.eu-west-1.amazonaws.com/ios/frameworks/dskoball/1.0.10/dskoball.xcframework.zip",
            checksum: "cf5441abb49d3a44e28b806e1708f3ee521a509bd8271e1b0b0956e9e3836964"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
