import ProjectDescription

let project = Project(
    name: "FrameworkA",
    options: .options(automaticSchemesOptions: .disabled),
    targets: [
        Target(
            name: "FrameworkA",
            platform: .iOS,
            product: .framework,
            bundleId: "com.demoapp.FrameworkA",
            deploymentTarget: .iOS(targetVersion: "15.0", devices: [.iphone]),
            infoPlist: .default,
            sources: ["Sources/**"]
        )
    ]
)
