import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "FrameworkA",
    options: .options(
        automaticSchemesOptions: .disabled
    ),
    settings: .settings(configurations: Configuration.myConfigurations),
    targets: [
        Target(
            name: "FrameworkA",
            platform: .iOS,
            product: .framework,
            bundleId: "com.demoapp.FrameworkA",
            deploymentTarget: .iOS(targetVersion: "15.0", devices: [.iphone]),
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .external(name: "Alamofire")
            ]
        )
    ]
)
