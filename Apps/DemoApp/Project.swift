import ProjectDescription

let infoPlist: [String: InfoPlist.Value] = [
    "CFBundleShortVersionString": "1.0",
    "CFBundleVersion": "1",
    "UIMainStoryboardFile": "",
    "UILaunchStoryboardName": "LaunchScreen"
]

let project = Project(
    name: "DemoApp",
    organizationName: "some.org",
    targets: [
        Target(
            name: "DemoApp",
            platform: .iOS,
            product: .app,
            bundleId: "com.demoapp",
            deploymentTarget: .iOS(targetVersion: "15.0", devices: [.iphone]),
            infoPlist: .extendingDefault(with: infoPlist),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "FrameworkA", path: .relativeToRoot("Modules/FrameworkA")),
                .project(target: "FrameworkB", path: .relativeToRoot("Modules/FrameworkB"))
            ]
        )
    ]
)
