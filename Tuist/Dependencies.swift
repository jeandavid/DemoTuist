import ProjectDescription

let dependencies = Dependencies(
    swiftPackageManager: [
            .remote(url: "https://github.com/Alamofire/Alamofire.git", requirement: .upToNextMajor(from: "5.5.0")),
    ],
    platforms: [.iOS]
)

