// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SENTSDK",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "SENTSDK",
            targets: ["SENTSDK", "__SENTSDKExt", "mpde"]),
        .library(
            name: "UnzipKit",
            targets: ["UnzipKit"]),
        .library(
            name: "TensorFlowLiteC",
            targets: ["SENTTensorFlowLiteC"]),
        .library(
            name: "ProtocolBuffersObjC",
            targets: ["ProtocolBuffers"])
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
            url: "https://sentiance-u1-sdk-downloads.s3.eu-west-1.amazonaws.com/ios/frameworks/SENTSDK/6.1.0-beta1/SENTSDK-spm-6.1.0-beta1.xcframework.zip",
            checksum: "bdc05f9eb5bbc4bee390f660069a39eb2b36b66a1e3dc7ba140e28dcc1e17e7f"
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
            url: "https://sentiance-u1-sdk-downloads.s3.eu-west-1.amazonaws.com/ios/frameworks/mpde/0.3.6-SNAPSHOT/mpde.xcframework.zip",
            checksum: "d146b127dc217af6e89ed062e72deb90c287cd2aa17d921ec1d31e256c286fae"
        )
    ],
    swiftLanguageVersions: [.v5]
)

