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
            url: "https://sentiance-u1-sdk-downloads.s3.eu-west-1.amazonaws.com/ios/frameworks/SENTSDK/6.6.3/SENTSDK-spm-6.6.3.xcframework.zip",
            checksum: "6bdce1261f5cd2b7e12ecb9dda4528a3f84657ba3af51e32e2d62a8a6381c21b"
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
            name: "Protobuf",
            url: "https://sentiance-u1-sdk-downloads.s3.eu-west-1.amazonaws.com/ios/frameworks/Protobuf/3.18.2/Protobuf.xcframework.zip",
            checksum: "d67fa67529f1c502ff96f15ff22d79ed654c58f090ff1d36b7eaebac385ffeba"
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
