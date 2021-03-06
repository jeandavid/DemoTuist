import ProjectDescription
import ProjectDescriptionHelpers

let dependencies = Dependencies(
    swiftPackageManager: .init(
        [
            .remote(url: "https://github.com/Alamofire/Alamofire.git", requirement: .upToNextMajor(from: "5.5.0")),
            .remote(url: "https://github.com/ReactiveX/RxSwift.git", requirement: .upToNextMajor(from: "6.5.0")),
        ],
        baseSettings: Settings.settings(configurations: Configuration.myConfigurations)
    ),
    platforms: [.iOS]
)

