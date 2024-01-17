// swift-tools-version: 5.8

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "100DaysSwift",
    platforms: [
        .iOS("16.0")
    ],
    products: [
        .iOSApplication(
            name: "100DaysSwift",
            targets: ["AppModule"],
            bundleIdentifier: "rodrigo.-00DaysSwift",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .binoculars),
            accentColor: .presetColor(.purple),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ]
)