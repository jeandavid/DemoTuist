import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "FrameworkB",
    options: .options(
        automaticSchemesOptions: .disabled
    ),
    settings: .settings(configurations: Configuration.myConfigurations),
    targets: [
        Target(
            name: "FrameworkB",
            platform: .iOS,
            product: .framework,
            bundleId: "com.demoapp.FrameworkB",
            deploymentTarget: .iOS(targetVersion: "15.0", devices: [.iphone]),
            infoPlist: .default,
            sources: ["Sources/**"]
        )
    ]
)
