// swift-tools-version:4.0
//
//  Package.swift
//  SipHash
//
//  Created by Károly Lőrentey on 2016-11-14.
//  Copyright © 2016-2017 Károly Lőrentey.
//

import PackageDescription

let package = Package(
    name: "SipHash",
    products: [
        .library(name: "SipHash", type: .dynamic, targets: ["SipHash"])
    ],
    dependencies: [
        .package(url: "https://github.com/dudash/swift-package-clibbsd.git", from: "1.0.0"),
    ],
    targets: [
        .target(name: "SipHash", dependencies: [], path: "SipHash"),
        .testTarget(name: "SipHashTests", dependencies: ["SipHash"], path: "SipHashTests")
    ],
    swiftLanguageVersions: [4]
)
